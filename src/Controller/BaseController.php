<?php


class Base extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->model = new TaskModel();
    }
    
    public function welcomepage()
    {
        $tasks = $this->model->getAllTasks();   
        $this->view->render('welcome', ['tasks' => $tasks]);
    }
    public function addTask(): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $title = $_POST['title'] ?? '';
            $description = $_POST['description'] ?? '';
            $this->model->addTask($title, $description);
            header('Location: /welcome');
            exit();
        }
    }
}
