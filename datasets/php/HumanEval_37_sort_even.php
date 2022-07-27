<?php
// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sort_even([1, 2, 3])
// [1, 2, 3]
// >>> sort_even([5, 6, 3, 4])
// [3, 6, 5, 4]
function sort_even($l) {
    $even = array();
    $odd = array();
    for ($i = 0; $i < count($l); $i++) {
        if ($i % 2 == 0) {
            array_push($even, $l[$i]);
        } else {
            array_push($odd, $l[$i]);
        }
    }
    sort($even);
    sort($odd);
    $result = array();
    for ($i = 0; $i < count($l); $i++) {
        if ($i % 2 == 0) {
            array_push($result, $even[$i / 2]);
        } else {
            array_push($result, $odd[$i / 2]);
        }
    }
    return $result;
}


function candidate(...$args) {
    return sort_even(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3)) !== array(1, 2, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10)) !== array(-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 8, -12, 4, 23, 2, 3, 11, 12, -10)) !== array(-12, 8, 3, 4, 5, 2, 12, 11, 23, -10)) { throw new Exception("Test failed!"); }
}

test();