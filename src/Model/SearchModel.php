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

    public function searchOffre($dist, $lat, $lng, $key_words = []) {
        $params = [
            'dist' => (float)$dist,
            'lat'  => (float)$lat,
            'lng'  => (float)$lng,
            'lat2' => (float)$lat, // PDO n'accepte pas :lat deux fois
        ];

        $keywordWhereClause = '';
        if (!empty($key_words)) {
            $conditions = [];
            foreach ($key_words as $i => $kw) {
                $kwKey = "kw{$i}";
                $conditions[] = "(LOWER(o.titre) LIKE :$kwKey OR LOWER(o.description_carte) LIKE :desc{$i})";
                $params[$kwKey] = '%' . mb_strtolower(trim($kw)) . '%';
                $params["desc{$i}"] = '%' . mb_strtolower(trim($kw)) . '%';
            }
            $keywordWhereClause = 'WHERE ' . implode(' OR ', $conditions);
        }

        $query = "
            SELECT o.*, e.nom AS entreprise_nom,
            (6371 * acos(
                cos(radians(:lat)) * cos(radians(o.lat))
                * cos(radians(o.lng) - radians(:lng))
                + sin(radians(:lat2)) * sin(radians(o.lat))
            )) AS distance
            FROM Offre o
            JOIN Entreprise e ON e.id_entreprise = o.id_entreprise
            {$keywordWhereClause}
            HAVING distance < :dist
            ORDER BY distance
        ";

        $stmt = $this->executeQuery($query, $params);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
