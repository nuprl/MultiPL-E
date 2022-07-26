<?php
// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
function fibfib($n) {
    $fib = [0, 1, 1];
    if ($n < 3) {
        return $fib[$n];
    }
    for ($i = 3; $i <= $n; $i++) {
        $fib[$i] = $fib[$i - 1] + $fib[$i - 2] + $fib[$i - 3];
    }
    return $fib[$n];
}

$n = 8;
echo fibfib($n);

function candidate(...$args) {
    return fibfib(...$args);
}

function test(): void {
    if (candidate(2) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(1) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(5) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(8) !== 24) { throw new Exception("Test failed!"); }
    if (candidate(10) !== 81) { throw new Exception("Test failed!"); }
    if (candidate(12) !== 274) { throw new Exception("Test failed!"); }
    if (candidate(14) !== 927) { throw new Exception("Test failed!"); }
}

test();