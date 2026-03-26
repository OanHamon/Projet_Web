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
        $max = 1;
        foreach($candidatures7days as $jour){
            if($jour['count'] > $max) $max = $jour['count'];
        }
        echo $this->twig->render('home.twig', ['offres'=>$offres, 'entreprises'=>$entreprises,'stats'=>$stats,'candidatures_max' => $max]);
    }

    function renderMentionsLegalesPage(){
        echo $this->twig->render('mentions.twig');
    }

    function renderErrorPage(){
        echo $this->twig->render('error.twig');
    }

    public function renderHashPage(){
        echo '<form method="POST" action="/hashed">
            <label for="mdp">Mot de passe :</label>
            <input type="text" id="mdp" name="mdp">
            <button type="submit">Submit</button>
        </form>';
        if (isset($_POST['mdp'])) {
            echo password_hash($_POST['mdp'], PASSWORD_DEFAULT);
        }
    }

    public function renderValidationPage(){
        echo $this->twig->render('validation.twig');
    }
}