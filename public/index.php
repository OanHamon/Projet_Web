<?php

namespace App\Controller;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';

use App\Router\Router;
use App\Controller\{HomeController,OffreController,EntrepriseController,UserController};


$routeur = new Router();
$routeur->add('GET','/',[HomeController::class, 'renderHomePage']);
$routeur->add('GET','/offre/{id}',[OffreController::class, 'renderOffrePage']);
$routeur->add('GET','/entreprise/{id}',[EntrepriseController::class, 'renderEntreprisePage']);
$routeur->add('GET','/dashboard',[UserController::class, 'renderStudentDashboardPage']);
$routeur->add('GET','/search',[SearchController::class, 'renderSearchPage']);
$routeur->add('POST','/dashboard/updateinfo',[UserController::class, 'updateUserInfo']);
$routeur->add('POST','/dashboard/deleteaccount',[UserController::class, 'deleteAccount']);
$routeur->add('POST','/wishlist/add',[UserController::class, 'addInWishlist']);
$routeur->add('POST','/wishlist/delete',[UserController::class, 'deleteInWishlist']);

$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];     

$routeur->dispatch($method,$url);
