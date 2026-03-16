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
            $pattern = preg_replace('/{id}/', '(\d+)', $route['path']);
            $pattern = '#^' . $pattern . '$#';

            if ($route['method'] === $method && preg_match($pattern, $url, $matches)) {
                [$controllerClass, $action] = $route['action'];
                $controller = new $controllerClass();
                
                array_shift($matches);
                $controller->$action(...$matches);
                return;
            }
        }

        http_response_code(404);
        echo "404 NOT FOUND";
    }
}