<?php

namespace App\Controller;

use App\Model\UserModel;

class AuthController extends Controller{

     private $userModel;


    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
    }

    function login(){
     if(isset($_POST['email']) && isset($_POST['mdp'])){
        $user = $this->userModel->find(['email' => $email]);
        $emailFromPost = $_POST['email'];
        $mdpFromPost = $_POST['mdp'];

     }
    }

}