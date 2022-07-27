<?php
// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == False
// is_equal_to_sum_even(6) == False
// is_equal_to_sum_even(8) == True
function is_equal_to_sum_even($n) {
    $n = (int)$n;
    $even = array();
    for ($i = 2; $i <= $n; $i += 2) {
        $even[] = $i;
    }
    $sum = array_sum($even);
    if ($sum == $n) {
        return true;
    }
    return false;
}


function candidate(...$args) {
    return is_equal_to_sum_even(...$args);
}

function test(): void {
    if (candidate(4) !== false) { throw new Exception("Test failed!"); }
    if (candidate(6) !== false) { throw new Exception("Test failed!"); }
    if (candidate(8) !== true) { throw new Exception("Test failed!"); }
    if (candidate(10) !== true) { throw new Exception("Test failed!"); }
    if (candidate(11) !== false) { throw new Exception("Test failed!"); }
    if (candidate(12) !== true) { throw new Exception("Test failed!"); }
    if (candidate(13) !== false) { throw new Exception("Test failed!"); }
    if (candidate(16) !== true) { throw new Exception("Test failed!"); }
}

test();