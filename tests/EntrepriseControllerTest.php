<?php

use PHPUnit\Framework\TestCase;
use App\Controller\EntrepriseController;


class EntrepriseControllerTest extends TestCase
{
    public function testGetEntreprise()
    {
        $controller = new EntrepriseController();
        $response = $controller->getEntreprise(1);
        $this->assertEquals(200, $response->getStatusCode());
        $data = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('id', $data);
        $this->assertArrayHasKey('name', $data);
    }
}