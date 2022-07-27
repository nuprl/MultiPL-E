<?php
// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
// the last couple centuries. However, what people don't know is Tribonacci sequence.
// Tribonacci sequence is defined by the recurrence:
// tri(1) = 3
// tri(n) = 1 + n / 2, if n is even.
// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
// For example:
// tri(2) = 1 + (2 / 2) = 2
// tri(4) = 3
// tri(3) = tri(2) + tri(1) + tri(4)
// = 2 + 3 + 3 = 8 
// You are given a non-negative integer number n, you have to a return a list of the 
// first n + 1 numbers of the Tribonacci sequence.
// Examples:
// tri(3) = [1, 3, 2, 8]
function tri($n) {
    $tri = [];
    for ($i = 0; $i <= $n; $i++) {
        if ($i == 0) {
            $tri[$i] = 3;
        } elseif ($i == 1 || $i == 2) {
            $tri[$i] = 1;
        } else {
            $tri[$i] = $tri[$i - 1] + $tri[$i - 2] + $tri[$i - 3];
        }
    }
    return $tri;
}


function candidate(...$args) {
    return tri(...$args);
}

function test(): void {
    if (candidate(3) !== array(1, 3, 2, 8)) { throw new Exception("Test failed!"); }
    if (candidate(4) !== array(1, 3, 2, 8, 3)) { throw new Exception("Test failed!"); }
    if (candidate(5) !== array(1, 3, 2, 8, 3, 15)) { throw new Exception("Test failed!"); }
    if (candidate(6) !== array(1, 3, 2, 8, 3, 15, 4)) { throw new Exception("Test failed!"); }
    if (candidate(7) !== array(1, 3, 2, 8, 3, 15, 4, 24)) { throw new Exception("Test failed!"); }
    if (candidate(8) !== array(1, 3, 2, 8, 3, 15, 4, 24, 5)) { throw new Exception("Test failed!"); }
    if (candidate(9) !== array(1, 3, 2, 8, 3, 15, 4, 24, 5, 35)) { throw new Exception("Test failed!"); }
    if (candidate(20) !== array(1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11)) { throw new Exception("Test failed!"); }
    if (candidate(0) !== array(1)) { throw new Exception("Test failed!"); }
    if (candidate(1) !== array(1, 3)) { throw new Exception("Test failed!"); }
}

test();