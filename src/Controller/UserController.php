<?php

namespace App\Controller;

use App\Model\UserModel;

class UserController extends Controller{

    private $userModel ;
    private $id;

    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
        $this->id=11;
    }

    function renderStudentDashboardPage(){
        $wishliste = $this->userModel->getWishlist($this->id);
        $candidature = $this->userModel->getPostulations($this->id);
        $user= $this->userModel->getById($this->id);
        echo $this->twig->render('student_dashboard.twig.html',['user'=>$user,'wishliste'=>$wishliste,'candidatures'=>$candidature]);
    }

    function updateUserInfo(){

        if(isset($_POST['prenom']) && isset($_POST['nom'])&& isset($_POST['email'])){
            $data = ['nom'=>$_POST['nom'], 'prenom'=>$_POST['prenom'], 'email'=>$_POST['email']];
            
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
}