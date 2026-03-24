<?php
namespace App\Model;

use PDO;


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
        WHERE w.id_etudiant = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $userId]);

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getPostulations($userId)
    {
        $query = "
        SELECT o.*, p.cv_url, p.lm_url
        FROM Offre o
        JOIN Postule p ON p.id_offre = o.id_offre
        WHERE p.id_etudiant = :id
        ;";

        $stmt = $this->executeQuery($query, ['id' => $userId]);

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function user_exist_email($email)
    {
        $query = "
            SELECT id_utilisateur
            FROM Utilisateur
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result ? true : false;
    }

    public function create_user($email, $password_hash, $nom, $prenom, $role) 
    {
        // Insert the user
        $query = "
        INSERT INTO Utilisateur (nom, prenom, email, mdp) VALUES
        (:nom,:prenom,:email,:mdp)
        ;";// mdp hashé

        $this->executeQuery($query, [
            'nom' => $nom,
            'prenom' => $prenom,
            'email' => $email,
            'mdp' => $password_hash
        ]);

        // Retrieve last inserted user ID
        $id_user = $this->conn->lastInsertId();

        // Insert user into role-specific table
        if ($role === "etudiant") {
            $query = "INSERT INTO Etudiant (id_etudiant, id_pilote) VALUES (:id,NULL);";
            $this->executeQuery($query, ['id' => $id_user]);
        } elseif ($role === "pilote") {
            $query = "INSERT INTO Pilote (id_pilote) VALUES (:id);";
            $this->executeQuery($query, ['id' => $id_user]);
        } elseif ($role === "admin") {
            $query = "INSERT INTO Admin (id_admin) VALUES (:id);";
            $this->executeQuery($query, ['id' => $id_user]);
        }

        return $id_user;
    }

    public function hashed_password_user_email($email) 
    {
        $query = "
            SELECT mdp
            FROM Utilisateur
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result ? $result['mdp'] : null;
    }

    public function get_user_id($email)
    {
        $query = "
            SELECT id_utilisateur
            FROM Utilisateur
            WHERE email = :email
            LIMIT 1
        ;";

        $stmt = $this->executeQuery($query, [
            'email' => $email
        ]);

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result ? $result['id_utilisateur'] : null;
    }

    public function get_user_role($id_user){

        $queryEtudiant = "SELECT 1 FROM Etudiant WHERE id_etudiant = :id LIMIT 1;";
        $stmtEtudiant = $this->executeQuery($queryEtudiant, ['id' => $id_user]);
        $isEtudiant = $stmtEtudiant->fetch();
        $stmtEtudiant->closeCursor();
        if ($isEtudiant) {return "etudiant";}

        $queryAdmin = "SELECT 1 FROM Admin WHERE id_admin = :id LIMIT 1;";
        $stmtAdmin = $this->executeQuery($queryAdmin, ['id' => $id_user]);
        $isAdmin = $stmtAdmin->fetch();
        $stmtAdmin->closeCursor();
        if ($isAdmin) {return "admin";}

        $queryPilote = "SELECT 1 FROM Pilote WHERE id_pilote = :id LIMIT 1;";
        $stmtPilote = $this->executeQuery($queryPilote, ['id' => $id_user]);
        $isPilote = $stmtPilote->fetch();
        $stmtPilote->closeCursor();
        if ($isPilote) {return "pilote";}

        return null;
    }

    function getCandidature($id_etudiant, $id_offre){

        $query = "
        SELECT * 
            FROM Postule
            WHERE id_etudiant = :id_etudiant
            AND id_offre = :id_offre;
        ";
        $stmt = $this->executeQuery($query, [
            'id_etudiant' => $id_etudiant,
            'id_offre' => $id_offre
        ]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }

    function getEtudiant_pilote($id_pilote){
        $query="
        select * from Utilisateur join Etudiant on Utilisateur.id_utilisateur = Etudiant.id_etudiant WHERE Etudiant.id_pilote = :id_pilote ;";
        $stmt =$this->executeQuery($query, [
            'id_pilote' => $id_pilote
        ]);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();
        return $result;
    }
}
