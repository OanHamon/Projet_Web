<?php
namespace App\Model;

use PDO;

class WishlistModel extends BaseModel
{
    protected $table = "Wishlist";

    function deleteEntry($data){
        $query = "DELETE FROM {$this->table} WHERE id_etudiant = :id_etudiant AND id_offre = :id_offre";
        $stmt = $this->executeQuery($query, $data);
        return $stmt->rowCount();

    }

}
