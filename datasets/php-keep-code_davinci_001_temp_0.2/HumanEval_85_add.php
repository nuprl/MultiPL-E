<?php
// Given a non-empty list of integers lst. add the even elements that are at odd indices..
// Examples:
// add([4, 2, 6, 7]) ==> 2
function add($lst) {
    $sum = 0;
    for ($i = 0; $i < count($lst); $i++) {
        if ($i % 2 == 1 && $lst[$i] % 2 == 0) {
            $sum += $lst[$i];
        }
    }
    return $sum;
}


function candidate(...$args) {
    return add(...$args);
}

function test(): void {
    if (candidate(array(4, 88)) !== 88) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 5, 6, 7, 2, 122)) !== 122) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 0, 6, 7)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(4, 4, 6, 8)) !== 12) { throw new Exception("Test failed!"); }
}

test();