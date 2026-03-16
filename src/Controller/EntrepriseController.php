<?php

namespace App\Controller;

use App\Model\{EntrepriseModel,EvaluationModel};

class EntrepriseController extends Controller{

    private $entrepriseModel;
    private $evalModel;

    function __construct(){
        parent::__construct();
        $this->entrepriseModel = new EntrepriseModel();
        $this->evalModel = new EvaluationModel();
    }

    function renderEntreprisePage($id){
        $entreprise = $this->entrepriseModel->getById($id);
        $offres = $this->entrepriseModel->getOffres($id);
        $competences = $this->entrepriseModel->getCompetences($id);
        $note = ceil($this->entrepriseModel->getEvaluation($id)['moyenne']); // On affiche la note de l'entreprise et pas celle de l'utilisateur sur cette entreprise pour l'instant mais on le fera + tard

        echo $this->twig->render('vitrine_entreprise.twig.html',['entreprise'=>$entreprise, 'offres'=>$offres, 'competences'=>$competences, 'note'=>$note]);
    }

    function manageNotation($id){
        if(isset($_POST['rating'])){
            $note=$_POST['rating'];
            $id_utilisateur = 1; //id fix en attendant l'auth
            $data = ['id_entreprise'=>$id, 'id_utilisateur'=>$id_utilisateur];
            if($this->evalModel->find($data)){
                $data['note'] = $note;
                $this->evalModel->updateNote($id,$id_utilisateur,$note);
                header('Location: ' . $_SERVER['HTTP_REFERER']);
                exit();
            }
            else{
                $data['note'] = $note;
                $this->evalModel->insert($data);
                header('Location: ' . $_SERVER['HTTP_REFERER']);
                exit();
            }
        }
        else{
            header('Location: /error?error=no_rating_available');
        }

    }
}