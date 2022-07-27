<?php
// Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12
function add($x, $y) {
    return $x + $y;
}


function candidate(...$args) {
    return add(...$args);
}

function test(): void {
    if (candidate(0, 1) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(1, 0) !== 1) { throw new Exception("Test failed!"); }
    if (candidate(2, 3) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(5, 7) !== 12) { throw new Exception("Test failed!"); }
    if (candidate(7, 5) !== 12) { throw new Exception("Test failed!"); }
}

test();