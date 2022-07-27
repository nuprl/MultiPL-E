<?php
// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largest_divisor(15)
// 5
function largest_divisor($n) {
    for ($i = $n - 1; $i > 0; $i--) {
        if ($n % $i == 0) {
            return $i;
        }
    }
}


function candidate(...$args) {
    return largest_divisor(...$args);
}

function test(): void {
    if (candidate(3) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(7) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(10) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(100) !== 50) { throw new Exception("Test failed!"); }
    if (candidate(49) !== 7) { throw new Exception("Test failed!"); }
}

test();