<?php
// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// For example:
// >>> special_factorial(4)
// 288
// The function will receive an integer as input and should return the special
// factorial of this integer.
function special_factorial($n) {
    if ($n == 0) {
        return 1;
    } else {
        return $n * special_factorial($n - 1);
    }
}


function candidate(...$args) {
    return special_factorial(...$args);
}

function test(): void {
    if (candidate(4) !== 288) { throw new Exception("Test failed!"); }
    if (candidate(5) !== 34560) { throw new Exception("Test failed!"); }
    if (candidate(7) !== 125411328000) { throw new Exception("Test failed!"); }
    if (candidate(1) !== 1) { throw new Exception("Test failed!"); }
}

test();