#!/bin/bash
# Imagine a road that's a perfectly straight infinitely long line.
# n cars are driving left to right;  simultaneously, a different set of n cars
# are driving right to left.   The two sets of cars start out being very far from
# each other.  All cars move in the same speed.  Two cars are said to collide
# when a car that's moving left to right hits a car that's moving right to left.
# However, the cars are infinitely sturdy and strong; as a result, they continue moving
# in their trajectory as if they did not collide.
# This function outputs the number of such collisions.
#
# $1 is an integer
car_race_collision() {
    local n=$1
    local collisions=0
    local cars_left=()
    local cars_right=()
    for (( i=0; i<n; i++ )); do
        cars_left[$i]=$i
        cars_right[$i]=$((n-i-1))
    done
    while [ ${#cars_left[@]} -gt 0 ]; do
        local car_left=${cars_left[0]}
        local car_right=${cars_right[0]}
        if [ $car_left -eq $car_right ]; then
            collisions=$((collisions+1))
            unset cars_left[0]
            unset cars_right[0]
        else
            unset cars_left[0]
            cars_left[${#cars_left[@]}]=$((car_left+1))
            unset cars_right[0]
            cars_right[${#cars_right[@]}]=$((car_right-1))
        fi
    done
    echo $collisions

}

candidate() {
    car_race_collision "$@"
}

run_test() {
    [[ $(candidate 2) = 4 ]]
    [[ $(candidate 3) = 9 ]]
    [[ $(candidate 4) = 16 ]]
    [[ $(candidate 8) = 64 ]]
    [[ $(candidate 10) = 100 ]]
}

run_test