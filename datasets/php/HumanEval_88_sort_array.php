<?php
// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
// Note:
// * don't change the given array.
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
function sort_array($array) {
    $sum = $array[0] + $array[count($array) - 1];
    if ($sum % 2 == 0) {
        sort($array, SORT_DESC);
    } else {
        sort($array, SORT_ASC);
    }
    return $array;
}

$array = [2, 4, 3, 0, 1, 5, 6];
$result = sort_array($array);
print_r($result);

function candidate(...$args) {
    return sort_array(...$args);
}

function test(): void {
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(5)) !== array(5)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 3, 0, 1, 5)) !== array(0, 1, 2, 3, 4, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 3, 0, 1, 5, 6)) !== array(6, 5, 4, 3, 2, 1, 0)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 1)) !== array(1, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(15, 42, 87, 32, 11, 0)) !== array(0, 11, 15, 32, 42, 87)) { throw new Exception("Test failed!"); }
    if (candidate(array(21, 14, 23, 11)) !== array(23, 21, 14, 11)) { throw new Exception("Test failed!"); }
}

test();