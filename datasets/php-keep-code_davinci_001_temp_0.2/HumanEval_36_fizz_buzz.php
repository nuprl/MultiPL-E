<?php
// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizz_buzz(50)
// 0
// >>> fizz_buzz(78)
// 2
// >>> fizz_buzz(79)
// 3
function fizz_buzz($n) {
    $count = 0;
    for ($i = 1; $i < $n; $i++) {
        if ($i % 11 == 0 || $i % 13 == 0) {
            $count += strpos(strval($i), '7');
        }
    }
    return $count;
}

function candidate(...$args) {
    return fizz_buzz(...$args);
}

function test(): void {
    if (candidate(50) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(78) !== 2) { throw new Exception("Test failed!"); }
    if (candidate(79) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(100) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(200) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(4000) !== 192) { throw new Exception("Test failed!"); }
    if (candidate(10000) !== 639) { throw new Exception("Test failed!"); }
    if (candidate(100000) !== 8026) { throw new Exception("Test failed!"); }
}

test();