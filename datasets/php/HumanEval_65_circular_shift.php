<?php
// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
function circular_shift($x, $shift) {
    $digits = strlen($x);
    $shift = $shift % $digits;
    if ($shift == 0) {
        return $x;
    }
    $x = strrev($x);
    $x = substr($x, $shift) . substr($x, 0, $shift);
    return strrev($x);
}


function candidate(...$args) {
    return circular_shift(...$args);
}

function test(): void {
    if (candidate(100, 2) !== '001') { throw new Exception("Test failed!"); }
    if (candidate(12, 2) !== '12') { throw new Exception("Test failed!"); }
    if (candidate(97, 8) !== '79') { throw new Exception("Test failed!"); }
    if (candidate(12, 1) !== '21') { throw new Exception("Test failed!"); }
    if (candidate(11, 101) !== '11') { throw new Exception("Test failed!"); }
}

test();