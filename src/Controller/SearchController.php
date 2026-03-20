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

        $dist = (!empty($_POST['dist'])) ? (int)$_POST['dist'] : '';
        
        $lat  = isset($_POST['lat']) ? $_POST['lat'] : 0;
        $lng  = isset($_POST['lng']) ? $_POST['lng'] : 0;

        $key_words = isset($_POST['key_words']) ? (array)$_POST['key_words'] : [];
        $key_words = array_filter($key_words, fn($value) => !empty(trim($value)));
        
        $offres = $this->searchModel->searchOffre($dist, $lat, $lng, $key_words);

        echo $this->twig->render('recherche_offre.twig.html', [
            'dist'              => $dist,
            'lat'               => $lat,
            'lng'               => $lng,
            'selected_keywords' => array_values($key_words), // Réindexe le tableau proprement
            'offres'            => $offres
        ]);
    }
}