<?php
namespace App\Router;
use App\Controller;

class Router
{
    private array $routes = [];

    public function add(string $method, string $path, array $action): void
    {
        $this->routes[] = [
            'method' => $method,
            'path'   => $path,
            'action' => $action,
        ];
    }

    public function dispatch(string $method, string $url): void
    {

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