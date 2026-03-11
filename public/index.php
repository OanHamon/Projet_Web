<?php

namespace App\Controller;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';

$controller = new BaseController();
$controller->welcomepage();


use App\Router\Router;
use App\Controller\HomeController;



$routeur->add('GET','/',[HomeController::class, 'renderHomePage']);

$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];     

