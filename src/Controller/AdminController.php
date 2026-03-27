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

    function renderAdminDashboard(){
        $users = $this->userModel->getAll();
        $entreprises = $this->entrepriseModel->getAll();

        echo $this->twig->render('admin_dashboard.twig', [ 'users' => $users , 'entreprises' => $entreprises ]);
    }

    
}