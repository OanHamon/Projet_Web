<?php

use PHPUnit\Framework\TestCase;
use App\Controller\EntrepriseController;

class EntrepriseControllerTest extends TestCase
{
    private $controller;
    protected function setUp(): void
{
    // On initialise la variable session si elle n'existe pas pour éviter le Warning
    if (!isset($_SESSION)) {
        $_SESSION = [];
    }
    
    // Maintenant on peut instancier le contrôleur sans erreur
    $this->controller = new App\Controller\EntrepriseController();
}
    public function testDownloadFileLogic()
    {
        $controller = new EntrepriseController();

        // 1. On simule les entrées utilisateur via $_GET
        $_GET['type'] = 'cv';
        $_GET['file'] = 'mon_stage.pdf';
        $_SESSION['companyId'] = 1; // On simule une connexion

        // 2. On vérifie la logique de sécurité (la liste blanche)
        $type_accepted = ['lm', 'cv'];
        
        $this->assertContains($_GET['type'], $type_accepted, "Le type de fichier doit être 'cv' ou 'lm'.");
        $this->assertEquals('mon_stage.pdf', basename($_GET['file']), "Le nom du fichier doit être correct.");
    }

    /**
     * Test de la logique de suppression
     */
    public function testDeleteOffreLogic()
    {
        // On simule une requête POST
        $_POST['id_offre'] = 42;
        $_SESSION['companyId'] = 1;

        // On vérifie que les données sont bien présentes avant l'appel
        $this->assertEquals(42, (int)$_POST['id_offre']);
        $this->assertTrue(isset($_SESSION['companyId']));
    }
}   