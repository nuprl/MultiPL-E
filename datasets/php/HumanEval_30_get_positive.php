<?php
// Return only positive numbers in the list.
// >>> get_positive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
function get_positive($l) {
    $result = [];
    foreach ($l as $v) {
        if ($v > 0) {
            $result[] = $v;
        }
    }
    return $result;
}


function candidate(...$args) {
    return get_positive(...$args);
}

function test(): void {
    if (candidate(array(-1, -2, 4, 5, 6)) !== array(4, 5, 6)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10)) !== array(5, 3, 2, 3, 3, 9, 123, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -2)) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
}

test();