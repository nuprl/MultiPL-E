<?php
// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
// 1.0
function mean_absolute_deviation($numbers) {
    $mean = array_sum($numbers) / count($numbers);
    $differences = array_map(function($n) use ($mean) {
        return abs($n - $mean);
    }, $numbers);
    return array_sum($differences) / count($differences);
}


function candidate(...$args) {
    return mean_absolute_deviation(...$args);
}

function test(): void {
    if (candidate(array(1.0, 2.0)) !== 0.5) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0)) !== 1.0) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0, 5.0)) !== 1.2) { throw new Exception("Test failed!"); }
}

test();