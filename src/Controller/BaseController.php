<?php

use App\Controller\Controller;
use App\Model\OffreModel;

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

    public function about()
    {
        $this->twig->render('about.twig.html');
    }

    public function contact()
    {
        $this->twig->render('contact.twig.html');
    }

}
