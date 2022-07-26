<?php
// sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
function sum_to_n($n) {
    $sum = 0;
    for ($i = 1; $i <= $n; $i++) {
        $sum += $i;
    }
    return $sum;
}


function candidate(...$args) {
    return sum_to_n(...$args);
}

function test(): void {
    if (candidate(1) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(6) !== 21) { throw new Exception("Test failed!"); }
    if (candidate(11) !== 66) { throw new Exception("Test failed!"); }
    if (candidate(30) !== 465) { throw new Exception("Test failed!"); }
    if (candidate(100) !== 5050) { throw new Exception("Test failed!"); }
}

test();