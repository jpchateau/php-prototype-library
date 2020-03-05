<?php

namespace Foo\Bar\Tests;

use Foo\Bar\Baz;
use PHPUnit\Framework\TestCase;

class BazTest extends TestCase
{
    public function testQuz()
    {
        $baz = new Baz();

        $this->assertEquals('quz', $baz->quz());
    }
}
