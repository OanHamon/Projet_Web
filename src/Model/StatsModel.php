<?php
namespace App\Model;

use PDO;

class StatsModel extends BaseModel
{
    protected $table = "Offre";
    protected $primaryKey = "id_offre";

    public function getTotalOffres()
    {
        $query = "
        SELECT COUNT(*) as total
        FROM Offre
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result['total'] ?? 0;
    }

    public function getAverageCandidatures()
    {
        $query = "
        SELECT ROUND(AVG(candidatures_count)) as moyenne
        FROM (
            SELECT COUNT(p.id_offre) as candidatures_count
            FROM Offre o
            LEFT JOIN Postule p ON o.id_offre = p.id_offre
            GROUP BY o.id_offre
        ) subquery
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result['moyenne'] ?? 0;
    }

    public function getTopWishlist($limit = 3)
    {
        $query = "
        SELECT o.id_offre, o.titre, COUNT(w.id_offre) as wishlist_count
        FROM Offre o
        JOIN Wishlist w ON o.id_offre = w.id_offre
        GROUP BY o.id_offre
        ORDER BY wishlist_count DESC
        LIMIT :limit
        ";

        $stmt = $this->executeQuery($query, ['limit' => $limit]);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getTotalWishlist()
    {
        $query = "
        SELECT COUNT(DISTINCT id_etudiant) as total
        FROM Wishlist
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result['total'] ?? 0;
    }

    public function getTotalCandidatures()
    {
        $query = "
        SELECT COUNT(*) as total
        FROM Postule
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result['total'] ?? 0;
    }

    public function getCandidatures7Days()
    {
        $query = "
        SELECT DATE(date_postulation) as jour, COUNT(*) as count
        FROM Postule
        WHERE date_postulation >= DATE_SUB(NOW(), INTERVAL 7 DAY)
        GROUP BY DATE(date_postulation)
        ORDER BY jour ASC
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getOffresByDuration()
    {
        $query = "
        SELECT 
            CASE 
                WHEN DATEDIFF(date_fin, date_debut) <= 61 THEN '2 mois'
                WHEN DATEDIFF(date_fin, date_debut) <= 122 THEN '4 mois'
                ELSE '6 mois'
            END as duree,
            COUNT(*) as count,
            ROUND((COUNT(*) / (SELECT COUNT(*) FROM Offre)) * 100) as pourcentage
        FROM Offre
        GROUP BY duree
        ORDER BY duree
        ";

        $stmt = $this->executeQuery($query, []);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getTopCompanies($limit = 5)
    {
        $query = "
        SELECT e.id_entreprise, e.nom, COUNT(o.id_offre) as offres_count
        FROM Entreprise e
        LEFT JOIN Offre o ON e.id_entreprise = o.id_entreprise
        GROUP BY e.id_entreprise
        ORDER BY offres_count DESC
        LIMIT :limit
        ";

        $stmt = $this->executeQuery($query, ['limit' => $limit]);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getTopCompetencies($limit = 5)
    {
        $query = "
        SELECT c.id_competence, c.nom, COUNT(co.id_offre) as count
        FROM Competence c
        JOIN Competence_Offre co ON c.id_competence = co.id_competence
        GROUP BY c.id_competence
        ORDER BY count DESC
        LIMIT :limit
        ";

        $stmt = $this->executeQuery($query, ['limit' => $limit]);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $stmt->closeCursor();

        return $result;
    }

    public function getAllStats()
    {
        return [
            'total_offres' => $this->getTotalOffres(),
            'average_candidatures' => $this->getAverageCandidatures(),
            'top_wishlist' => $this->getTopWishlist(),
            'total_wishlist' => $this->getTotalWishlist(),
            'total_candidatures' => $this->getTotalCandidatures(),
            'candidatures_7days' => $this->getCandidatures7Days(),
            'offres_duration' => $this->getOffresByDuration(),
            'top_companies' => $this->getTopCompanies(),
            'top_competencies' => $this->getTopCompetencies()
        ];
    }
}
