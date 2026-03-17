<?php

namespace App\Controller;

use App\Model\SearchModel;


class SearchController extends Controller{

    private $searchModel;

    function __construct(){
        parent::__construct();
        $this->searchModel = new SearchModel();
    }

    public function renderSearchPage() {
        // Si aucune donnée envoyée en POST, afficher la page de base (vide)
        if (empty($_POST)) {
            echo $this->twig->render('recherche_offre.twig.html', [
                'dist'          => 50,
                'lat'           => 0,
                'lng'           => 0,
                'selected_jobs' => [],
                'jobs'          => []
            ]);
            return;
        }

        // 1. Récupération des données du formulaire (POST)
        $dist = isset($_POST['dist']) ? $_POST['dist'] : 50;
        $lat  = isset($_POST['lat']) ? $_POST['lat'] : 0;
        $lng  = isset($_POST['lng']) ? $_POST['lng'] : 0;

        // 2. Récupération et nettoyage du tableau de métiers
        $jobList = isset($_POST['job']) ? array_filter((array)$_POST['job']) : [];

        // 3. Exécution de la recherche via le modèle
        $jobs = [];

        // On ne lance la recherche que si l'utilisateur a interagi (position ou métier)
        if (($lat != 0 && $lng != 0) || !empty($jobList)) {
            // Choix de la méthode de recherche selon la présence des jobs
            if (!empty($jobList)) {
                $jobs = $this->searchModel->searchOffre($dist, $lat, $lng, $jobList);
            } else {
                $jobs = $this->searchModel->searchOffre($dist, $lat, $lng);
            }
        }

        // 4. Rendu de la page avec les données filtrées et les résultats
        echo $this->twig->render('recherche_offre.twig.html', [
            'dist'          => $dist,
            'lat'           => $lat,
            'lng'           => $lng,
            'selected_jobs' => $jobList,
            'jobs'          => $jobs
        ]);
    }
}