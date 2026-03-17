<?php

namespace App\Controller;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';

use App\Router\Router;
use App\Controller\{HomeController,OffreController,EntrepriseController,UserController};

session_start();

$routeur = new Router();

// === HOME ===
$routeur->add('GET','/',[HomeController::class, 'renderHomePage']);

// === Offre ===
$routeur->add('GET','/formulaire/{id}',[OffreController::class, 'renderFormulaire']);
$routeur->add('GET','/offre/{id}',[OffreController::class, 'renderOffrePage']);

// === Entreprise ===
$routeur->add('GET','/entreprise/{id}',[EntrepriseController::class, 'renderEntreprisePage']);
$routeur->add('POST','/entreprise/{id}/rate',[EntrepriseController::class, 'manageNotation']);

// === User ===
$routeur->add('GET','/dashboard',[UserController::class, 'renderStudentDashboardPage']);
$routeur->add('POST','/dashboard/updateinfo',[UserController::class, 'updateUserInfo']);
$routeur->add('POST','/dashboard/deleteaccount',[UserController::class, 'deleteAccount']);
$routeur->add('POST','/wishlist/add',[UserController::class, 'addInWishlist']);
$routeur->add('POST','/wishlist/delete',[UserController::class, 'deleteInWishlist']);
$routeur->add('POST','/candidater/{id}',[UserController::class, 'candidaterOffre']);

// === Search ===

$routeur->add('GET','/search',[SearchController::class, 'renderSearchPage']);

// === Other Page ===
$routeur->add('GET','/mentionslegales',[HomeController::class, 'renderMentionsLegalesPage']);

// === Auth ===

$routeur->add('GET','/signup',[AuthController::class, 'renderSignUpPage']);
$routeur->add('GET','/signin',[AuthController::class, 'renderSignInPage']);
$routeur->add('POST','/inscription',[AuthController::class, 'create_account']);
$routeur->add('POST','/login',[AuthController::class, 'login']);
$routeur->add('GET','/logout',[AuthController::class, 'logout']);


$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];     

$routeur->dispatch($method,$url);
