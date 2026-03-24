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
    public function getAll()
    {
        $query = "
            SELECT id_ville, nom, lat, lng
            FROM Ville
            ORDER BY nom ASC
        ";

        $stmt = $this->executeQuery($query, []);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

