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

    public function searchOffre($dist, $lat, $lng, $jobs = []) {
        $jobWhereClause = '';
        $params = [
            'dist' => $dist,
            'lat' => $lat,
            'lng' => $lng
        ];
        if (!empty($jobs)) {
            $placeholders = [];
            foreach ($jobs as $i => $job) {
                $placeholders[] = ":job{$i}";
                $params["job{$i}"] = mb_strtolower($job);
            }
            $jobWhereClause = "WHERE LOWER(intitule) IN (" . implode(", ", $placeholders) . ")";
        }

        $query = " 
        SELECT 
            id_offre,
            (6371 * acos(
                cos(radians(:lat)) * cos(radians(lat)) * cos(radians(lng) - radians(:lng)) + 
                sin(radians(:lat)) * sin(radians(lat))
            )) AS distance
        FROM Offre
        {$jobWhereClause}
        HAVING distance < :dist
        ORDER BY distance;
        ";

        // Merge all params including job params
        $stmt = $this->executeQuery($query, $params);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }
}
