<?php

namespace App\Controller;

use App\Model\SearchModel;


class SearchController extends Controller{

    private $searchModel;

    function __construct(){
        parent::__construct();
        $this->searchModel = new SearchModel();
    }

    function renderSearchPage($jobs, $locations, $dist, $lat, $lng){ // $params 
        echo $this->twig->render('recherche_offre.twig.html');
    }
}