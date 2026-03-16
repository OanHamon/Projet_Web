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
        if ( isset($_POST['mdp']) && isset($_POST['email']) ){
            $email = $_POST['email'];
            $mdp = $_POST['mdp'];

            $hashed_password = $this->userModel->hashed_password_user_email($email);

            if ($email && password_verify($mdp, $hashed_password)){
                session_start();
                $_SESSION['userId'] = $this->userModel->get_user_id($email);
                header('Location: /dashboard');
                exit;
            } else {
                header('Location: /login');
                exit;
            }
        }
    }

    function create_account() {
        if (isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mdp']) && isset($_POST['email'])){
            $email = $_POST['email'];
            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $password_hash = password_hash($_POST['mdp'], PASSWORD_DEFAULT);

            foreach ($_POST as $key => $value) {
                echo htmlspecialchars($key) . " : " . htmlspecialchars($value) . "<br>";
            }

            if (!$this->userModel->user_exist_email($email)) {
                //session_start();
                //$_SESSION['userId'] = 
                $this->userModel->create_user($email, $password_hash, $nom, $prenom);
                header('Location: /dashboard');
                exit;
            } else {
                header('Location: /login');// l'utilisateur existe déja
                exit;
            }
        }
    }

    function renderAuthPage(){
        echo $this->twig->render('login.twig.html');
    }
}