<?php
namespace App\Model;
use PDO;
use PDOException;


class SearchModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function searchOffre($dist, $lat, $lng, $key_words = []) {
        $params = [
            'lat'  => (float)$lat,
            'lng'  => (float)$lng,
            'lat2' => (float)$lat,
        ];
    
        $conditions = [];
        foreach ($key_words as $i => $kw) {
            $kwKey = "kw{$i}";
            $descKey = "desc{$i}";
            $entKey = "ent{$i}";
            $descEntKey = "descEnt{$i}";
            $conditions[] = "(
                LOWER(o.titre) LIKE :$kwKey OR 
                LOWER(o.description_carte) LIKE :$descKey OR 
                LOWER(e.nom) LIKE :$entKey OR 
                LOWER(o.description_offre_de_stage) LIKE :$descEntKey
            )";
            $params[$kwKey] = '%' . mb_strtolower(trim($kw)) . '%';
            $params[$descKey] = '%' . mb_strtolower(trim($kw)) . '%';
            $params[$entKey] = '%' . mb_strtolower(trim($kw)) . '%';
            $params[$descEntKey] = '%' . mb_strtolower(trim($kw)) . '%';
        }
    
        $whereSql = !empty($conditions) ? 'WHERE ' . implode(' OR ', $conditions) : '';
    
        $query = "
            SELECT o.*, e.nom AS entreprise_nom,
            (6371 * acos(
                cos(radians(:lat)) * cos(radians(o.lat))
                * cos(radians(o.lng) - radians(:lng))
                + sin(radians(:lat2)) * sin(radians(o.lat))
            )) AS distance
            FROM Offre o
            JOIN Entreprise e ON e.id_entreprise = o.id_entreprise
            {$whereSql}
        ";
    
        if ($dist !== null && $dist > 0) {
            $params['dist'] = (float)$dist;
            $query .= " HAVING distance <= :dist ORDER BY distance ASC";
        }

        if ($dist == null || $dist <= 0 && $key_words == []) {
            $query .= " ORDER BY o.date_debut ASC";
        }

        $query .= " LIMIT 100";
        return $this->executeQuery($query, $params)->fetchAll(PDO::FETCH_ASSOC);
    }
}
