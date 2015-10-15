<?php

namespace Foo\Bar\Tests;

use Foo\Bar\Baz;

class BazTest extends \PHPUnit_Framework_TestCase
{
    public function testQuz()
    {
        $baz = new Baz();

        $this->assertEquals('quz', $baz->quz());
    }
}
