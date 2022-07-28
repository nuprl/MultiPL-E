<?php
// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
function solution($lst) {
    $sum = 0;
    for ($i = 0; $i < count($lst); $i++) {
        if ($i % 2 == 0 && $lst[$i] % 2 != 0) {
            $sum += $lst[$i];
        }
    }
    return $sum;
}

echo solution([5, 8, 7, 1]);
echo "<br>";
echo solution([3, 3, 3, 3, 3]);
echo "<br>";
echo solution([30, 13, 24, 321]);

function candidate(...$args) {
    return solution(...$args);
}

function test(): void {
    if (candidate(array(5, 8, 7, 1)) !== 12) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 3, 3, 3, 3)) !== 9) { throw new Exception("Test failed!"); }
    if (candidate(array(30, 13, 24, 321)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 9)) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(array(2, 4, 8)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(30, 13, 23, 32)) !== 23) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 13, 2, 9)) !== 3) { throw new Exception("Test failed!"); }
}

test();