<?php
// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
function rescale_to_unit($numbers) {
    $min = min($numbers);
    $max = max($numbers);
    $range = $max - $min;
    $result = [];
    foreach ($numbers as $number) {
        $result[] = ($number - $min) / $range;
    }
    return $result;
}


function candidate(...$args) {
    return rescale_to_unit(...$args);
}

function test(): void {
    if (candidate(array(2.0, 49.9)) !== array(0.0, 1.0)) { throw new Exception("Test failed!"); }
    if (candidate(array(100.0, 49.9)) !== array(1.0, 0.0)) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0, 5.0)) !== array(0.0, 0.25, 0.5, 0.75, 1.0)) { throw new Exception("Test failed!"); }
    if (candidate(array(2.0, 1.0, 5.0, 3.0, 4.0)) !== array(0.25, 0.0, 1.0, 0.5, 0.75)) { throw new Exception("Test failed!"); }
    if (candidate(array(12.0, 11.0, 15.0, 13.0, 14.0)) !== array(0.25, 0.0, 1.0, 0.5, 0.75)) { throw new Exception("Test failed!"); }
}

test();