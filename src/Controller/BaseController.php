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
        $this->view->render('welcome');
    }

}
