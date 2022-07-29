<?php
// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
// minSubArraySum([-1, -2, -3]) == -6
function minSubArraySum($nums) {
    $min = $nums[0];
    $sum = 0;
    for ($i = 0; $i < count($nums); $i++) {
        $sum += $nums[$i];
        if ($sum < $min) {
            $min = $sum;
        }
        if ($sum > 0) {
            $sum = 0;
        }
    }
    return $min;
}

$nums = [2, 3, 4, 1, 2, 4];
$min = minSubArraySum($nums);
echo $min;

function candidate(...$args) {
    return minSubArraySum(...$args);
}

function test(): void {
    if (candidate(array(2, 3, 4, 1, 2, 4)) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -2, -3)) !== -6) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -2, -3, 2, -10)) !== -14) { throw new Exception("Test failed!"); }
    if (candidate(array(-9999999999999999)) !== -9999999999999999) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 10, 20, 1000000)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -2, -3, 10, -5)) !== -6) { throw new Exception("Test failed!"); }
    if (candidate(array(100, -1, -2, -3, 10, -5)) !== -6) { throw new Exception("Test failed!"); }
    if (candidate(array(10, 11, 13, 8, 3, 4)) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(array(100, -33, 32, -1, 0, -2)) !== -33) { throw new Exception("Test failed!"); }
    if (candidate(array(-10)) !== -10) { throw new Exception("Test failed!"); }
    if (candidate(array(7)) !== 7) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -1)) !== -1) { throw new Exception("Test failed!"); }
}

test();