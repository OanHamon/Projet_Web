<?php

use App\Punisher\Punisher;
use PHPUnit\Framework\TestCase;

class PunisherTest extends TestCase {
    
    private $punisher; 

    protected function setUp(): void {
        $this->punisher = new Punisher();
    }

    public function testIsEmail(){
        $this->assertTrue($this->punisher->isEmail('test@example.com'));
        
        $this->assertStringContainsString('PUNISHED', $this->punisher->isEmail('invalid-email'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isEmail('test@'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isEmail(''));
    }

    public function testIsInt(){
        $this->assertTrue($this->punisher->isInt('123'));
        $this->assertTrue($this->punisher->isInt('0'));
        $this->assertTrue($this->punisher->isInt('-123'));
        
        $this->assertStringContainsString('PUNISHED', $this->punisher->isInt('abc'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isInt('12.5.6'));
    }

    public function testIsPositive() {
        $this->assertTrue($this->punisher->isPositive(1));
        $this->assertTrue($this->punisher->isPositive(10));
        $this->assertTrue($this->punisher->isPositive(999));
        
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPositive(0));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPositive(-1));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPositive(-100));
    }

    public function testIsPhoneNumber(){
        $this->assertTrue($this->punisher->isPhoneNumber('0123456789'));
        $this->assertTrue($this->punisher->isPhoneNumber('0612345678'));
        $this->assertTrue($this->punisher->isPhoneNumber('0987654321'));
        
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPhoneNumber('123456789'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPhoneNumber('01234567890'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPhoneNumber('061234567a'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isPhoneNumber(''));
    }

    public function testIsDateAfterToday(){
        $futureDate = date('Y-m-d', strtotime('+1 day'));
        $this->assertTrue($this->punisher->isDateAfterToday($futureDate));
        
        $pastDate = date('Y-m-d', strtotime('-1 day'));
        $this->assertStringContainsString('PUNISHED', $this->punisher->isDateAfterToday($pastDate));
        
        $today = date('Y-m-d');
        $this->assertStringContainsString('PUNISHED', $this->punisher->isDateAfterToday($today));
    }

    public function testIsDateRangeValid(){
        $startDate = date('Y-m-d', strtotime('+1 day'));
        $endDate = date('Y-m-d', strtotime('+2 days'));
        $this->assertTrue($this->punisher->isDateRangeValid($startDate, $endDate));
        
        $this->assertTrue($this->punisher->isDateRangeValid($startDate, $startDate));
        
        $this->assertStringContainsString('PUNISHED', $this->punisher->isDateRangeValid($endDate, $startDate));
    }

    public function testSanitize(){
        $this->assertEquals('test', $this->punisher->sanitize('test'));
        
        $this->assertEquals('test', $this->punisher->sanitize('  test  '));
        
        $this->assertEquals('test', $this->punisher->sanitize('<b>test</b>'));
        $this->assertEquals('hello world', $this->punisher->sanitize('<p>hello</p> <span>world</span>'));
        
        $this->assertEquals('', $this->punisher->sanitize('<script>'));
        $this->assertEquals('&amp;', $this->punisher->sanitize('&'));
        $this->assertEquals('&quot;test&quot;', $this->punisher->sanitize('"test"'));
        
        $this->assertEquals('test&amp;more', $this->punisher->sanitize('  <b>test</b>&more  '));
    }
}