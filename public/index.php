<?php

namespace App\Controller;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';

use App\Router\Router;

session_start();

$routeur = new Router();

// === HOME ===
$routeur->add('GET','/',[HomeController::class, 'renderHomePage']);

// === Offre ===
$routeur->add('GET','/formulaire/{id}',[OffreController::class, 'renderFormulaire']);
$routeur->add('GET','/offre/{id}',[OffreController::class, 'renderOffrePage']);

// === Entreprise ===
$routeur->add('GET','/entreprise_dashboard',[EntrepriseController::class, 'renderEntrepriseDashboardPage']);
$routeur->add('GET','/entreprise_dashboard/showdata',[EntrepriseController::class, 'renderEntrepriseDashboardPage']);
//$routeur->add('POST','/entreprise_dashboard/candidat',[EntrepriseController::class, 'showCandidatData']);
$routeur->add('POST','/entreprise_dashboard/update_offre_info',[EntrepriseController::class, 'updateOffreInfo']);
$routeur->add('POST','/entreprise_dashboard/delete_offre',[EntrepriseController::class, 'deleteOffre']);
$routeur->add('POST','/entreprise_dashboard/create_offre',[EntrepriseController::class, 'createOffre']);
$routeur->add('POST','/entreprise_dashboard/updateinfo',[EntrepriseController::class, 'updateEntrepriseInfo']);
$routeur->add('POST','/entreprise_dashboard/deleteaccount',[EntrepriseController::class, 'deleteAccount']);
$routeur->add('GET','/entreprise/{id}',[EntrepriseController::class, 'renderEntreprisePage']);
$routeur->add('POST','/entreprise/{id}/rate',[EntrepriseController::class, 'manageNotation']);

// === User ===
$routeur->add('GET','/student_dashboard',[UserController::class, 'renderStudentDashboardPage']);
$routeur->add('POST','/student_dashboard/updateinfo',[UserController::class, 'updateUserInfo']);
$routeur->add('POST','/student_dashboard/deleteaccount',[UserController::class, 'deleteAccount']);
$routeur->add('POST','/wishlist/add',[UserController::class, 'addInWishlist']);
$routeur->add('POST','/wishlist/delete',[UserController::class, 'deleteInWishlist']);
$routeur->add('POST','/candidater/{id}',[UserController::class, 'candidaterOffre']);
$routeur->add('GET','/pilote_dashboard',[UserController::class, 'renderPiloteDashboardPage']);
$routeur->add('POST','/pilote_dashboard/updateinfo',[UserController::class, 'updatePiloteInfo']);

// === Search ===

$routeur->add('GET',  '/search', [SearchController::class, 'renderSearchPage']);
$routeur->add('POST', '/search', [SearchController::class, 'renderSearchPage']);

// === Other Page ===
$routeur->add('GET','/mentionslegales',[HomeController::class, 'renderMentionsLegalesPage']);
$routeur->add('GET','/error',[ErrorController::class, 'renderErrorPage']);
$routeur->add('GET','/validation',[HomeController::class, 'renderValidationPage']);


// === Auth ===

$routeur->add('GET','/signup',[AuthController::class, 'renderSignUpPage']);
$routeur->add('GET','/signin',[AuthController::class, 'renderSignInPage']);
$routeur->add('POST','/inscription',[AuthController::class, 'create_account']);
$routeur->add('POST','/login',[AuthController::class, 'login']);
$routeur->add('GET','/logout',[AuthController::class, 'logout']);

$routeur->add('GET','/hash',[HomeController::class, 'renderHashPage']);
$routeur->add('POST','/hashed',[HomeController::class, 'renderHashPage']);


$routeur->add('GET','/download',[EntrepriseController::class, 'downloadFile']);



$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];     

$routeur->dispatch($method,$url);
