<?php
namespace App\Model;

use PDO;

class CompetenceModel extends BaseModel
{
    protected $table = "Competence";
    protected $primaryKey = "id_competence";

    public function getOffres($competenceId)
    {
        $query = "
        SELECT o.*
        FROM Offre o
        JOIN Competence_demander r ON r.id_offre = o.id_offre
        WHERE r.id_competence = :id
        ";

        $stmt = $this->executeQuery($query, ['id' => $competenceId]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    public function deleteOffreCompetences($id_offre){
        $query = "DELETE FROM Competence_Offre  WHERE id_offre = :id_offre";
        
        $stmt = $this->executeQuery($query, ['id_offre' => $id_offre]);
        return $stmt->rowCount();   
    }

    public function insertOffreCompetence($id_offre, $id_competence){

        $query = "INSERT INTO Competence_Offre (id_offre, id_competence) VALUES (:id_offre, :id_competence)";

        $this->executeQuery($query, ['id_offre'=>$id_offre, 'id_competence'=>$id_competence]);

        return $this->conn->lastInsertId();

    }
}