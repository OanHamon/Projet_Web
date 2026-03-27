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
        if (($_SERVER['REQUEST_METHOD'] ?? 'GET') === 'POST') {
            $key_wordsRaw = $_POST['key_words'] ?? [];
            $key_words = is_array($key_wordsRaw) ? $key_wordsRaw : [$key_wordsRaw];
            $key_words = array_filter($key_words, fn($value) => !empty(trim((string)$value)));

            $query = [];
            if (isset($_POST['dist']) && $_POST['dist'] !== '') $query['dist'] = (int)$_POST['dist'];
            if (isset($_POST['lat']) && $_POST['lat'] !== '') $query['lat'] = (float)$_POST['lat'];
            if (isset($_POST['lng']) && $_POST['lng'] !== '') $query['lng'] = (float)$_POST['lng'];
            if (!empty($key_words)) $query['key_words'] = array_values($key_words);

            $qs = http_build_query($query);
            header('Location: /search' . ($qs !== '' ? '?' . $qs : ''));
            exit;
        }

        // GET : lecture des paramètres dans l'URL (pas de prompt de resoumission).
        $distRaw = $_GET['dist'] ?? null;
        $dist = ($distRaw !== null && $distRaw !== '') ? (int)$distRaw : null;

        $latRaw = $_GET['lat'] ?? null;
        $lngRaw = $_GET['lng'] ?? null;
        $lat = ($latRaw !== null && $latRaw !== '') ? (float)$latRaw : 0;
        $lng = ($lngRaw !== null && $lngRaw !== '') ? (float)$lngRaw : 0;

        $key_wordsRaw = $_GET['key_words'] ?? [];
        $key_words = is_array($key_wordsRaw) ? $key_wordsRaw : [$key_wordsRaw];
        $key_words = array_filter($key_words, fn($value) => !empty(trim((string)$value)));

        // Séparer les mots-clés contenant des espaces en plusieurs mots pour la recherche GET
        $all_keywords = [];
        foreach ($key_words as $kw) {
            foreach (preg_split('/\s+/u', trim((string)$kw)) as $word) {
                if ($word !== '') $all_keywords[] = $word;
            }
        }
        $key_words = $all_keywords;

        $offres = $this->searchModel->searchOffre($dist, $lat, $lng, array_values($key_words));

        echo $this->twig->render('recherche_offre.twig', [
            'dist'              => $dist,
            'lat'               => $lat,
            'lng'               => $lng,
            'selected_keywords' => array_values($key_words), // Réindexe le tableau proprement
            'offres'            => $offres
        ]);
    }
}