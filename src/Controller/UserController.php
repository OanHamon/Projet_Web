<?php

namespace App\Controller;

use App\Model\{UserModel, WishlistModel,PostuleModel};
use DateTime;

class UserController extends Controller{

    private $userModel ;
    private $id;
    private $wlModel;

    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
        $this->wlModel = new WishlistModel();

        if (!isset($_SESSION['userId'])) {
            header('Location: /signin');
            exit;
        }
        $this->id=$_SESSION['userId'];
    }

    function renderStudentDashboardPage($errors = NULL){
        $wishliste = $this->userModel->getWishlist($this->id);
        $candidature = $this->userModel->getPostulations($this->id);
        $user= $this->userModel->getById($this->id);
        echo $this->twig->render('student_dashboard.twig.html',[
            'user'=>$user,
            'wishliste'=>$wishliste,
            'candidatures'=>$candidature,
            'errors' => $errors
            ]);
    }

    function renderPiloteDashboardPage(){
        $etudiants = $this->userModel->getEtudiant_pilote($this->id);
        $user = $this->userModel->getById($this->id);
        $id_etudiant = NULL;
        $postulations = [];
        $etudiantToDisplay = [];

        if(isset($_GET['etudiant_id']) ) {
            $id_etudiant=$_GET['etudiant_id'];
            $postulations = $this->userModel->getPostulations($id_etudiant);
            $etudiantToDisplay = $this->userModel->getById($id_etudiant);
        }

        
        echo $this->twig->render('pilote_dashboard.twig.html', ['user'=>$user, 'etudiants'=>$etudiants, 'postulations'=>$postulations, 'etudiantToDisplay'=>$etudiantToDisplay]);

    }

    function updatePiloteInfo(){
        if(isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['email'])) {
            $prenom = $_POST['prenom'];
            $nom = $_POST['nom'];
            $email = $_POST['email'];
            $emailResult = $this->punisher->isEmail($email);
            if($emailResult !== true){
                $errors[] = $emailResult;
                $this->renderStudentDashboardPage($errors);
                exit();
            }

            $data = [];

            if(!empty($_POST['nom'])){
                $data['nom'] = $this->punisher->sanitize($_POST['nom']);
            }
            if(!empty($_POST['prenom'])){
                $data['prenom'] = $this->punisher->sanitize($_POST['prenom']);
            }
            if(!empty($_POST['email'])){
                $data['email'] = $_POST['email'];
            }
    
        $this->userModel->update($this->id, $data);
        header('Location: /pilote_dashboard');
        exit();
    }
    }




    function updateUserInfo(){

        if(isset($_POST['prenom']) && isset($_POST['nom'])&& isset($_POST['email'])){
            $prenom = $_POST['prenom'];
            $nom = $_POST['nom'];
            $email = $_POST['email'];
            $emailResult = $this->punisher->isEmail($email);
            if($emailResult !== true){
                $errors[] = $emailResult;
                $this->renderStudentDashboardPage($errors);
                exit();
            }
            $data =[];

            if(!empty($_POST['nom'])){
                $data['nom'] = $this->punisher->sanitize($_POST['nom']);
            }
            if(!empty($_POST['prenom'])){
                $data['prenom'] = $this->punisher->sanitize($_POST['prenom']);
            }
            if(!empty($_POST['email'])){
                $data['email'] = $_POST['email'];
            }
            
            $this->userModel->update($this->id,$data);
            header('Location: /student_dashboard');
            exit();
        }
        else{
            header('Location: /error=?error=no_data_available'); //on fera un route qui gère les erreurs plus tards
            exit(); 
        }
        
    }

    function deleteAccount(){
        $this->userModel->deleteById($this->id);
        $_SESSION = array();
        header('Location: /'); 
        exit(); 
    }

    function addInWishlist(){
        if(isset($_POST['id_offre'])){
            $id_offre = $_POST['id_offre'];
            $data = [ 'id_etudiant'=>$this->id, 'id_offre'=>$id_offre];
            if(!$this->wlModel->find($data)){
                $this->wlModel->insert($data);
                header('Location: ' . $_SERVER['HTTP_REFERER']); // redirige vers la derniere page
                exit();
            }
            else{
                header('Location: /error?error=already_in_wishlist');
                exit();
            }

        }
        else{
            header('Location: /error?error=no_data_available'); //on fera un route qui gère les erreurs plus tards
            exit(); 
        }
    }

    function deleteInWishlist(){
        if(isset($_POST['id_offre'])){
            $id_offre = $_POST['id_offre'];
            $data = [ 'id_etudiant'=>$this->id, 'id_offre'=>$id_offre];
            if($this->wlModel->find($data)){
                $this->wlModel->deleteEntry($data);
                header('Location: ' . $_SERVER['HTTP_REFERER']); // redirige vers la derniere page
                exit();
            }
            else{
                header('Location: /error?error=not_in_wishlist');
                exit();
            }

        }
        else{
            header('Location: /error?error=no_data_available'); //on fera un route qui gère les erreurs plus tards
            exit(); 
        }

    }
  
    function candidaterOffre($id)
    {

        $postuleModel = new PostuleModel();

        if($id){
            $id_offre = $id;
            $data = [ 'id_etudiant'=>$this->id, 'id_offre'=>$id_offre];
            if(!$postuleModel->find($data)){

                if(isset($_POST['phone'])){
                    $phoneResult = $this->punisher->isPhoneNumber($_POST['phone']);
                    if($phoneResult !== true){
                        $errors[] = $phoneResult;
                        $this->renderStudentDashboardPage($errors);
                        exit();
                    }
                    if(isset($_FILES['cv']) && isset($_FILES['lm'])){
                        $cv = $_FILES['cv'];
                        $lm =$_FILES['lm'];
                        if($this->checkFile($cv) && $this->checkFile($lm)){
                            $cv_new_path = $this->manageMoveFile($cv, __DIR__ . '/../../public/uploads/cv/');
                            $lm_new_path = $this->manageMoveFile($lm, __DIR__ . '/../../public/uploads/lm/');

                                // ajouter recuperer la date ici
                            $date = new DateTime('today');
                            $date = $date->format('Y-m-d');
                            $data = ['id_etudiant'=>$this->id, 'id_offre'=>$id_offre, 'cv_url'=>$cv_new_path, 'lm_url'=>$lm_new_path, 'date_postulation'=>$date]; // la rajouter dans data
                            $postuleModel->insert($data);
                            header("location: /offre/$id_offre");
                            exit();
                        }
                        else{
                            header('location: /error?error=file_error');
                            exit();
                        }
                    }
                    else{
                        header('location: /error?error=no_file_available');
                        exit();
                    }

                }
                else{
                    header('location: /error?error=user_data_not_available');
                    exit();
                }
            }
            else{
                header('Location: /error?error=already_applied');
                exit();
            }
        }
        else{
            header('location: /error?error=no_data_available');
            exit();
        }


    }

    function checkFile($file){
        $allowed = ['application/pdf', 'application/msword'];
        $finfo = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($finfo, $file['tmp_name']);

        if(($file['size'] < 5 * 1024 * 1024) && in_array($mime, $allowed))
        {
            finfo_close($finfo);    
            return true;        
        }
        else{
            finfo_close($finfo);    
            return false;
        }


    }

    function manageMoveFile($file, $path){
        $file['name'] = uniqid() . '.' . pathinfo($file['name'], PATHINFO_EXTENSION);
        $finale_path = $path . $file['name'];
        
        move_uploaded_file($file['tmp_name'], $finale_path);
        return $file['name'];   
    }


}