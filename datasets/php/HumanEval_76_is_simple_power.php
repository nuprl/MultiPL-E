<?php
// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
function is_simple_power($x, $n) {
    $x = pow($n, intval(log($x, $n)));
    return $x == $x;
}

$x = is_simple_power(1, 4);
echo $x;

function candidate(...$args) {
    return is_simple_power(...$args);
}

function test(): void {
    if (candidate(16, 2) !== true) { throw new Exception("Test failed!"); }
    if (candidate(143214, 16) !== false) { throw new Exception("Test failed!"); }
    if (candidate(4, 2) !== true) { throw new Exception("Test failed!"); }
    if (candidate(9, 3) !== true) { throw new Exception("Test failed!"); }
    if (candidate(16, 4) !== true) { throw new Exception("Test failed!"); }
    if (candidate(24, 2) !== false) { throw new Exception("Test failed!"); }
    if (candidate(128, 4) !== false) { throw new Exception("Test failed!"); }
    if (candidate(12, 6) !== false) { throw new Exception("Test failed!"); }
    if (candidate(1, 1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(1, 12) !== true) { throw new Exception("Test failed!"); }
}

test();