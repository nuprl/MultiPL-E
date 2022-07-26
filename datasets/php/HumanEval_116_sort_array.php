<?php
// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
function sort_array($arr) {
    $arr = array_map('decbin', $arr);
    $arr = array_map('strlen', $arr);
    $arr = array_map('strrev', $arr);
    $arr = array_map('str_pad', $arr, 0, '0', STR_PAD_LEFT);
    $arr = array_map('strrev', $arr);
    $arr = array_map('bindec', $arr);
    return $arr;
}

$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -5, -6];
$arr = [1, 5, 2, 3, 4];
$arr = [1, 0, 2, 3, 4];
$arr = [-2, -3, -4, -

function candidate(...$args) {
    return sort_array(...$args);
}

function test(): void {
    if (candidate(array(1, 5, 2, 3, 4)) !== array(1, 2, 4, 3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(-2, -3, -4, -5, -6)) !== array(-4, -2, -6, -5, -3)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 0, 2, 3, 4)) !== array(0, 1, 2, 4, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4)) !== array(2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 6, 44, 12, 32, 5)) !== array(32, 3, 5, 6, 12, 44)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 8, 16, 32)) !== array(2, 4, 8, 16, 32)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 8, 16, 32)) !== array(2, 4, 8, 16, 32)) { throw new Exception("Test failed!"); }
}

test();