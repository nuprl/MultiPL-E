<?php
// Implement the function f that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(5) == [1, 2, 6, 24, 15]
function f($n) {
    $list = [];
    for ($i = 1; $i <= $n; $i++) {
        if ($i % 2 == 0) {
            $list[] = factorial($i);
        } else {
            $list[] = sum($i);
        }
    }
    return $list;
}


function candidate(...$args) {
    return f(...$args);
}

function test(): void {
    if (candidate(5) !== array(1, 2, 6, 24, 15)) { throw new Exception("Test failed!"); }
    if (candidate(7) !== array(1, 2, 6, 24, 15, 720, 28)) { throw new Exception("Test failed!"); }
    if (candidate(1) !== array(1)) { throw new Exception("Test failed!"); }
    if (candidate(3) !== array(1, 2, 6)) { throw new Exception("Test failed!"); }
}

test();