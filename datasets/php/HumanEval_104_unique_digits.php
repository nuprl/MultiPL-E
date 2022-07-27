<?php
// Given a list of positive integers x. return a sorted list of all 
// elements that hasn't any even digit.
// Note: Returned list should be sorted in increasing order.
// For example:
// >>> unique_digits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> unique_digits([152, 323, 1422, 10])
// []
function unique_digits($x) {
    $result = [];
    foreach ($x as $value) {
        if (strpos($value, '2') === false && strpos($value, '4') === false && strpos($value, '6') === false && strpos($value, '8') === false) {
            array_push($result, $value);
        }
    }
    return $result;
}


function candidate(...$args) {
    return unique_digits(...$args);
}

function test(): void {
    if (candidate(array(15, 33, 1422, 1)) !== array(1, 15, 33)) { throw new Exception("Test failed!"); }
    if (candidate(array(152, 323, 1422, 10)) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(12345, 2033, 111, 151)) !== array(111, 151)) { throw new Exception("Test failed!"); }
    if (candidate(array(135, 103, 31)) !== array(31, 135)) { throw new Exception("Test failed!"); }
}

test();