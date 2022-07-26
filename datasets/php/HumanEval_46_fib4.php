<?php
// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
function fib4($n) {
    $fib4 = array(0, 0, 2);
    if ($n < 3) {
        return $fib4[$n];
    }
    for ($i = 3; $i <= $n; $i++) {
        $fib4[$i % 3] = $fib4[($i - 1) % 3] + $fib4[($i - 2) % 3] + $fib4[($i - 3) % 3];
    }
    return $fib4[$n % 3];
}


function candidate(...$args) {
    return fib4(...$args);
}

function test(): void {
    if (candidate(5) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(8) !== 28) { throw new Exception("Test failed!"); }
    if (candidate(10) !== 104) { throw new Exception("Test failed!"); }
    if (candidate(12) !== 386) { throw new Exception("Test failed!"); }
}

test();