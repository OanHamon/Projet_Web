<?php

namespace App\Controller;

use App\Model\{UserModel, WishlistModel,PostuleModel};

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

    function renderStudentDashboardPage(){
        $wishliste = $this->userModel->getWishlist($this->id);
        $candidature = $this->userModel->getPostulations($this->id);
        $user= $this->userModel->getById($this->id);
        echo $this->twig->render('student_dashboard.twig.html',['user'=>$user,'wishliste'=>$wishliste,'candidatures'=>$candidature]);
    }

    function renderPiloteDashboardPage(){

        echo $this->twig->render('pilote_dashboard.twig.html');
    }




    function updateUserInfo(){

        if(isset($_POST['prenom']) && isset($_POST['nom'])&& isset($_POST['email'])){
            $prenom = $_POST['prenom'];
            $nom = $_POST['nom'];
            $email =$_POST['email'];
            $data =[];

            if(!empty($_POST['nom'])){
                $data['nom'] = $_POST['nom'];
            }
            if(!empty($_POST['prenom'])){
                $data['prenom'] = $_POST['prenom'];
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
                header('Location: ' . $_SERVER['HTTP_REFERER'] . '?error=already_in_wishlist');
                exit();
            }

        }
        else{
            header('Location: /error'); //on fera un route qui gère les erreurs plus tards
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
                header('Location: ' . $_SERVER['HTTP_REFERER'] . '?error=not_in_wishlist');
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

        // verifier qu'il na pas deja postuler


        // verifier les contrainte sur les fichers : pdf, doc (finfo), taille $_Files['size']

        // les deplacer et les stocker dans les fichiers sur le server avec un uniq_id
        // Enregister dans la bdd le chemin vers le fichier pdf sur le serveur

        //rediriger vers le menu si y'a pas de pb ou vers la page error
        //exit()
        $postuleModel = new PostuleModel();

        if($id){
            $id_offre = $id;
            $data = [ 'id_etudiant'=>$this->id, 'id_offre'=>$id_offre];
            if(!$postuleModel->find($data)){
                if(isset($_POST['prenom']) && isset($_POST['nom'])&& isset($_POST['email']) && isset($_POST['phone'])){
                    //Verifier les donnée coherente avec la session de l'utilisateur ici qd on aura mis enplace les sessions
                    if(isset($_FILES['cv']) && isset($_FILES['lm'])){
                        $cv = $_FILES['cv'];
                        $lm =$_FILES['lm'];
                        if($this->checkFile($cv) && $this->checkFile($lm)){
                            $cv_new_path = $this->manageMoveFile($cv, __DIR__ . '/../../public/uploads/cv/');
                            $lm_new_path = $this->manageMoveFile($lm, __DIR__ . '/../../public/uploads/lm/');

                           $data = ['id_etudiant'=>$this->id, 'id_offre'=>$id_offre, 'cv_url'=>$cv_new_path, 'lm_url'=>$lm_new_path];
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
                header('Location: ' . $_SERVER['HTTP_REFERER'] . '?error=already_applied');
                exit();
            }
        }
        else{
            header('location: /error?error=no_id');
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