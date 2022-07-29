<?php
// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
function count_up_to($n) {
    $prime = [];
    for ($i = 2; $i < $n; $i++) {
        $isPrime = true;
        for ($j = 2; $j < $i; $j++) {
            if ($i % $j == 0) {
                $isPrime = false;
                break;
            }
        }
        if ($isPrime) {
            array_push($prime, $i);
        }
    }
    return $prime;
}

$n = intval(readline());
$prime = count_up_to($n);
echo implode(', ', $prime);

function candidate(...$args) {
    return count_up_to(...$args);
}

function test(): void {
    if (candidate(5) !== array(2, 3)) { throw new Exception("Test failed!"); }
    if (candidate(6) !== array(2, 3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(7) !== array(2, 3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(10) !== array(2, 3, 5, 7)) { throw new Exception("Test failed!"); }
    if (candidate(0) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(22) !== array(2, 3, 5, 7, 11, 13, 17, 19)) { throw new Exception("Test failed!"); }
    if (candidate(1) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(18) !== array(2, 3, 5, 7, 11, 13, 17)) { throw new Exception("Test failed!"); }
    if (candidate(47) !== array(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43)) { throw new Exception("Test failed!"); }
    if (candidate(101) !== array(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)) { throw new Exception("Test failed!"); }
}

test();