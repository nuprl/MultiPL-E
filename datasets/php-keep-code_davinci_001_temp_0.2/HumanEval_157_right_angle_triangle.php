<?php
// Given the lengths of the three sides of a triangle. Return True if the three
// sides form a right-angled triangle, False otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or 
// 90 degree.
// Example:
// right_angle_triangle(3, 4, 5) == True
// right_angle_triangle(1, 2, 3) == False
function right_angle_triangle($a, $b, $c) {
    if ($a > 0 && $b > 0 && $c > 0) {
        if ($a > $b && $a > $c) {
            if ($b + $c > $a) {
                return true;
            }
        } elseif ($b > $a && $b > $c) {
            if ($a + $c > $b) {
                return true;
            }
        } elseif ($c > $a && $c > $b) {
            if ($a + $b > $c) {
                return true;
            }
        }
    }
    return false;
}


function candidate(...$args) {
    return right_angle_triangle(...$args);
}

function test(): void {
    if (candidate(3, 4, 5) !== true) { throw new Exception("Test failed!"); }
    if (candidate(1, 2, 3) !== false) { throw new Exception("Test failed!"); }
    if (candidate(10, 6, 8) !== true) { throw new Exception("Test failed!"); }
    if (candidate(2, 2, 2) !== false) { throw new Exception("Test failed!"); }
    if (candidate(7, 24, 25) !== true) { throw new Exception("Test failed!"); }
    if (candidate(10, 5, 7) !== false) { throw new Exception("Test failed!"); }
    if (candidate(5, 12, 13) !== true) { throw new Exception("Test failed!"); }
    if (candidate(15, 8, 17) !== true) { throw new Exception("Test failed!"); }
    if (candidate(48, 55, 73) !== true) { throw new Exception("Test failed!"); }
    if (candidate(1, 1, 1) !== false) { throw new Exception("Test failed!"); }
    if (candidate(2, 2, 10) !== false) { throw new Exception("Test failed!"); }
}

test();