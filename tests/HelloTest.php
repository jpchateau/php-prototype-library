<?php

namespace MyCompany\MyProject\Tests;

use MyCompany\MyProject\Hello;
use PHPUnit\Framework\TestCase;

class HelloTest extends TestCase
{
    public function testSay()
    {
        $hello = new Hello();

        $this->assertEquals('Hello World', $hello->say('World'));
    }
}
