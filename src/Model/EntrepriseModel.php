<?php
namespace App\Model;
use PDO;
use PDOException;


class EntrepriseModel extends BaseModel
{
    protected $table = "Entreprise";
    protected $primaryKey = "id_entreprise";

    public function getOffres($entrepriseId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Proposer p ON p.id_offre = o.id_offre
        WHERE p.id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getEvaluation($entrepriseId)
    {
        $query = "
        SELECT AVG(note) as moyenne
        FROM Evaluation
        WHERE id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function getCompetences($entrepriseId)
    {
        $query = "
        SELECT DISTINCT c.*
        FROM Competence c
        JOIN Requerir r ON r.id_competence = c.id_competence
        JOIN Offre o ON o.id_offre = r.id_offre
        JOIN Proposer p ON p.id_offre = o.id_offre
        WHERE p.id_entreprise = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $entrepriseId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
