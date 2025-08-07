<?php

declare(strict_types=1);

namespace Tests\Unit;

use DenisKorbakov\SkeletonPhpDocker\Example;

mutates(Example::class);

test('foo', function (): void {
    $example = new Example();

    $result = $example->foo();

    expect($result)->toBe('bar');
});
