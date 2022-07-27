<?php
// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
function prime_fib($n) {
    $fib = [1, 2];
    $i = 2;
    while ($i < $n) {
        $fib[] = $fib[$i - 1] + $fib[$i - 2];
        $i++;
    }
    $fib = array_filter($fib, function ($x) {
        return is_prime($x);
    });
    return $fib[$n - 1];
}

function candidate(...$args) {
    return prime_fib(...$args);
}

function test(): void {
    if (candidate(1) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(2) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(3) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(4) !== 13) { throw new Exception("Test failed!"); }
    if (candidate(5) !== 89) { throw new Exception("Test failed!"); }
    if (candidate(6) !== 233) { throw new Exception("Test failed!"); }
    if (candidate(7) !== 1597) { throw new Exception("Test failed!"); }
    if (candidate(8) !== 28657) { throw new Exception("Test failed!"); }
    if (candidate(9) !== 514229) { throw new Exception("Test failed!"); }
    if (candidate(10) !== 433494437) { throw new Exception("Test failed!"); }
}

test();