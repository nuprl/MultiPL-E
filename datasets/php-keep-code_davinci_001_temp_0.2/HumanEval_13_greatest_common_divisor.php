<?php
// Return a greatest common divisor of two integers a and b
// >>> greatest_common_divisor(3, 5)
// 1
// >>> greatest_common_divisor(25, 15)
// 5
function greatest_common_divisor($a, $b) {
    if ($b == 0) {
        return $a;
    }
    return greatest_common_divisor($b, $a % $b);
}


function candidate(...$args) {
    return greatest_common_divisor(...$args);
}

function test(): void {
    if (candidate(3, 7) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(10, 15) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(49, 14) !== 7) { throw new Exception("Test failed!"); }
    if (candidate(144, 60) !== 12) { throw new Exception("Test failed!"); }
}

test();