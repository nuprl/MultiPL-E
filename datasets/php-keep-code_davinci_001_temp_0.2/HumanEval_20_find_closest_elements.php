<?php
// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
function find_closest_elements($numbers) {
    $closest = array();
    $closest[0] = $numbers[0];
    $closest[1] = $numbers[1];
    for ($i = 0; $i < count($numbers); $i++) {
        for ($j = $i + 1; $j < count($numbers); $j++) {
            if (abs($numbers[$i] - $numbers[$j]) < abs($closest[0] - $closest[1])) {
                $closest[0] = $numbers[$i];
                $closest[1] = $numbers[$j];
            }
        }
    }
    return $closest;
}


function candidate(...$args) {
    return find_closest_elements(...$args);
}

function test(): void {
    if (candidate(array(1.0, 2.0, 3.9, 4.0, 5.0, 2.2)) !== array(3.9, 4.0)) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 5.9, 4.0, 5.0)) !== array(5.0, 5.9)) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0, 5.0, 2.2)) !== array(2.0, 2.2)) { throw new Exception("Test failed!"); }
    if (candidate(array(1.0, 2.0, 3.0, 4.0, 5.0, 2.0)) !== array(2.0, 2.0)) { throw new Exception("Test failed!"); }
    if (candidate(array(1.1, 2.2, 3.1, 4.1, 5.1)) !== array(2.2, 3.1)) { throw new Exception("Test failed!"); }
}

test();