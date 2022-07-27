<?php
// Return true if a given number is prime, and false otherwise.
// >>> is_prime(6)
// False
// >>> is_prime(101)
// True
// >>> is_prime(11)
// True
// >>> is_prime(13441)
// True
// >>> is_prime(61)
// True
// >>> is_prime(4)
// False
// >>> is_prime(1)
// False
function is_prime($n) {
    if ($n < 2) {
        return false;
    }
    for ($i = 2; $i <= sqrt($n); $i++) {
        if ($n % $i == 0) {
            return false;
        }
    }
    return true;
}


function candidate(...$args) {
    return is_prime(...$args);
}

function test(): void {
    if (candidate(6) !== false) { throw new Exception("Test failed!"); }
    if (candidate(101) !== true) { throw new Exception("Test failed!"); }
    if (candidate(11) !== true) { throw new Exception("Test failed!"); }
    if (candidate(13441) !== true) { throw new Exception("Test failed!"); }
    if (candidate(61) !== true) { throw new Exception("Test failed!"); }
    if (candidate(4) !== false) { throw new Exception("Test failed!"); }
    if (candidate(1) !== false) { throw new Exception("Test failed!"); }
    if (candidate(5) !== true) { throw new Exception("Test failed!"); }
    if (candidate(11) !== true) { throw new Exception("Test failed!"); }
    if (candidate(17) !== true) { throw new Exception("Test failed!"); }
    if (candidate(85) !== false) { throw new Exception("Test failed!"); }
    if (candidate(77) !== false) { throw new Exception("Test failed!"); }
    if (candidate(255379) !== false) { throw new Exception("Test failed!"); }
}

test();