<?php

namespace App\Controller;

use App\Model\{UserModel, WishlistModel};

class UserController extends Controller{

    private $userModel ;
    private $id;
    private $wlModel;

    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
        $this->wlModel = new WishlistModel();
        $this->id=9;
    }

    function renderStudentDashboardPage(){
        $wishliste = $this->userModel->getWishlist($this->id);
        $candidature = $this->userModel->getPostulations($this->id);
        $user= $this->userModel->getById($this->id);
        echo $this->twig->render('student_dashboard.twig.html',['user'=>$user,'wishliste'=>$wishliste,'candidatures'=>$candidature]);
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
            header('Location: /dashboard');
            exit();
        }
        else{
            header('Location: /error'); //on fera un route qui gère les erreurs plus tards
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
                header('Location: /error'); //on fera un route qui gère les erreurs plus tards
                exit(); 
            }

        }
  
}