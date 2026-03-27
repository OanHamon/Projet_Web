<?php

use PHPUnit\Framework\TestCase;
use App\Controller\EntrepriseController;


class EntrepriseControllerTest extends TestCase
{


    public function testdownloadfile()
    {
        $controller = new EntrepriseController();
        $response = $controller->downloadfile(1);
        $this->assertEquals(200, $response->getStatusCode());
        $this->assertTrue($response->headers->contains('Content-Type', 'application/pdf'));
    }

    public function testdeleteOffre(){
        $controller = new EntrepriseController();
        $response = $controller->deleteOffre(1);
        $this->assertEquals(200, $response->getStatusCode());
    }
}