<?php
// Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
// Examples
// >>> closest_integer("10")
// 10
// >>> closest_integer("15.3")
// 15
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closest_integer("14.5") should
// return 15 and closest_integer("-14.5") should return -15.
function closest_integer($value) {
    $value = (int)$value;
    $value = $value + 0.5;
    $value = round($value);
    return $value;
}


function candidate(...$args) {
    return closest_integer(...$args);
}

function test(): void {
    if (candidate('10') !== 10) { throw new Exception("Test failed!"); }
    if (candidate('14.5') !== 15) { throw new Exception("Test failed!"); }
    if (candidate('-15.5') !== -16) { throw new Exception("Test failed!"); }
    if (candidate('15.3') !== 15) { throw new Exception("Test failed!"); }
    if (candidate('0') !== 0) { throw new Exception("Test failed!"); }
}

test();