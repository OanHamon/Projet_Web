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
}
