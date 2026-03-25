<?php

namespace App\Controller;

use App\Model\{EntrepriseModel,EvaluationModel,OffreModel,CompetenceModel, UserModel, VilleModel};

class EntrepriseController extends Controller{

    private $entrepriseModel;
    private $evalModel;
    private $offreModel;
    private $entreprise_id; //id fix temporaire
    private $compModel;
    private $villeModel;
    private $userModel;

    function __construct(){
        parent::__construct();
        $this->entrepriseModel = new EntrepriseModel();
        $this->evalModel = new EvaluationModel();
        $this->offreModel = new OffreModel( );
        $this->compModel = new CompetenceModel();
        $this->villeModel = new VilleModel();
        $this->userModel = new UserModel();
    } 

    function renderEntreprisePage($id){
        $entreprise = $this->entrepriseModel->getById($id);
        $offres = $this->entrepriseModel->getOffres($id);
        $competences = $this->entrepriseModel->getCompetences($id);
        $note = ceil($this->entrepriseModel->getEvaluation($id)['moyenne']); // On affiche la note de l'entreprise et pas celle de l'utilisateur sur cette entreprise pour l'instant mais on le fera + tard


        echo $this->twig->render('vitrine_entreprise.twig.html',['entreprise'=>$entreprise, 'offres'=>$offres, 'competences'=>$competences, 'note'=>$note]);
    }
    private function requireEntrepriseAuth(){
        if(!isset($_SESSION['companyId'])){
            header('Location: /signin');
            exit();
        }
        $this->entreprise_id = $_SESSION['companyId'];
    }
    

    function renderEntrepriseDashboardPage($errors = NULL){
        $this->requireEntrepriseAuth();
        $entreprise = $this->entrepriseModel->getById($this->entreprise_id);
        $offres = $this->entrepriseModel->getOffres($this->entreprise_id);
        $all_competences = $this->compModel->getAll();
        $all_villes = $this->villeModel->getAll();
        
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
            'all_villes'=>$all_villes,
            'offre_competences'=>$offre_competences, 
            'createNew'=>$createNew,
            'candidats'=>$candidats,
            'candidat_data'=>$candidat_data,
            'cv_url'=>$cv_url,
            'lm_url'=>$lm_url,
            'errors' => $errors,

            ]);
    }
    function downloadFile(){
        $filename = $_GET['file'];
        $type = $_GET['type']; // 'cv' ou 'lm'
        $path = __DIR__ . '/../../public/uploads/' . $type . '/' . $filename;
        var_dump($path);
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
        $this->requireEntrepriseAuth();
        $data= [];
        $errors = [];

        $fields = ['nom', 'phrase_intro', 'description_entreprise','description_cartes', 'email', 'telephone'];
        foreach($fields as $field){
            if(!empty($_POST[$field])){
                $value = $_POST[$field];

                if($field === 'email'){
                    $result = $this->punisher->isEmail($value);
                    if($result !== true){ $errors[] = $result; continue; }                    
                }
                if($field === 'telephone'){
                    $result = $this->punisher->isPhoneNumber($value);
                    if($result !== true){ $errors[] = $result; continue; }                    
                }
                if($field === 'description_entreprise'){
                    $data[$field] = $value;
                }
                else{
                    $data[$field] =$this->punisher->sanitize($value);
                }


            }
        }
        if(empty($errors) && !empty($data)){$this->entrepriseModel->update($this->entreprise_id,$data);}
        $this->renderEntrepriseDashboardPage($errors);
        exit(); 

    }

    function updateOffreInfo(){
        if(isset($_POST['id_offre'])){
            $id_offre = $_POST['id_offre'];
            $data = [];
            $errors = [];
            $fields = ['titre', 'description_carte', 'description_offre_de_stage','remuneration_par_mois', 'date_debut', 'date_fin', 'lat', 'lng'];

            foreach($fields as $field){
                if(isset($_POST[$field]) && $_POST[$field] !== ''){
                    $value = $_POST[$field];

                    if($field === 'email'){
                        $result = $this->punisher->isEmail($value);
                        if($result !== true){ $errors[] = $result; continue; }                    
                    }

                    if($field === 'telephone'){
                        $result = $this->punisher->isPhoneNumber($value);
                        if($result !== true){ $errors[] = $result; continue; }                    
                    }

                    if($field === 'remuneration_par_mois'){
                        $result = $this->punisher->isInt($value);
                        if($result !== true){ $errors[] = $result; continue; }
                        if($value < 0) {
                            $result = $this->punisher->punish("rémunération ne peut pas etre négatif");
                            $errors[] = $result;
                            continue;
                        }
                    }

                    if($field === 'date_debut' || $field === 'date_fin'){
                        $result = $this->punisher->isDateAfterToday($value);
                        if($result !== true){ $errors[] = $result; continue; }  
                    }

                    if($field === 'description_offre_de_stage' || $field === 'date_debut' || $field === 'date_fin' ){

                        $data[$field] = $value;

                    }
                    else{
                        $data[$field] = $this->punisher->sanitize($value);
                    }
                }
            }


            if(isset($_POST['date_debut']) && isset($_POST['date_fin'])){
                $result = $this->punisher->isDateRangeValid($_POST['date_debut'], $_POST['date_fin']);
                if($result !== true){ $errors[] = $result; }
            }

            $this->compModel->deleteOffreCompetences($id_offre);
            if(isset($_POST['competences'])){
                foreach($_POST['competences'] as $id_competence){
                    $this->compModel->insertOffreCompetence($id_offre,$id_competence);
                }
            }

            if(empty($errors) && !empty($data)){
                $this->offreModel->update($id_offre,$data);
            }

            $this->renderEntrepriseDashboardPage( $errors );
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
        $this->requireEntrepriseAuth();
        $fields = ['titre', 'description_carte', 'description_offre_de_stage','remuneration_par_mois', 'date_debut', 'date_fin', 'lat', 'lng'];
        $data = [];
        $errors = [];

        foreach($fields as $field){
            if(isset($_POST[$field]) && $_POST[$field] !== ''){
                $value = $_POST[$field];

                if($field === 'remuneration_par_mois'){
                    $result = $this->punisher->isInt($value);
                    if($result !== true){ $errors[] = $result; continue; }
                    if($value < 0) {
                        $result = $this->punisher->punish("rémunération ne peut pas etre négatif");
                        $errors[] = $result;
                        continue;
                    }
                }

                if($field === 'date_debut' || $field === 'date_fin'){
                    $result = $this->punisher->isDateAfterToday($value);
                    if($result !== true){ $errors[] = $result; continue; }
                }

                if($field === 'description_offre_de_stage' || $field === 'date_debut' || $field === 'date_fin'){
                    $data[$field] = $value;
                } else {
                    $data[$field] = $this->punisher->sanitize($value);
                }

            } else {
                $errors[] = "Le champ $field est obligatoire.";
            }
        }

        if(isset($_POST['date_debut']) && isset($_POST['date_fin'])){
            $result = $this->punisher->isDateRangeValid($_POST['date_debut'], $_POST['date_fin']);
            if($result !== true){ $errors[] = $result; }
        }

        if(empty($errors)){
            $data['id_entreprise'] = $this->entreprise_id;
            $id_new_offre = $this->offreModel->insert($data);

            if(isset($_POST['competences'])){
                foreach($_POST['competences'] as $id_competence){
                    $this->compModel->insertOffreCompetence($id_new_offre, $id_competence);
                }
            }

            header('Location: ' . $_SERVER['HTTP_REFERER']);
            exit();
        }

        $this->renderEntrepriseDashboardPage($errors);
        exit();
    }


    function deleteAccount(){
        $this->requireEntrepriseAuth();
        $this->entrepriseModel->deleteById($this->entreprise_id);
        $_SESSION = array();
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