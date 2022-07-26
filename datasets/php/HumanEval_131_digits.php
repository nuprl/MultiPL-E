<?php
// Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
function digits($n) {
    $result = 1;
    $n = strval($n);
    for ($i = 0; $i < strlen($n); $i++) {
        if (intval($n[$i]) % 2 != 0) {
            $result *= intval($n[$i]);
        }
    }
    return $result;
}


function candidate(...$args) {
    return digits(...$args);
}

function test(): void {
    if (candidate(5) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(54) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(120) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(5014) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(98765) !== 315) { throw new Exception("Test failed!"); }
    if (candidate(5576543) !== 2625) { throw new Exception("Test failed!"); }
    if (candidate(2468) !== 0) { throw new Exception("Test failed!"); }
}

test();