<?php
// Write a function that takes an array of numbers as input and returns 
// the number of elements in the array that are greater than 10 and both 
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialFilter([15, -73, 14, -15]) => 1 
// specialFilter([33, -2, -3, 45, 21, 109]) => 2
function specialFilter($nums) {
    $count = 0;
    foreach ($nums as $num) {
        if ($num > 10 && $num % 10 % 2 == 1 && $num / 10 % 10 % 2 == 1) {
            $count++;
        }
    }
    return $count;
}

$nums = [15, -73, 14, -15];
echo specialFilter($nums);

function candidate(...$args) {
    return specialFilter(...$args);
}

function test(): void {
    if (candidate(array(5, -2, 1, -5)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(15, -73, 14, -15)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(33, -2, -3, 45, 21, 109)) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(array(43, -12, 93, 125, 121, 109)) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array(71, -2, -33, 75, 21, 19)) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== 0) { throw new Exception("Test failed!"); }
}

test();