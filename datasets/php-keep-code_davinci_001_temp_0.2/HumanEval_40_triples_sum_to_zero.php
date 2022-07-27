<?php
// triples_sum_to_zero takes a list of integers as an input.
// it returns True if there are three distinct elements in the list that
// sum to zero, and False otherwise.
// >>> triples_sum_to_zero([1, 3, 5, 0])
// False
// >>> triples_sum_to_zero([1, 3, -2, 1])
// True
// >>> triples_sum_to_zero([1, 2, 3, 7])
// False
// >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
// True
// >>> triples_sum_to_zero([1])
// False
function triples_sum_to_zero($l) {
    $l = array_values($l);
    $l = array_map(function($x) { return abs($x); }, $l);
    $l = array_unique($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l = array_reverse($l);
    $l = array_values($l);
    $l

function candidate(...$args) {
    return triples_sum_to_zero(...$args);
}

function test(): void {
    if (candidate(array(1, 3, 5, 0)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, 5, -1)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, -2, 1)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 7)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 5, 7)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, -5, 3, 9, 7)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, 5, -100)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(100, 3, 5, -100)) !== false) { throw new Exception("Test failed!"); }
}

test();