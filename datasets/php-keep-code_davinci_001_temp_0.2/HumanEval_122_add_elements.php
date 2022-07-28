<?php
// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
// Example:
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
function add_elements($arr, $k) {
    $sum = 0;
    for ($i = 0; $i < $k; $i++) {
        $sum += $arr[$i];
    }
    return $sum;
}

$arr = [111,21,3,4000,5,6,7,8,9];
$k = 4;
echo add_elements($arr, $k);

function candidate(...$args) {
    return add_elements(...$args);
}

function test(): void {
    if (candidate(array(1, -2, -3, 41, 57, 76, 87, 88, 99), 3) !== -4) { throw new Exception("Test failed!"); }
    if (candidate(array(111, 121, 3, 4000, 5, 6), 2) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(11, 21, 3, 90, 5, 6, 7, 8, 9), 4) !== 125) { throw new Exception("Test failed!"); }
    if (candidate(array(111, 21, 3, 4000, 5, 6, 7, 8, 9), 4) !== 24) { throw new Exception("Test failed!"); }
    if (candidate(array(1), 1) !== 1) { throw new Exception("Test failed!"); }
}

test();