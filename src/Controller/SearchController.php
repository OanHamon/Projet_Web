<?php

namespace App\Controller;

use App\Model\SearchModel;

class SearchController extends Controller {

    private $searchModel;

    function __construct() {
        parent::__construct();
        $this->searchModel = new SearchModel();
    }

    public function renderSearchPage() {
        // Si aucune donnée envoyée en POST, afficher la page de base
        if (empty($_POST)) {
            echo $this->twig->render('recherche_offre.twig.html', [
                'dist'              => null,
                'lat'               => 0,
                'lng'               => 0,
                'selected_keywords' => [],
                'offres'            => []
            ]);
            return;
        }

        // 1. Récupération et nettoyage de la distance
        // On vérifie si c'est présent ET non vide, sinon 50 par défaut
        $dist = (!empty($_POST['dist'])) ? (int)$_POST['dist'] : null;
        
        $lat  = isset($_POST['lat']) ? $_POST['lat'] : 0;
        $lng  = isset($_POST['lng']) ? $_POST['lng'] : 0;

        // 2. Récupération et nettoyage des mots-clés
        // array_filter sans callback supprime automatiquement les valeurs vides/nulles
        $key_words = isset($_POST['key_words']) ? array_filter((array)$_POST['key_words']) : [];

        // 3. Recherche des offres
        $offres = [];
        
        $offres = $this->searchModel->searchOffre($dist, $lat, $lng, $key_words);
        

        // 4. Rendu de la page
        echo $this->twig->render('recherche_offre.twig.html', [
            'dist'              => $dist,
            'lat'               => $lat,
            'lng'               => $lng,
            'selected_keywords' => array_values($key_words), // Réindexe le tableau proprement
            'offres'            => $offres
        ]);
    }
}