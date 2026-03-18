<?php

namespace App\Controller;

use App\Model\{EntrepriseModel,EvaluationModel,OffreModel,CompetenceModel, UserModel};

class EntrepriseController extends Controller{

    private $entrepriseModel;
    private $evalModel;
    private $offreModel;
    private $entreprise_id; //id fix temporaire
    private $compModel;
    private $userModel;

    function __construct(){
        parent::__construct();
        $this->entrepriseModel = new EntrepriseModel();
        $this->evalModel = new EvaluationModel();
        $this->offreModel = new OffreModel( );
        $this->compModel = new CompetenceModel();
        $this->userModel = new UserModel();
    } 

    function renderEntreprisePage($id){
        $entreprise = $this->entrepriseModel->getById($id);
        $offres = $this->entrepriseModel->getOffres($id);
        $competences = $this->entrepriseModel->getCompetences($id);
        $note = ceil($this->entrepriseModel->getEvaluation($id)['moyenne']); // On affiche la note de l'entreprise et pas celle de l'utilisateur sur cette entreprise pour l'instant mais on le fera + tard


        echo $this->twig->render('vitrine_entreprise.twig.html',['entreprise'=>$entreprise, 'offres'=>$offres, 'competences'=>$competences, 'note'=>$note]);
    }

    function renderEntrepriseDashboardPage(){
        if (!isset($_SESSION['companyId'])) {
            header('Location: /signin');
            exit;
        }
        $this->entreprise_id = $_SESSION['companyId'];
        $entreprise = $this->entrepriseModel->getById($this->entreprise_id);
        $offres = $this->entrepriseModel->getOffres($this->entreprise_id);
        $all_competences = $this->compModel->getAll();
        
        $offre_to_display = NULL;
        $showdata = NULL;
        $candidats = NULL;
        $candidat_data = NULL;
        $cv_url = NULL;
        $lm_url = NULL;
        $offre_competences = [];

        if(isset($_GET['offre_id'])){
            $id_to_display = $_GET['offre_id'];

            if(isset($_GET['showdata']) && $_GET['showdata'] == 'true'){
                $showdata = true;      
                $candidats = $this->offreModel->getCandidats($id_to_display);    
                if(isset($_GET['candidat_id'])){
                    $candidat_data = $this->userModel->getById($_GET['candidat_id']);
                    $candidature = $this->userModel->getCandidature($_GET['candidat_id'],$id_to_display);

                    $cv_url =  $candidature['cv_url'];
                    $lm_url = $candidature['lm_url'];
                } 
            }
            else{
                $showdata = false; 
            }
            
            $offre_to_display = $this->offreModel->getById($id_to_display);
            $offre_competences = $this->offreModel->getCompetences($id_to_display);
        }

        $createNew = false;
        if(isset($_GET['create']) && $_GET['create'] ==true ){
            $createNew =true;
            
        }
        echo $this->twig->render('entreprise_dashboard.twig.html',[
            'entreprise'=>$entreprise,
            'offres'=>$offres, 
            'offre_to_display'=>$offre_to_display,
            'showdata'=>$showdata ,
            'all_competences'=>$all_competences , 
            'offre_competences'=>$offre_competences, 
            'createNew'=>$createNew,
            'candidats'=>$candidats,
            'candidat_data'=>$candidat_data,
            'cv_url'=>$cv_url,
            'lm_url'=>$lm_url,

            ]);
    }
    function downloadFile(){
    $filename = $_GET['file'];
    $type = $_GET['type']; // 'cv' ou 'lm'
    $path = __DIR__ . '/../../public/uploads/' . $type . '/' . $filename;
    echo $path;
    if(file_exists($path)){
        header('Content-Type: application/pdf');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        readfile($path);
        echo 'finis';
        exit();
    }
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


    function updateEntrepriseInfo(){

        $data= [];
        $fields = ['nom', 'phrase_intro', 'description_entreprise','description_cartes', 'email', 'telephone'];
        foreach($fields as $field){
            if(!empty($_POST[$field])){
                $data[$field] = $_POST[$field];
            }
        }
        if(!empty($data)){$this->entrepriseModel->update($this->entreprise_id,$data);}
        header('Location: /entreprise_dashboard');
        exit();

    }

    function updateOffreInfo(){
        if(isset($_POST['id_offre'])){
            $id_offre = $_POST['id_offre'];
            $data = [];
            $fields = ['titre', 'description_carte', 'description_offre_de_stage','remuneration_par_mois', 'date_debut', 'date_fin'];
            foreach($fields as $field){
                if(!empty($_POST[$field])){
                    $data[$field] = $_POST[$field];
                }
            }
            $this->compModel->deleteOffreCompetences($id_offre);
            if(isset($_POST['competences'])){
                foreach($_POST['competences'] as $id_competence){
                    $this->compModel->insertOffreCompetence($id_offre,$id_competence);
                }
            }

            $this->offreModel->update($id_offre, $data);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            exit();
        }
        else{header('location: /error?error=no_data_available'); exit();}
    }

    function deleteOffre(){
        if(isset($_POST['id_offre'])){
            $this->offreModel->deleteById($_POST['id_offre']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            exit();
        }
        else{ header('location: /error?error=no_data_available'); exit();}
    }

    function createOffre(){

        $fields = ['titre', 'description_carte', 'description_offre_de_stage','remuneration_par_mois', 'date_debut', 'date_fin'];
        $data = [];
        foreach($fields as $field){
            if(isset($_POST[$field]) && !empty($_POST[$field])){
                $data[$field] = $_POST[$field];

            }
            else{ header('location: /error?error=no_data_available'); exit();}
        }
        $data['id_entreprise']=$this->entreprise_id;
        $id_new_offre =$this->offreModel->insert($data);
        if(isset($_POST['competences'])){
            foreach($_POST['competences'] as $id_competence){
                $this->compModel->insertOffreCompetence($id_new_offre, $id_competence);
            }
        }

        header('Location: ' . $_SERVER['HTTP_REFERER']);
        exit();
    }


    function deleteAccount(){
        $this->entrepriseModel->deleteById($this->entreprise_id);
        if ( !$_SESSION['role'] == 'admin'){
            $_SESSION = array();
        }

        header('Location: /'); 
        exit(); 
    }

    // a faire quand on aura bien les sessions

    /*
    function showCandidatData(){
        if(isset([$_POST['id_offre']]) && isset([$_POST['id_etudiant']])){


        }
    }

    */
}