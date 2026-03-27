<?php
namespace App\Controller;

use App\Config\TwigConfig;
use Twig\Environment;
use App\Punisher\Punisher;

abstract class Controller
{
    protected $model = null;
    protected Environment $twig;
    protected $punisher;

    public function __construct()
    {
        $this->twig = TwigConfig::init();
        $this->twig->addGlobal('session', $_SESSION);
        $this->punisher = new Punisher();
    }

    protected function getErrors(){
        $errors = [];
        if(isset($_SESSION['flash_error'])){
            $errors = $_SESSION['flash_error'];
            unset($_SESSION['flash_error']);
        }
        return $errors;
    }
}






















?>