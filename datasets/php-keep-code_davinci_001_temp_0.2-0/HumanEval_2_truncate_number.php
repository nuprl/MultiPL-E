<?php
// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
function truncate_number($number) {
    $number = $number - intval($number);
    return $number;
}


function candidate(...$args) {
    return truncate_number(...$args);
}

function test(): void {
    if (candidate(3.5) !== 0.5) { throw new Exception("Test failed!"); }
    if (candidate(1.25) !== 0.25) { throw new Exception("Test failed!"); }
    if (candidate(123.0) !== 0.0) { throw new Exception("Test failed!"); }
}

test();