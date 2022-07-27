<?php
// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
function any_int($x, $y, $z) {
    if (is_int($x) && is_int($y) && is_int($z)) {
        if ($x + $y == $z || $x + $z == $y || $y + $z == $x) {
            return true;
        }
    }
    return false;
}

echo any_int(5, 2, 7) . PHP_EOL;
echo any_int(3, 2, 2) . PHP_EOL;
echo any_int(3, -2, 1) . PHP_EOL;
echo any_int(3.6, -2.2, 2) . PHP_EOL;

function candidate(...$args) {
    return any_int(...$args);
}

function test(): void {
    if (candidate(2, 3, 1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(2.5, 2, 3) !== false) { throw new Exception("Test failed!"); }
    if (candidate(1.5, 5, 3.5) !== false) { throw new Exception("Test failed!"); }
    if (candidate(2, 6, 2) !== false) { throw new Exception("Test failed!"); }
    if (candidate(4, 2, 2) !== true) { throw new Exception("Test failed!"); }
    if (candidate(2.2, 2.2, 2.2) !== false) { throw new Exception("Test failed!"); }
    if (candidate(-4, 6, 2) !== true) { throw new Exception("Test failed!"); }
    if (candidate(2, 1, 1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(3, 4, 7) !== true) { throw new Exception("Test failed!"); }
    if (candidate(3.0, 4, 7) !== false) { throw new Exception("Test failed!"); }
}

test();