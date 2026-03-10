<?php
namespace App\Model;


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
}
