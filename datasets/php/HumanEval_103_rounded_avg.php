<?php
// You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m). 
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// rounded_avg(1, 5) => "0b11"
// rounded_avg(7, 5) => -1
// rounded_avg(10, 20) => "0b1111"
// rounded_avg(20, 33) => "0b11010"
function rounded_avg($n, $m) {
    if ($n > $m) {
        return -1;
    }
    $sum = 0;
    for ($i = $n; $i <= $m; $i++) {
        $sum += $i;
    }
    $avg = $sum / ($m - $n + 1);
    $avg = round($avg);
    $avg = decbin($avg);
    return $avg;
}

echo rounded_avg(1, 5);
echo rounded_avg(7, 5);
echo rounded_avg(10, 20);
echo rounded_avg(20, 33);

function candidate(...$args) {
    return rounded_avg(...$args);
}

function test(): void {
    if (candidate(1, 5) !== '0b11') { throw new Exception("Test failed!"); }
    if (candidate(7, 13) !== '0b1010') { throw new Exception("Test failed!"); }
    if (candidate(964, 977) !== '0b1111001010') { throw new Exception("Test failed!"); }
    if (candidate(996, 997) !== '0b1111100100') { throw new Exception("Test failed!"); }
    if (candidate(560, 851) !== '0b1011000010') { throw new Exception("Test failed!"); }
    if (candidate(185, 546) !== '0b101101110') { throw new Exception("Test failed!"); }
    if (candidate(362, 496) !== '0b110101101') { throw new Exception("Test failed!"); }
    if (candidate(350, 902) !== '0b1001110010') { throw new Exception("Test failed!"); }
    if (candidate(197, 233) !== '0b11010111') { throw new Exception("Test failed!"); }
    if (candidate(7, 5) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(5, 1) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(5, 5) !== '0b101') { throw new Exception("Test failed!"); }
}

test();