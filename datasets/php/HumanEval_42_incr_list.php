<?php
// Return list with elements incremented by 1.
// >>> incr_list([1, 2, 3])
// [2, 3, 4]
// >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
function incr_list($l) {
    $l = array_map(function($e) { return $e + 1; }, $l);
    return $l;
}

function candidate(...$args) {
    return incr_list(...$args);
}

function test(): void {
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 1)) !== array(4, 3, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 2, 5, 2, 3, 3, 9, 0, 123)) !== array(6, 3, 6, 3, 4, 4, 10, 1, 124)) { throw new Exception("Test failed!"); }
}

test();