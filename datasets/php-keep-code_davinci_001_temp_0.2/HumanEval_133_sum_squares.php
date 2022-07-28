<?php
// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
function sum_squares($lst) {
    $lst = array_map('ceil', $lst);
    $sum = 0;
    foreach ($lst as $num) {
        $sum += $num * $num;
    }
    return $sum;
}

function candidate(...$args) {
    return sum_squares(...$args);
}

function test(): void {
    if (candidate(array(1.0, 2.0, 3.0)) !== 14) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0)) !== 14) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 3.0, 5.0, 7.0)) !== 84) { throw new Exception("Test failed!"); }
    if (candidate(array(1.4, 4.2, 0.0)) !== 29) { throw new Exception("Test failed!"); }
    if (candidate(array(-2.4, 1.0, 1.0)) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(array(100.0, 1.0, 15.0, 2.0)) !== 10230) { throw new Exception("Test failed!"); }
    if (candidate(array(10000.0, 10000.0)) !== 200000000) { throw new Exception("Test failed!"); }
    if (candidate(array(-1.4, 4.6, 6.3)) !== 75) { throw new Exception("Test failed!"); }
    if (candidate(array(-1.4, 17.9, 18.9, 19.9)) !== 1086) { throw new Exception("Test failed!"); }
    if (candidate(array(0.0)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-1.0)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(-1.0, 1.0, 0.0)) !== 2) { throw new Exception("Test failed!"); }
}

test();