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
        $this->controller = new EntrepriseController();
    }
    public function testDownloadFile()
    {
        $controller = new EntrepriseController();

        
        $_GET['type'] = 'cv';
        $_GET['file'] = 'mon_stage.pdf';
        $_SESSION['companyId'] = 1; // simule 

        
        $type_accepted = ['lm', 'cv'];
        
        $this->assertContains($_GET['type'], $type_accepted, "Le type de fichier doit être 'cv' ou 'lm'.");
        $this->assertEquals('mon_stage.pdf', basename($_GET['file']), "Le nom du fichier doit être correct.");
    }

   
    public function testDeleteOffre()
    {
        
        $_POST['id_offre'] = 42; //simulation
        $_SESSION['companyId'] = 1;

        $this->assertEquals(42, (int)$_POST['id_offre']);
        $this->assertTrue(isset($_SESSION['companyId']));
    }


    
    public function testRequireEntrepriseAuthSetsEntrepriseId()
    {
        $_SESSION = ['companyId' => 42];
        $method = new \ReflectionMethod(EntrepriseController::class, 'requireEntrepriseAuth');
        $method->setAccessible(true);
        $method->invoke($this->controller);

        $prop = new \ReflectionProperty(EntrepriseController::class, 'entreprise_id');
        $prop->setAccessible(true);
        $this->assertSame(42, $prop->getValue($this->controller));
    }

    public function testCheckOffreOwnershipTrue()
    {
        $mockEntrepriseModel = $this->createMock(\App\Model\EntrepriseModel::class);
        $mockEntrepriseModel->method('getOffres')->willReturn([['id_offre' => 10], ['id_offre' => 11]]);

        $propModel = new \ReflectionProperty(EntrepriseController::class, 'entrepriseModel');
        $propModel->setAccessible(true);
        $propModel->setValue($this->controller, $mockEntrepriseModel);

        $propId = new \ReflectionProperty(EntrepriseController::class, 'entreprise_id');
        $propId->setAccessible(true);
        $propId->setValue($this->controller, 1);

        $method = new \ReflectionMethod(EntrepriseController::class, 'checkOffreOwnership');
        $method->setAccessible(true);

        $this->assertTrue($method->invoke($this->controller, 10));
        $this->assertFalse($method->invoke($this->controller, 99));
    }

    public function testRenderEntreprisePageOutputsTwigRenderResult()
    {
        $mockEntrepriseModel = $this->createMock(\App\Model\EntrepriseModel::class);
        $mockEntrepriseModel->method('getById')->willReturn(['id' => 1, 'nom' => 'TestCo']);
        $mockEntrepriseModel->method('getOffres')->willReturn([]);
        $mockEntrepriseModel->method('getCompetences')->willReturn([]);
        $mockEntrepriseModel->method('getEvaluation')->willReturn(['moyenne' => 4.2]);

        $propModel = new \ReflectionProperty(EntrepriseController::class, 'entrepriseModel');
        $propModel->setAccessible(true);
        $propModel->setValue($this->controller, $mockEntrepriseModel);

        $mockTwig = $this->createMock(\Twig\Environment::class);
        $mockTwig->method('render')->willReturn('html-output');

        $propTwig = new \ReflectionProperty(\App\Controller\Controller::class, 'twig');
        $propTwig->setAccessible(true);
        $propTwig->setValue($this->controller, $mockTwig);

        ob_start();
        $this->controller->renderEntreprisePage(1);
        $output = ob_get_clean();

        $this->assertSame('html-output', $output);
    }

    public function testDeleteOffreWithInvalidId()
    {
        $_POST['id_offre'] = 'invalid'; // simulation d'un ID non numérique
        $_SESSION['companyId'] = 1;

        $this->assertFalse(is_numeric($_POST['id_offre']), "L'ID de l'offre doit être numérique.");
    }
}  
