<?php
namespace App\Model;


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
