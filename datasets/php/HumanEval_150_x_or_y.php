<?php
// A simple program which should return the value of x if n is 
// a prime number and should return the value of y otherwise.
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
function x_or_y($n, $x, $y) {
    if (is_prime($n)) {
        return $x;
    } else {
        return $y;
    }
}


function candidate(...$args) {
    return x_or_y(...$args);
}

function test(): void {
    if (candidate(7, 34, 12) !== 34) { throw new Exception("Test failed!"); }
    if (candidate(15, 8, 5) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(3, 33, 5212) !== 33) { throw new Exception("Test failed!"); }
    if (candidate(1259, 3, 52) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(7919, -1, 12) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(3609, 1245, 583) !== 583) { throw new Exception("Test failed!"); }
    if (candidate(91, 56, 129) !== 129) { throw new Exception("Test failed!"); }
    if (candidate(6, 34, 1234) !== 1234) { throw new Exception("Test failed!"); }
    if (candidate(1, 2, 0) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(2, 2, 0) !== 2) { throw new Exception("Test failed!"); }
}

test();