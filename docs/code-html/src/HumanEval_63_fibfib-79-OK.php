<?php
// The FibFib number sequence is a sequence similar to the
// Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the
// n-th element of the fibfib number sequence.
function fibfib($n) {
    if ($n == 0) {
        return 0;
    }
    if ($n == 1) {
        return 0;
    }
    if ($n == 2) {
        return 1;
    }
    $fibfib = [0, 0, 1];
    for ($i = 3; $i <= $n; $i++) {
        $fibfib[$i] = $fibfib[$i - 1] + $fibfib[$i - 2] + $fibfib[$i - 3];
    }
    return $fibfib[$n];
}