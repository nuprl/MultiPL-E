<?php
// Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
function car_race_collision($n) {
    $cars = [];
    for ($i = 0; $i < $n; $i++) {
        $cars[] = [
            'x' => 0,
            'y' => $i,
            'direction' => 'left'
        ];
    }
    for ($i = 0; $i < $n; $i++) {
        $cars[] = [
            'x' => 1,
            'y' => $n - $i - 1,
            'direction' => 'right'
        ];
    }
    $collisions = 0;
    for ($i = 0; $i < $n; $i++) {
        $car = $cars[$i];
        if ($car['direction'] == 'left') {
            $car['x']++;
        } else {
            $car['x']--;
        }
        if ($car['x'] == 0) {
            $collisions++;
        }
    }
    return $collisions;
}


function candidate(...$args) {
    return car_race_collision(...$args);
}

function test(): void {
    if (candidate(2) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(3) !== 9) { throw new Exception("Test failed!"); }
    if (candidate(4) !== 16) { throw new Exception("Test failed!"); }
    if (candidate(8) !== 64) { throw new Exception("Test failed!"); }
    if (candidate(10) !== 100) { throw new Exception("Test failed!"); }
}

test();