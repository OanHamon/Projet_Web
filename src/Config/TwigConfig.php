<?php
namespace App\Config;

use Twig\Environment;
use Twig\Loader\FilesystemLoader;

class TwigConfig
{
    public static function init(): Environment
    {
        $loader = new FilesystemLoader(__DIR__ . '/../../templates');
        
        $twig = new Environment($loader, [
            'cache' => false, // mettre __DIR__ . '/../../cache' en prod
            'debug' => true,
        ]);

        return $twig;
    }
}