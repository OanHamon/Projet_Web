<?php
namespace App\Models;


require_once 'database.php';

abstract class Model
{
    protected $conn;

    public function __construct()
    {
        $database = new Database();
        $this->conn = $database->connect();
    }
}

class BaseModel extends Model
{
    protected $table;
    protected $primaryKey = 'id';

    protected function executeQuery($query, $params = [])
    {
        $stmt = $this->conn->prepare($query);
        $stmt->execute($params);
        return $stmt;
    }

    public function getAll()
    {
        $query = "SELECT * FROM {$this->table}";
        $stmt = $this->executeQuery($query);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getById($id)
    {
        $query = "SELECT * FROM {$this->table} WHERE {$this->primaryKey} = :id";
        $stmt = $this->executeQuery($query, ['id' => $id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function deleteById($id)
    {
        $query = "DELETE FROM {$this->table} WHERE {$this->primaryKey} = :id";
        $stmt = $this->executeQuery($query, ['id' => $id]);
        return $stmt->rowCount();
    }

    public function insert($data)
    {
        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));

        $query = "INSERT INTO {$this->table} ($columns) VALUES ($placeholders)";

        $this->executeQuery($query, $data);

        return $this->conn->lastInsertId();
    }

    public function update($id, $data)
    {
        $setClause = implode(", ", array_map(function ($key) {
            return "$key = :$key";
        }, array_keys($data)));

        $query = "UPDATE {$this->table}
                  SET $setClause
                  WHERE {$this->primaryKey} = :id";

        $data['id'] = $id;

        $stmt = $this->executeQuery($query, $data);

        return $stmt->rowCount();
    }

    public function find($conditions = [])
    {
        $query = "SELECT * FROM {$this->table}";
        $params = [];

        if (!empty($conditions)) {

            $where = [];

            foreach ($conditions as $key => $value) {
                $where[] = "$key = :$key";
                $params[$key] = $value;
            }

            $query .= " WHERE " . implode(" AND ", $where);
        }

        $stmt = $this->executeQuery($query, $params);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}




class OffreModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function getEntreprise($idOffre)
    {
        $query = "
        SELECT e.*
        FROM Entreprise e
        JOIN Proposer p ON p.id_entreprise = e.id_entreprise
        WHERE p.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getCompetences($idOffre)
    {
        $query = "
        SELECT c.*
        FROM Competence c
        JOIN Requerir r ON r.id_competence = c.id_competence
        WHERE r.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCandidats($idOffre)
    {
        $query = "
        SELECT u.*
        FROM Utilisateur u
        JOIN Postule p ON p.id_utilisateur = u.id_utilisateur
        WHERE p.id_offre = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $idOffre]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}



class UserModel extends BaseModel
{
    protected $table = "Utilisateur";
    protected $primaryKey = "id_utilisateur";

    public function getWishlist($userId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Wishlist w ON w.id_offre = o.id_offre
        WHERE w.id_utilisateur = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $userId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPostulations($userId)
    {
        $query = "
        SELECT o.*, p.cv, p.LM
        FROM Offre o
        JOIN Postule p ON p.id_offre = o.id_offre
        WHERE p.id_utilisateur = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $userId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}




class EntrepriseModel extends BaseModel
{
    protected $table = "Entreprise";
    protected $primaryKey = "id_entreprise";

    public function getOffres($entrepriseId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Proposer p ON p.id_offre = o.id_offre
        WHERE p.id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEvaluation($entrepriseId)
    {
        $query = "
        SELECT AVG(note) as moyenne
        FROM Evaluation
        WHERE id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}



class CompetenceModel extends BaseModel
{
    protected $table = "Competence";
    protected $primaryKey = "id_competence";

    public function getOffres($competenceId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Requerir r ON r.id_offre = o.id_offre
        WHERE r.id_competence = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $competenceId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

?>