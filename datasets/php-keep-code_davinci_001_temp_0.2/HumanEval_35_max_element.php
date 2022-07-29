<?php
// Return maximum element in the list.
// >>> max_element([1, 2, 3])
// 3
// >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
function max_element($l) {
    $max = $l[0];
    for ($i = 1; $i < count($l); $i++) {
        if ($l[$i] > $max) {
            $max = $l[$i];
        }
    }
    return $max;
}


function candidate(...$args) {
    return max_element(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3)) !== 3) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10)) !== 124) { throw new Exception("Test failed!"); }
}

test();