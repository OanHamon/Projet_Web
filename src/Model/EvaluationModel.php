<?php
namespace App\Model;

use PDO;

class EvaluationModel extends BaseModel
{
    protected $table = "Evaluation_entreprise";

    function updateNote($id_entreprise, $id_utilisateur, $note){
        $data =['id_entreprise'=>$id_entreprise, 'id_utilisateur'=>$id_utilisateur, 'note'=>$note];
        $query = "UPDATE {$this->table} SET note = :note WHERE id_entreprise = :id_entreprise AND id_utilisateur = :id_utilisateur";
        $stmt = $this->executeQuery($query, $data);
        return $stmt->rowCount();
    }
}
