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
        $errors = [];
    
        if (isset($_POST['mdp']) && isset($_POST['email'])) {
            $email = $_POST['email'];
            $mdp   = $_POST['mdp'];
    
            if (!$this->userModel->user_exist_email($email)) {
                $errors[] = "Cette adresse email n'existe pas, creez un compte.";
            } else {
                $hashed_password = $this->userModel->hashed_password_user_email($email);
    
                if (!password_verify($mdp, $hashed_password)) {
                    $errors[] = "Mot de passe incorrect.";
                }
            }
    
            if (empty($errors)) {
                $_SESSION['userId'] = $this->userModel->get_user_id($email);
                header('Location: /dashboard');
                exit;
            }
        }
    
        echo $this->twig->render('login.twig.html', [
            'login' => false,
            'errors' => $errors
        ]);
    }

    function create_account() {
        $errors = [];
    
        if (isset($_POST['prenom'], $_POST['nom'], $_POST['mdp'], $_POST['email'])) {
    
            $email = $_POST['email'];
            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $password_hash = password_hash($_POST['mdp'], PASSWORD_DEFAULT);
    
            if ($this->userModel->user_exist_email($email)) {
                $errors[] = "Un compte existe déjà avec cette adresse email, connectez vous.";
            }
    
            if (empty($errors)) {
                $userId = $this->userModel->create_user($email, $password_hash, $nom, $prenom);
                $_SESSION['userId'] = $userId;
                header('Location: /dashboard');
                exit;
            }
        }
    
        echo $this->twig->render('login.twig.html', [
            'login' => true,
            'errors' => $errors
        ]);
    }

    function logout(){
        $_SESSION = array();
        header('Location: /');
        exit;
    }

    function renderSignInPage(){
        echo $this->twig->render('login.twig.html', ['login'=>false]);
    }
    function renderSignUpPage(){
        echo $this->twig->render('login.twig.html', ['login'=>true]);
    }
}