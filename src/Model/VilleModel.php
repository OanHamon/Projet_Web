<?php

namespace App\Model;

use PDO;

class VilleModel extends BaseModel
{
    protected $table = "Ville";
    protected $primaryKey = "id_ville";

    /**
     * Récupère toutes les villes avec leurs coordonnées.
     *
     * @return array<int, array{ id_ville:int, nom:string, lat:string, lng:string }>
     */
    
    public function getAll($limit = null) {
    $sql = "SELECT * FROM ville";
    
    // Si une limite est fournie, on l'ajoute à la requête SQL
    if ($limit !== null) {
        $sql .= " LIMIT " . (int)$limit;
    }

    // On prépare et on exécute via la connexion PDO (souvent dans $this->db ou $this->pdo)
    $stmt = $this->db->prepare($sql);
    $stmt->execute();

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
}

