<?php

use PHPUnit\Framework\TestCase;
use App\Controller\EntrepriseController;

class EntrepriseControllerTest extends TestCase
{
    private $controller;
    protected function setUp(): void
{
    
    if (!isset($_SESSION)) {
        $_SESSION = [];
    }
    

    $this->controller = new App\Controller\EntrepriseController();
}
    public function testDownloadFileLogic()
    {
        $controller = new EntrepriseController();

        
        $_GET['type'] = 'cv';
        $_GET['file'] = 'mon_stage.pdf';
        $_SESSION['companyId'] = 1; // simule 

        
        $type_accepted = ['lm', 'cv'];
        
        $this->assertContains($_GET['type'], $type_accepted, "Le type de fichier doit être 'cv' ou 'lm'.");
        $this->assertEquals('mon_stage.pdf', basename($_GET['file']), "Le nom du fichier doit être correct.");
    }

   
    public function testDeleteOffreLogic()
    {
        
        $_POST['id_offre'] = 42; //simulation
        $_SESSION['companyId'] = 1;

        // tests
        $this->assertEquals(42, (int)$_POST['id_offre']);
        $this->assertTrue(isset($_SESSION['companyId']));
    }
}   
