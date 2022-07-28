<?php
// pairs_sum_to_zero takes a list of integers as an input.
// it returns True if there are two distinct elements in the list that
// sum to zero, and False otherwise.
// >>> pairs_sum_to_zero([1, 3, 5, 0])
// False
// >>> pairs_sum_to_zero([1, 3, -2, 1])
// False
// >>> pairs_sum_to_zero([1, 2, 3, 7])
// False
// >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
// True
// >>> pairs_sum_to_zero([1])
// False
function pairs_sum_to_zero($l) {
    $l = array_map('intval', $l);
    $l = array_unique($l);
    $l = array_values($l);
    $l = array_filter($l, 'is_numeric');
    $l = array_values($l);
    if (count($l) < 2) {
        return false;
    }
    for ($i = 0; $i < count($l); $i++) {
        for ($j = $i + 1; $j < count($l); $j++) {
            if ($l[$i] + $l[$j] == 0) {
                return true;
            }
        }
    }
    return false;
}


function candidate(...$args) {
    return pairs_sum_to_zero(...$args);
}

function test(): void {
    if (candidate(array(1, 3, 5, 0)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 3, -2, 1)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 7)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, -5, 3, 5, 7)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(-3, 9, -1, 3, 2, 30)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(-3, 9, -1, 3, 2, 31)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(-3, 9, -1, 4, 2, 30)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(-3, 9, -1, 4, 2, 31)) !== false) { throw new Exception("Test failed!"); }
}

test();