<?php
// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
function can_arrange($arr) {
    $arr = array_reverse($arr);
    $i = 0;
    while($i < count($arr)) {
        if($arr[$i] < $arr[$i+1]) {
            return count($arr) - $i - 1;
        }
        $i++;
    }
    return -1;
}

$arr = [1,2,4,3,5];
$arr = [1,2,3];
$arr = [1,2,4,5,3];

echo can_arrange($arr);

function candidate(...$args) {
    return can_arrange(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 4, 3, 5)) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 4, 5)) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 4, 2, 5, 6, 7, 8, 9, 10)) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 8, 5, 7, 3)) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== -1) { throw new Exception("Test failed!"); }
}

test();