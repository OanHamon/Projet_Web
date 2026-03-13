<?php

namespace App\Controller;


class SearchController extends Controller{

    function __construct(){
        parent::__construct();
    }

    function renderSearchPage(){
        echo $this->twig->render('recherche_offre.twig.html');
    }
}