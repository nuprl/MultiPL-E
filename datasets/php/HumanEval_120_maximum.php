<?php
// Given an array arr of integers and a positive integer k, return a sorted list 
// of length k with the maximum k numbers in arr.
// Example 1:
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
// Example 2:
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
// Example 3:
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
function maximum($arr, $k) {
    $arr = array_values(array_filter($arr));
    $arr = array_reverse($arr);
    $arr = array_slice($arr, 0, $k);
    $arr = array_reverse($arr);
    return $arr;
}

$arr = [-3, -4, 5];
$k = 3;
var_dump(maximum($arr, $k));

$arr = [4, -4, 4];
$k = 2;
var_dump(maximum($arr, $k));

$arr = [-3, 2, 1, 2, -1, -2, 1];
$k = 1;
var_dump(maximum($arr, $k));

function candidate(...$args) {
    return maximum(...$args);
}

function test(): void {
    if (candidate(array(-3, -4, 5), 3) !== array(-4, -3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, -4, 4), 2) !== array(4, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(-3, 2, 1, 2, -1, -2, 1), 1) !== array(2)) { throw new Exception("Test failed!"); }
    if (candidate(array(123, -123, 20, 0, 1, 2, -3), 3) !== array(2, 20, 123)) { throw new Exception("Test failed!"); }
    if (candidate(array(-123, 20, 0, 1, 2, -3), 4) !== array(0, 1, 2, 20)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 15, 0, 3, -13, -8, 0), 7) !== array(-13, -8, 0, 0, 3, 5, 15)) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 0, 2, 5, 3, -10), 2) !== array(3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 0, 5, -7), 1) !== array(5)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, -4), 2) !== array(-4, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(-10, 10), 2) !== array(-10, 10)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, -23, 243, -400, 0), 0) !== array()) { throw new Exception("Test failed!"); }
}

test();