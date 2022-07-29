<?php
// Write a function that takes an integer a and returns True 
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> True
// iscube(2) ==> False
// iscube(-1) ==> True
// iscube(64) ==> True
// iscube(0) ==> True
// iscube(180) ==> False
function iscube($a) {
    $cube = pow($a, (1/3));
    if ($cube == round($cube)) {
        return true;
    } else {
        return false;
    }
}


function candidate(...$args) {
    return iscube(...$args);
}

function test(): void {
    if (candidate(1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(2) !== false) { throw new Exception("Test failed!"); }
    if (candidate(-1) !== true) { throw new Exception("Test failed!"); }
    if (candidate(64) !== true) { throw new Exception("Test failed!"); }
    if (candidate(180) !== false) { throw new Exception("Test failed!"); }
    if (candidate(1000) !== true) { throw new Exception("Test failed!"); }
    if (candidate(0) !== true) { throw new Exception("Test failed!"); }
    if (candidate(1729) !== false) { throw new Exception("Test failed!"); }
}

test();