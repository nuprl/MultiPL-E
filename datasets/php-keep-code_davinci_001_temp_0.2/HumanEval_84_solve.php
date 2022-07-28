<?php
// Given a positive integer N, return the total sum of its digits in binary.
// Example
// For N = 1000, the sum of digits will be 1 the output should be "1".
// For N = 150, the sum of digits will be 6 the output should be "110".
// For N = 147, the sum of digits will be 12 the output should be "1100".
// Variables:
// @N integer
// Constraints: 0 ≤ N ≤ 10000.
// Output:
// a string of binary number
function solve($N) {
    $binary = decbin($N);
    $sum = 0;
    for ($i = 0; $i < strlen($binary); $i++) {
        $sum += $binary[$i];
    }
    return $sum;
}

$N = intval(readline());
echo solve($N);

function candidate(...$args) {
    return solve(...$args);
}

function test(): void {
    if (candidate(1000) !== "1") { throw new Exception("Test failed!"); }
    if (candidate(150) !== "110") { throw new Exception("Test failed!"); }
    if (candidate(147) !== "1100") { throw new Exception("Test failed!"); }
    if (candidate(333) !== "1001") { throw new Exception("Test failed!"); }
    if (candidate(963) !== "10010") { throw new Exception("Test failed!"); }
}

test();