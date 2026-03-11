<?php


class BaseController extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->model = new OffreModel();
    }
    
    public function welcomepage()
    {
        $tasks = $this->model->getAllTasks();   
        $this->twig->render('home.twig.html', ['tasks' => $tasks]);
    }

}
