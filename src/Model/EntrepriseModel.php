<?php
namespace App\Model;
use PDO;
use PDOException;


class EntrepriseModel extends BaseModel
{
    protected $table = "Entreprise";
    protected $primaryKey = "id_entreprise";

    public function getOffres($entrepriseId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        WHERE o.id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEvaluation($entrepriseId)
    {
        $query = "
        SELECT AVG(note) as moyenne
        FROM Evaluation_entreprise
        WHERE id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getCompetences($entrepriseId)
    {
        $query = "
        SELECT DISTINCT c.*
        FROM Competence c
        JOIN Competence_Offre r ON r.id_competence = c.id_competence
        JOIN Offre o ON o.id_offre = r.id_offre
        WHERE o.id_entreprise = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function create_entreprise($nom, $email, $mdp){
        $query = "INSERT INTO Entreprise (nom, email, mdp) VALUES (:nom, :email, :mdp)";
        $this->executeQuery($query, [
            'nom' => $nom,
            'email' => $email,
            'mdp' => $mdp
        ]);

        return $this->conn->lastInsertId();
    }

    public function entreprise_exist_email($email)
    {
        $query = "
            SELECT id_entreprise
            FROM Entreprise
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        return $result ? true : false;
    }

    public function get_company_id($email){
        $query = "
            SELECT id_entreprise
            FROM Entreprise
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        return $result ? $result['id_entreprise'] : null;
    }

    public function hashed_password_entreprise_email($email) 
    {
        $query = "
            SELECT mdp
            FROM Entreprise
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        return $result ? $result['mdp'] : null;
    }
}
