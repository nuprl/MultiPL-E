<?php
// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
function generate_integers($a, $b) {
    $result = [];
    for ($i = $a; $i <= $b; $i++) {
        if ($i % 2 == 0) {
            $result[] = $i;
        }
    }
    return $result;
}

$a = 2;
$b = 8;
$expected = [2, 4, 6, 8];
assert($expected == generate_integers($a, $b));

$a = 8;
$b = 2;
$expected = [2, 4, 6, 8];
assert($expected == generate_integers($a, $b));

$a = 10;
$b = 14;
$expected = [];
assert($expected == generate_integers($a, $b));

echo "OK";

function candidate(...$args) {
    return generate_integers(...$args);
}

function test(): void {
    if (candidate(2, 10) !== array(2, 4, 6, 8)) { throw new Exception("Test failed!"); }
    if (candidate(10, 2) !== array(2, 4, 6, 8)) { throw new Exception("Test failed!"); }
    if (candidate(132, 2) !== array(2, 4, 6, 8)) { throw new Exception("Test failed!"); }
    if (candidate(17, 89) !== array()) { throw new Exception("Test failed!"); }
}

test();