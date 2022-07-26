<?php
// You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return None if there is no such element.
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == None
// next_smallest([1, 1]) == None
function next_smallest($lst) {
    if (count($lst) < 2) {
        return null;
    }
    sort($lst);
    return $lst[1];
}

function candidate(...$args) {
    return next_smallest(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3, 4, 5)) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 1, 4, 3, 2)) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== None) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1)) !== None) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1, 1, 1, 0)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1)) !== None) { throw new Exception("Test failed!"); }
    if (candidate(array(-35, 34, 12, -45)) !== -35) { throw new Exception("Test failed!"); }
}

test();