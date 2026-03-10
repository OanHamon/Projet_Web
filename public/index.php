<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';

echo "<br><h1>Test des namespaces</h1>";

use App\Model\OffreModel;
use App\Config\TwigConfig;


echo "Namespace importer avec succès";

echo "<br><h1>Test accès bdd</h1>";

$baseModel = new OffreModel();

print_r($baseModel->find([
    "remuneration" => "1000",
    "localisation" => "Paris",
]));

echo "BDD connecté et accessible";

$twig = TwigConfig::init();

echo "<br><h1>Test de Twig</h1>";
echo $twig->render('test.twig.html', ['message' => 'Twig fonctionne !']);

