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

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
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

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
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

        return $result ? true : false;
    }

    public function create_user($email, $password_hash, $nom, $prenom) 
    {
        $query = "
        INSERT INTO Utilisateur (nom, prenom, email, mdp) VALUES
        (':nom',':prenom',':email',':mdp')
        ;";// mdp hashé

        $this->executeQuery($query, [
            'nom' => $nom,
            'prenom' => $prenom,
            'email' => $email,
            'mdp' => $password_hash
        ]);

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

        return $result ? $result['id_utilisateur'] : null;
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

        return $result ? $result['id_utilisateur'] : null;
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
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
