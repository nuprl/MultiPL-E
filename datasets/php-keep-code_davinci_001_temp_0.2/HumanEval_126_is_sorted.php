<?php
// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return False. Assume no negative numbers and only integers.
// Examples
// is_sorted([5]) ➞ True
// is_sorted([1, 2, 3, 4, 5]) ➞ True
// is_sorted([1, 3, 2, 4, 5]) ➞ False
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
function is_sorted($lst) {
    $lst = array_unique($lst);
    sort($lst);
    if ($lst == $lst) {
        return true;
    } else {
        return false;
    }
}

$lst = [1, 2, 3, 4, 5, 6, 7];
var_dump(is_sorted($lst));

function candidate(...$args) {
    return is_sorted(...$args);
}

function test(): void {
    if (candidate(array(5)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, 2, 4, 5)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5, 6)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5, 6, 7)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, 2, 4, 5, 6, 7)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 1)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 2, 2, 3, 4)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 3, 3, 4)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 2, 3, 3, 4)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4)) !== true) { throw new Exception("Test failed!"); }
}

test();