<?php
// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as None.
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
// largest_smallest_integers([]) == (None, None)
// largest_smallest_integers([0]) == (None, None)
function largest_smallest_integers($lst) {
    $negative = $positive = null;
    $min = $max = 0;
    foreach ($lst as $value) {
        if ($value < 0) {
            if ($negative === null) {
                $negative = $value;
            } else {
                if ($value < $negative) {
                    $negative = $value;
                }
            }
        } else {
            if ($positive === null) {
                $positive = $value;
            } else {
                if ($value > $positive) {
                    $positive = $value;
                }
            }
        }
    }
    if ($negative !== null) {
        $min = $negative;
    }
    if ($positive !== null) {
        $max = $positive;
    }
    return array($negative, $positive);
}

$lst = array(2, 4, 1, 3, 5, 7);
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array();
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array(0);
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array(-1, -2, -3, -4, -5, -6);
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array(1, 2, 3, 4, 5, 6);
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array(-1, -2, -3, -4, -5, -6, 1, 2, 3, 4, 5, 6);
$result = largest_smallest_integers($lst);
var_dump($result);

$lst = array(-1, -2, -3, -4, -5, -6, 1, 2, 3, 4, 5, 6, 0);
$result = largest_smallest_integers

function candidate(...$args) {
    return largest_smallest_integers(...$args);
}

function test(): void {
    if (candidate(array(2, 4, 1, 3, 5, 7)) !== array(None, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 1, 3, 5, 7, 0)) !== array(None, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, 2, 4, 5, 6, -2)) !== array(-2, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 5, 3, 6, 2, 7, -7)) !== array(-7, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(7, 3, 8, 4, 9, 2, 5, -9)) !== array(-9, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array(None, None)) { throw new Exception("Test failed!"); }
    if (candidate(array(0)) !== array(None, None)) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -3, -5, -6)) !== array(-1, None)) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -3, -5, -6, 0)) !== array(-1, None)) { throw new Exception("Test failed!"); }
    if (candidate(array(-6, -4, -4, -3, 1)) !== array(-3, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(-6, -4, -4, -3, -100, 1)) !== array(-3, 1)) { throw new Exception("Test failed!"); }
}

test();