<?php

namespace App\Controller;

use App\Model\{OffreModel, UserModel};

class OffreController extends Controller{

    private $offreModel;
    private $userModel;
    function __construct(){
        parent::__construct();
        $this->offreModel = new OffreModel();
        $this->userModel = new UserModel();
    }

    function renderOffrePage($id){
        $offre = $this->offreModel->getById($id);
        $competences = $this->offreModel->getCompetences($id);
        $entreprise = $this->offreModel->getEntreprise($id);

        echo $this->twig->render('vitrine_stage.twig', ['offre'=>$offre,'entreprise'=>$entreprise,'competences'=>$competences]);
    }

    function renderFormulaire($id){
        if (!isset($_SESSION['userId'])) {
            header('Location: /signin');
            exit;
        }
        $errors = $this->getErrors();
        $offre = $this->offreModel->getById($id);
        $competences = $this->offreModel->getCompetences($id);
        $user = $this->userModel->getById($_SESSION['userId']);
        echo $this->twig->render('postuler_stage.twig',['offre'=>$offre,'competences'=>$competences, 'errors'=>$errors, 'user'=>$user]);
    }
}