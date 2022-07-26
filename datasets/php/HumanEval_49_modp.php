<?php
// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
function modp($n, $p) {
    if ($n == 0) {
        return 1;
    }
    $res = modp($n / 2, $p);
    if ($n % 2 == 0) {
        return ($res * $res) % $p;
    } else {
        return ($res * $res * 2) % $p;
    }
}


function candidate(...$args) {
    return modp(...$args);
}

function test(): void {
    if (candidate(3, 5) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(1101, 101) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(0, 101) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(3, 11) !== 8) { throw new Exception("Test failed!"); }
    if (candidate(100, 101) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(30, 5) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(31, 5) !== 3) { throw new Exception("Test failed!"); }
}

test();