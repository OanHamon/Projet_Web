<?php

namespace App\Controller;

use App\Model\UserModel;
use App\Model\EntrepriseModel;

class AuthController extends Controller{

    private $userModel;
    private $entrepriseModel;

    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
        $this->entrepriseModel = new EntrepriseModel();
    }

    function login(){
        $errors = [];
    
        if (isset($_POST['mdp']) && isset($_POST['email'])) {
            $email = $_POST['email'];
            $emailResult = $this->punisher->isEmail($email);
            if($emailResult !== true){
                $errors[] = $emailResult;
            }
            $mdp   = $_POST['mdp'];
            $emailIsEntreprise = $this->entrepriseModel->entreprise_exist_email($email);
    
            if (!$this->userModel->user_exist_email($email) && !$emailIsEntreprise) {
                $errors[] = "Cette adresse email n'existe pas, creez un compte.";
            } else {
                if ($emailIsEntreprise) {
                    $hashed_password = $this->entrepriseModel->hashed_password_entreprise_email($email);
                } else {
                    $hashed_password = $this->userModel->hashed_password_user_email($email);
                }

                if (!password_verify($mdp, $hashed_password)) {
                    $errors[] = "Mot de passe incorrect !";
                }
            }
    
            if (empty($errors)) {
                if ($emailIsEntreprise) {
                    $companyId = $this->entrepriseModel->get_company_id($email);
                    $_SESSION['role'] = 'entreprise';
                    $_SESSION['companyId'] = $companyId;
                    header('Location: /entreprise_dashboard');
                    exit;
                } else {
                    $userId = $this->userModel->get_user_id($email);
                    $_SESSION['userId'] = $userId;
                    $_SESSION['role'] = $this->userModel->get_user_role($userId);
                    if ($_SESSION['role'] === 'etudiant') {
                        header('Location: /student_dashboard');
                    } elseif ($_SESSION['role'] === 'admin') {
                        header('Location: /');
                    } elseif ($_SESSION['role'] === 'pilote') {
                        header('Location: /pilote_dashboard');
                    }
                    exit;
                }
            }
        } else {
            $errors = ['mdp ou email non envoyé'];
        }
    
        echo $this->twig->render('login.twig', [
            'login' => false,
            'errors' => $errors,
            'post' => $_POST
        ]);
    }

    function create_account() {
        $errors = [];
    
        if (isset($_POST['prenom'], $_POST['nom'], $_POST['mdp'], $_POST['email'], $_POST['type_compte'], $_POST['mdp_confirm'])) {

            $email = $_POST['email'];
            $nom = $_POST['nom'];
            $nom = $this->punisher->sanitize($nom);
            $prenom = $_POST['prenom'];
            $prenom = $this->punisher->sanitize($prenom);
            $type_compte = $_POST['type_compte'];
            $password = $_POST['mdp'];
            $password_confirm = $_POST['mdp_confirm'];

            $emailResult = $this->punisher->isEmail($email);
            if($emailResult !== true){
                $errors[] = $emailResult;
            }

            
            if ($this->userModel->user_exist_email($email) || $this->entrepriseModel->entreprise_exist_email($email)) {
                $errors[] = "Un compte existe déjà avec cette adresse email, connectez vous.";
            }


            if(strlen($nom) <= 0){
                $errors[] = "Le nom ne peut pas être vide.";
            }
            if(strlen($nom) > 50){
                $errors[] = "Le nom ne peut pas dépasser 50 caractères.";
            }
            if($type_compte != 'entreprise') {
                if(strlen($prenom) <= 0){
                    $errors[] = "Le prénom ne peut pas être vide.";
                }
                if(strlen($prenom) > 50){
                    $errors[] = "Le prénom ne peut pas dépasser 50 caractères.";
                }
            }
            if(strlen($email) <= 0){
                $errors[] = "L'email ne peut pas être vide.";
            }
            if(strlen($email) > 50){
                $errors[] = "L'email ne peut pas dépasser 50 caractères.";
            }
            if(strlen($password) > 50){
                $errors[] = "Le mot de passe ne doit pas dépasser 50 caractères.";
            }
            if(strlen($password) < 4){
                $errors[] = "Le mot de passe doit avoir au moins 4 caractères.";
            }
            if(!preg_match('/[0-9]/', $password)){
                $errors[] = "Le mot de passe doit contenir au moins 1 chiffre.";
            }
            if(!preg_match('/[^a-zA-Z0-9]/', $password)){
                $errors[] = "Le mot de passe doit contenir au moins 1 caractère spécial.";
            }
            if ($password !== $password_confirm) {
                $errors[] = "Les mots de passe ne correspondent pas.";
            }


            $password_hash = password_hash($password, PASSWORD_DEFAULT);

            if (empty($type_compte)) {
                $errors[] = "Veuillez choisir un type de compte.";
            }

            if (empty($errors)) {
                if ($type_compte != 'entreprise') {
                    $userId = $this->userModel->create_user($email, $password_hash, $nom, $prenom, $type_compte);
                    $_SESSION['userId'] = $userId;
                    $_SESSION['role'] = $type_compte;
                    if ($_SESSION['role'] === 'etudiant') {
                        header('Location: /student_dashboard');
                    } elseif ($_SESSION['role'] === 'admin') {
                        header('Location: /');
                    } elseif ($_SESSION['role'] === 'pilote') {
                        header('Location: /pilote_dashboard');
                    }
                    exit;
                } else {
                    $companyId = $this->entrepriseModel->create_entreprise($nom, $email, $password_hash);
                    $_SESSION['companyId'] = $companyId;
                    $_SESSION['role'] = 'entreprise';
                    header('Location: /entreprise_dashboard');
                    exit;
                }
            }
        }
    
        echo $this->twig->render('login.twig', [
            'login' => true,
            'errors' => $errors,
            'post' => $_POST
        ]);
    }

    function logout(){
        $_SESSION = array();
        header('Location: /');
        exit;
    }

    function renderSignInPage(){
        echo $this->twig->render('login.twig', ['login'=>false, 'post'=>[]]);
    }
    function renderSignUpPage(){
        echo $this->twig->render('login.twig', ['login'=>true, 'post'=>[]]);
    }
}