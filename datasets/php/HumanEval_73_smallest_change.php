<?php
// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
// For example:
// smallest_change([1,2,3,5,4,7,9,6]) == 4
// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
// smallest_change([1, 2, 3, 2, 1]) == 0
function smallest_change($arr) {
    $arr = array_reverse($arr);
    $count = 0;
    for ($i = 0; $i < count($arr); $i++) {
        if ($arr[$i] != $arr[$i+1]) {
            $count++;
        }
    }
    return $count;
}

$arr = [1,2,3,5,4,7,9,6];
echo smallest_change($arr);

function candidate(...$args) {
    return smallest_change(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3, 5, 4, 7, 9, 6)) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 3, 2, 2)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 4, 2)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 4, 4, 2)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 2, 1)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 1, 1, 3)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 1)) !== 1) { throw new Exception("Test failed!"); }
}

test();