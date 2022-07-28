<?php
// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater 
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
function triangle_area($a, $b, $c) {
  if ($a + $b > $c && $a + $c > $b && $b + $c > $a) {
    $s = ($a + $b + $c) / 2;
    $area = sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));
    return round($area, 2);
  }
  return -1;
}


function candidate(...$args) {
    return triangle_area(...$args);
}

function test(): void {
    if (candidate(3, 4, 5) !== 6.0) { throw new Exception("Test failed!"); }
    if (candidate(1, 2, 10) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(4, 8, 5) !== 8.18) { throw new Exception("Test failed!"); }
    if (candidate(2, 2, 2) !== 1.73) { throw new Exception("Test failed!"); }
    if (candidate(1, 2, 3) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(10, 5, 7) !== 16.25) { throw new Exception("Test failed!"); }
    if (candidate(2, 6, 3) !== -1) { throw new Exception("Test failed!"); }
    if (candidate(1, 1, 1) !== 0.43) { throw new Exception("Test failed!"); }
    if (candidate(2, 2, 10) !== -1) { throw new Exception("Test failed!"); }
}

test();