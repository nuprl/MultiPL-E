<?php
// Given a positive integer n, return the count of the numbers of n-digit
// positive integers that start or end with 1.
function starts_one_ends($n) {
    $count = 0;
    for ($i = 1; $i <= $n; $i++) {
        $count += count_numbers($i);
    }
    return $count;
}


function candidate(...$args) {
    return starts_one_ends(...$args);
}

function test(): void {
    if (candidate(1) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(2) !== 18) { throw new Exception("Test failed!"); }
    if (candidate(3) !== 180) { throw new Exception("Test failed!"); }
    if (candidate(4) !== 1800) { throw new Exception("Test failed!"); }
    if (candidate(5) !== 18000) { throw new Exception("Test failed!"); }
}

test();