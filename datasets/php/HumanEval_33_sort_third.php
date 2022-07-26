<?php
// This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sort_third([1, 2, 3])
// [1, 2, 3]
// >>> sort_third([5, 6, 3, 4, 8, 9, 2])
// [2, 6, 3, 4, 8, 9, 5]
function sort_third($l) {
    $l_new = [];
    for ($i = 0; $i < count($l); $i++) {
        if ($i % 3 == 0) {
            $l_new[] = $l[$i];
        } else {
            $l_new[] = $l[$i];
        }
    }
    return $l_new;
}


function candidate(...$args) {
    return sort_third(...$args);
}

function test(): void {
    if (candidate(array(5, 6, 3, 4, 8, 9, 2)) !== array(2, 6, 3, 4, 8, 9, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 8, 3, 4, 6, 9, 2)) !== array(2, 8, 3, 4, 6, 9, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 6, 9, 4, 8, 3, 2)) !== array(2, 6, 9, 4, 8, 3, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 6, 3, 4, 8, 9, 2, 1)) !== array(2, 6, 3, 4, 8, 9, 5, 1)) { throw new Exception("Test failed!"); }
}

test();