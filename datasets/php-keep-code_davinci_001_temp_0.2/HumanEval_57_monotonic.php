<?php
// Return True is list elements are monotonically increasing or decreasing.
// >>> monotonic([1, 2, 4, 20])
// True
// >>> monotonic([1, 20, 4, 10])
// False
// >>> monotonic([4, 1, 0, -10])
// True
function monotonic($l) {
    $d = $l[1] - $l[0];
    for ($i = 2; $i < count($l); $i++) {
        if ($d * ($l[$i] - $l[$i - 1]) < 0) {
            return false;
        }
    }
    return true;
}


function candidate(...$args) {
    return monotonic(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 4, 10)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 4, 20)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 20, 4, 10)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 1, 0, -10)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 1, 1, 0)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 2, 5, 60)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5, 60)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(9, 9, 9, 9)) !== true) { throw new Exception("Test failed!"); }
}

test();