<?php
// Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
function fib($n) {
    if ($n < 2) {
        return 1;
    }
    return fib($n - 1) + fib($n - 2);
}


function candidate(...$args) {
    return fib(...$args);
}

function test(): void {
    if (candidate(10) !== 55) { throw new Exception("Test failed!"); }
    if (candidate(1) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(8) !== 21) { throw new Exception("Test failed!"); }
    if (candidate(11) !== 89) { throw new Exception("Test failed!"); }
    if (candidate(12) !== 144) { throw new Exception("Test failed!"); }
}

test();