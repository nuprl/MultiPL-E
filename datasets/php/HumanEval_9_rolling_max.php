<?php
// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
function rolling_max($numbers) {
    $max = $numbers[0];
    $result = [];
    for ($i = 0; $i < count($numbers); $i++) {
        $result[] = $max;
        if ($numbers[$i] > $max) {
            $max = $numbers[$i];
        }
    }
    return $result;
}

$numbers = [1, 2, 3, 2, 3, 4, 2];
print_r(rolling_max($numbers));

function candidate(...$args) {
    return rolling_max(...$args);
}

function test(): void {
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4)) !== array(1, 2, 3, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 3, 2, 1)) !== array(4, 4, 4, 4)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 3, 100, 3)) !== array(3, 3, 3, 100, 100)) { throw new Exception("Test failed!"); }
}

test();