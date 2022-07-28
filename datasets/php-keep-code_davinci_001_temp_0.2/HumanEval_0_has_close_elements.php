<?php
// Check if in given list of numbers, are any two numbers closer to each other than
// given threshold.
// >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
// False
// >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
// True
function has_close_elements($numbers, $threshold) {
    $numbers = array_map('floatval', $numbers);
    $numbers = array_unique($numbers);
    $numbers = array_values($numbers);
    $n = count($numbers);
    for ($i = 0; $i < $n; $i++) {
        for ($j = $i + 1; $j < $n; $j++) {
            if (abs($numbers[$i] - $numbers[$j]) < $threshold) {
                return true;
            }
        }
    }
    return false;
}


function candidate(...$args) {
    return has_close_elements(...$args);
}

function test(): void {
    if (candidate(array(1.0, 2.0, 3.9, 4.0, 5.0, 2.2), 0.3) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.9, 4.0, 5.0, 2.2), 0.05) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 5.9, 4.0, 5.0), 0.95) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 5.9, 4.0, 5.0), 0.8) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0, 5.0, 2.0), 0.1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1.1, 2.2, 3.1, 4.1, 5.1), 1.0) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1.1, 2.2, 3.1, 4.1, 5.1), 0.5) !== false) { throw new Exception("Test failed!"); }
}

test();