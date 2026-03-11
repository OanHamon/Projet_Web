<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once __DIR__ . '/../vendor/autoload.php';


use App\Router\Router;

$routeur = new Router();

$routeur->add('GET','/test',[Controller::class, 'printTest']);

$url    = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH); // "/offres"
$method = $_SERVER['REQUEST_METHOD'];     

$routeur->dispatch($method,$url);
