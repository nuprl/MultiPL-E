<?php
// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(8)
// [2, 2, 2]
// >>> factorize(25)
// [5, 5]
// >>> factorize(70)
// [2, 5, 7]
function factorize($n) {
    $result = [];
    $i = 2;
    while ($n > 1) {
        while ($n % $i == 0) {
            $result[] = $i;
            $n /= $i;
        }
        $i++;
    }
    return $result;
}


function candidate(...$args) {
    return factorize(...$args);
}

function test(): void {
    if (candidate(2) !== array(2)) { throw new Exception("Test failed!"); }
    if (candidate(4) !== array(2, 2)) { throw new Exception("Test failed!"); }
    if (candidate(8) !== array(2, 2, 2)) { throw new Exception("Test failed!"); }
    if (candidate(57) !== array(3, 19)) { throw new Exception("Test failed!"); }
    if (candidate(3249) !== array(3, 3, 19, 19)) { throw new Exception("Test failed!"); }
    if (candidate(185193) !== array(3, 3, 3, 19, 19, 19)) { throw new Exception("Test failed!"); }
    if (candidate(20577) !== array(3, 19, 19, 19)) { throw new Exception("Test failed!"); }
    if (candidate(18) !== array(2, 3, 3)) { throw new Exception("Test failed!"); }
}

test();