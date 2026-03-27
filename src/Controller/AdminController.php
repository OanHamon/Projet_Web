<?php

namespace App\Controller;

use App\Model\UserModel;
use App\Model\EntrepriseModel;

class AdminController extends Controller{

    private $userModel;
    private $entrepriseModel;

    function __construct(){
        parent::__construct();
        $this->userModel = new UserModel();
        $this->entrepriseModel = new EntrepriseModel();
    }

    private function requireAdminAuth(){
        if(!isset($_SESSION['role']) || $_SESSION['role'] != 'admin'){
            header('Location: /error?error=404');
            exit();
        }
    }

    function renderAdminDashboard(){
        $this->requireAdminAuth();
        $users = $this->userModel->getAll();
        $entreprises = $this->entrepriseModel->getAll();

        echo $this->twig->render('admin_dashboard.twig', [ 'users' => $users , 'entreprises' => $entreprises ]);
    }

    function gotoEntreprise($id){
        $this->requireAdminAuth();
        $_SESSION['companyId'] = $id;
        header('Location: /entreprise_dashboard');
        exit();
    }

    function gotoUser($id){
        $this->requireAdminAuth();
        $_SESSION['userId'] = $id;
        header('Location: /student_dashboard');
        exit();
    }
    
}