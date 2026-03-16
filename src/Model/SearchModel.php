<?php
namespace App\Model;
use PDO;
use PDOException;


class SearchModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function getOffreAround($dist, $lat, $lng)
    {
        $query = " 
        SELECT 
        *,
        (6371 * acos(
            cos(radians(:lat)) * cos(radians(lat)) * cos(radians(lng) - radians(:lng)) + 
            sin(radians(:lat)) * sin(radians(lat))
        )) AS distance
        FROM Offre
        HAVING distance < :dist
        ORDER BY distance;
        ;";

        $stmt = $this->executeQuery($query, ['dist' => $dist, 'lat' => $lat, 'lng' => $lng]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
