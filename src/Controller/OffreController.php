<?php

namespace App\Controller;

use App\Model\OffreModel;

class OffreController extends Controller{

    private $offreModel;

    function __construct(){
        parent::__construct();
        $this->offreModel = new OffreModel();
    }

    function renderOffrePage($id){
        $offre = $this->offreModel->getById($id);
        $competences = $this->offreModel->getCompetences($id);
        $entreprise = $this->offreModel->getEntreprise($id);

        echo $this->twig->render('vitrine_stage.twig', ['offre'=>$offre,'entreprise'=>$entreprise,'competences'=>$competences]);
    }

    function renderFormulaire($id){
        $errors = $this->getErrors();
        $offre = $this->offreModel->getById($id);
        $competences = $this->offreModel->getCompetences($id);
        echo $this->twig->render('postuler_stage.twig',['offre'=>$offre,'competences'=>$competences, 'errors'=>$errors]);
    }
}