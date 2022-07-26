<?php
// Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
function median($l) {
    $l = array_values($l);
    $n = count($l);
    if ($n == 0) {
        return null;
    }
    $half = floor($n / 2);
    if ($n % 2 == 0) {
        return ($l[$half - 1] + $l[$half]) / 2;
    } else {
        return $l[$half];
    }
}


function candidate(...$args) {
    return median(...$args);
}

function test(): void {
    if (candidate(array(3, 1, 2, 4, 5)) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(array(-10, 4, 6, 1000, 10, 20)) !== 8.0) { throw new Exception("Test failed!"); }
    if (candidate(array(5)) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(array(6, 5)) !== 5.5) { throw new Exception("Test failed!"); }
    if (candidate(array(8, 1, 3, 9, 9, 2, 7)) !== 7) { throw new Exception("Test failed!"); }
}

test();