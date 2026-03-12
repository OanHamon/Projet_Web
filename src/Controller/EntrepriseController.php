<?php

namespace App\Controller;

use App\Model\EntrepriseModel;

class EntrepriseController extends Controller{

    private $entrepriseModel;

    function __construct(){
        parent::__construct();
        $this->entrepriseModel = new EntrepriseModel();
    }

    function renderEntreprisePage($id){
        $entreprise = $this->entrepriseModel->getById($id);
        $offres = $this->entrepriseModel->getOffres($id);
        $competences = $this->entrepriseModel->getCompetences($id);

        echo $this->twig->render('vitrine_entreprise.twig.html',['entreprise'=>$entreprise, 'offres'=>$offres, 'competences'=>$competences]);
    }
}