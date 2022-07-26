<?php
// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100. 
// Example:
// is_multiply_prime(30) == True
// 30 = 2 * 3 * 5
function is_multiply_prime($a) {
    $prime = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
    $result = false;
    for ($i = 0; $i < count($prime); $i++) {
        if ($a % $prime[$i] == 0) {
            $result = true;
        }
    }
    return $result;
}


function candidate(...$args) {
    return is_multiply_prime(...$args);
}

function test(): void {
    if (candidate(5) !== false) { throw new Exception("Test failed!"); }
    if (candidate(30) !== true) { throw new Exception("Test failed!"); }
    if (candidate(8) !== true) { throw new Exception("Test failed!"); }
    if (candidate(10) !== false) { throw new Exception("Test failed!"); }
    if (candidate(125) !== true) { throw new Exception("Test failed!"); }
    if (candidate(105) !== true) { throw new Exception("Test failed!"); }
    if (candidate(126) !== false) { throw new Exception("Test failed!"); }
    if (candidate(729) !== false) { throw new Exception("Test failed!"); }
    if (candidate(891) !== false) { throw new Exception("Test failed!"); }
    if (candidate(1001) !== true) { throw new Exception("Test failed!"); }
}

test();