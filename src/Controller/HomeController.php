<?php

namespace App\Controller;

use App\Model\{OffreModel, EntrepriseModel};

class HomeController extends Controller{

    private $offreModel;
    private $entrepriseModel;

    function __construct(){
        parent::__construct();
        $this->offreModel = new OffreModel();
        $this->entrepriseModel = new EntrepriseModel();
    }

    function renderHomePage(){
        $offres = $this->offreModel->getAllWithEntreprise();
        $entreprises = $this->entrepriseModel->getAll();

        echo $this->twig->render('home.twig.html', ['offres'=>$offres, 'entreprises'=>$entreprises]);
    }
    function renderMentionsLegalesPage(){
        echo $this->twig->render('mentions.twig.html');
    }

}