<?php



ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';


use App\Router\Router;
use App\Controller\{HomeController,OffreController,EntrepriseController};


$routeur = new Router();
$routeur->add('GET','/',[HomeController::class, 'renderHomePage']);
$routeur->add('GET','/offre/{id}',[OffreController::class, 'renderOffrePage']);
$routeur->add('GET','/entreprise/{id}',[EntrepriseController::class, 'renderEntreprisePage']);

$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];     

$routeur->dispatch($method,$url);
