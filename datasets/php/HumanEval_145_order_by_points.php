<?php
// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// For example:
// >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> order_by_points([]) == []
function order_by_points($nums) {
    $sum = array();
    $result = array();
    foreach ($nums as $key => $value) {
        $sum[$key] = get_sum($value);
    }
    $sum = array_unique($sum);
    sort($sum);
    foreach ($sum as $key => $value) {
        foreach ($nums as $key2 => $value2) {
            if (get_sum($value2) == $value) {
                $result[] = $value2;
            }
        }
    }
    return $result;
}


function candidate(...$args) {
    return order_by_points(...$args);
}

function test(): void {
    if (candidate(array(1, 11, -1, -11, -12)) !== array(-1, -11, 1, -12, 11)) { throw new Exception("Test failed!"); }
    if (candidate(array(1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46)) !== array(0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457)) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -11, -32, 43, 54, -98, 2, -3)) !== array(-3, -32, -98, -11, 1, 2, 43, 54)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)) !== array(1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9)) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 6, 6, -76, -21, 23, 4)) !== array(-76, -21, 0, 4, 23, 6, 6)) { throw new Exception("Test failed!"); }
}

test();