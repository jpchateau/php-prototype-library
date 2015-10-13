<?php

namespace MyVendor\MyLibrary\Tests;

use MyVendor\MyLibrary\Foo;

class FooTest extends \PHPUnit_Framework_TestCase
{
    public function testBar()
    {
        $foo = new Foo();

        $this->assertEquals('bar', $foo->bar());
    }
}
