<?php
namespace App\Router;

class Router
{
    private array $routes = []; // stocker les routes

    public function add(string $method, string $path, array $action): void
    {
        // ajouter une route dans le tableau
        $this->routes[] = [
            'method' => $method,
            'path'   => $path,
            'action' => $action,
        ];
    }

    public function dispatch(string $method, string $url): void
    {
        // parcourir les routes et trouver la bonne
        foreach ($this->routes as $route) {
            if ($route['method'] === $method && $route['path'] === $url) {
                [$controllerClass, $action] = $route['action'];
                $controller = new $controllerClass();
                $controller->$action();
                return;
            }

        }
        
        echo "404 NOT FOUND";
        return;
    }
}