<?php
// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums([]) == 0
// >>> count_nums([-1, 11, -11]) == 1
// >>> count_nums([1, 1, 2]) == 3
function count_nums($arr) {
    $count = 0;
    foreach ($arr as $num) {
        $sum = 0;
        $num = abs($num);
        while ($num > 0) {
            $sum += $num % 10;
            $num = floor($num / 10);
        }
        if ($sum > 0) {
            $count++;
        }
    }
    return $count;
}

$arr = [1, 1, 2];
echo count_nums($arr);

function candidate(...$args) {
    return count_nums(...$args);
}

function test(): void {
    if (candidate(array()) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -2, 0)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1, 2, -2, 3, 4, 5)) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 6, 9, -6, 0, 1, 5)) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 100, 98, -7, 1, -1)) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array(12, 23, 34, -45, -56, 0)) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 1)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(1)) !== 1) { throw new Exception("Test failed!"); }
}

test();