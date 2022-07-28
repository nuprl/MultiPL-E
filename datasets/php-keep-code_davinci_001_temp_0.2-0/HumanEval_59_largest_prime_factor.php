<?php
// Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> largest_prime_factor(13195)
// 29
// >>> largest_prime_factor(2048)
// 2
function largest_prime_factor($n) {
    $i = 2;
    while ($i <= $n) {
        if ($n % $i == 0) {
            $n = $n / $i;
        } else {
            $i++;
        }
    }
    return $i;
}

$n = 600851475143;
echo largest_prime_factor($n);

function candidate(...$args) {
    return largest_prime_factor(...$args);
}

function test(): void {
    if (candidate(15) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(27) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(63) !== 7) { throw new Exception("Test failed!"); }
    if (candidate(330) !== 11) { throw new Exception("Test failed!"); }
    if (candidate(13195) !== 29) { throw new Exception("Test failed!"); }
}

test();