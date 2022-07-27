<?php
// You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of intersection of these two 
// intervals is a prime number.
// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
function intersection($interval1, $interval2) {
    $intersection = [max($interval1[0], $interval2[0]), min($interval1[1], $interval2[1])];
    if ($intersection[0] > $intersection[1]) {
        return "NO";
    }
    $length = $intersection[1] - $intersection[0] + 1;
    if ($length < 2) {
        return "NO";
    }
    if ($length == 2) {
        return "YES";
    }
    if ($length == 3) {
        return "NO";
    }
    if ($length == 4) {
        return "YES";
    }
    if ($length == 5) {
        return "NO";
    }
    if ($length == 6) {
        return "YES";
    }
    if ($length == 7) {
        return "NO";
    }
    if ($length == 8) {
        return "YES";
    }
    if ($length == 9) {
        return "NO";
    }
    if ($length == 10) {
        return "YES";
    }
    if ($length == 11) {
        return "NO";
    }
    if ($length == 12) {
        return "YES";
    }
    if ($length == 13) {
        return "NO";
    }
    if ($length == 14) {
        return "YES";
    }
    if ($length == 15) {
        return "NO";
    }
    if ($length == 16) {
        return "YES";
    }
    if ($length == 17) {
        return "NO";
    }
    if ($length == 18) {
        return "YES";
    }
    if ($length == 19) {
        return "NO";
    }
    if ($length == 20) {
        return "YES";
    }
    if ($length == 21) {
        return "NO";
    }
    if ($length == 22) {
        return "YES";
    }
    if ($length == 23) {
        return "NO";
    }


function candidate(...$args) {
    return intersection(...$args);
}

function test(): void {
    if (candidate(array(1, 2), array(2, 3)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 1), array(0, 4)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(-3, -1), array(-5, 5)) !== 'YES') { throw new Exception("Test failed!"); }
    if (candidate(array(-2, 2), array(-4, 0)) !== 'YES') { throw new Exception("Test failed!"); }
    if (candidate(array(-11, 2), array(-1, -1)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2), array(3, 5)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2), array(1, 2)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(-2, -2), array(-3, -2)) !== 'NO') { throw new Exception("Test failed!"); }
}

test();