<?php
// Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
function triangle_area($a, $h) {
	return ($a * $h) / 2;
}


function candidate(...$args) {
    return triangle_area(...$args);
}

function test(): void {
    if (candidate(5, 3) !== 7.5) { throw new Exception("Test failed!"); }
    if (candidate(2, 2) !== 2.0) { throw new Exception("Test failed!"); }
    if (candidate(10, 8) !== 40.0) { throw new Exception("Test failed!"); }
}

test();