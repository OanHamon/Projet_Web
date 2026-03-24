<?php

namespace App\Controller;

use App\Model\{OffreModel, EntrepriseModel, StatsModel};

class HomeController extends Controller{

    private $offreModel;
    private $entrepriseModel;
    private $statsModel;

    function __construct(){
        parent::__construct();
        $this->offreModel = new OffreModel();
        $this->entrepriseModel = new EntrepriseModel();
        $this->statsModel = new StatsModel();
    }

    function renderHomePage(){
        $offres = $this->offreModel->getAllWithEntreprise();
        $entreprises = $this->entrepriseModel->getAll();
        $stats = $this->statsModel->getAllStats();

        $candidatures7days = $stats['candidatures_7days'];
        var_dump($candidatures7days);
        $max = 1;
        foreach($candidatures7days as $jour){
            if($jour['count'] > $max) $max = $jour['count'];
        }
        echo $this->twig->render('home.twig.html', ['offres'=>$offres, 'entreprises'=>$entreprises,'stats'=>$stats,'candidatures_max' => $max]);
    }
    function renderMentionsLegalesPage(){
        echo $this->twig->render('mentions.twig.html');
    }

}