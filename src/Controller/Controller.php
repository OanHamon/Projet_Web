<?php
namespace App\Controller;

use App\Config\TwigConfig;
use Twig\Environment;

abstract class Controller
{
    protected $model = null;
    protected Environment $twig;

    public function __construct()
    {
        $this->twig = TwigConfig::init();
        $this->twig->addGlobal('session', $_SESSION);
    }
}






















?>