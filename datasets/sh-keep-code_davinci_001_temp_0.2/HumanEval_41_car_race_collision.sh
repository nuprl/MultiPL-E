#!/bin/bash
# Imagine a road that's a perfectly straight infinitely long line.
# n cars are driving left to right;  simultaneously, a different set of n cars
# are driving right to left.   The two sets of cars start out being very far from
# each other.  All cars move in the same speed.  Two cars are said to collide
# when a car that's moving left to right hits a car that's moving right to left.
# However, the cars are infinitely sturdy and strong; as a result, they continue moving
# in their trajectory as if they did not collide.
# This function outputs the number of such collisions.
car_race_collision() {
    local n=$1
    local collisions=0
    for ((i=0; i<n; i++)); do
        for ((j=0; j<n; j++)); do
            if ((i != j)); then
                if ((i < j)); then
                    if ((i < n/2 && j >= n/2)); then
                        collisions=$((collisions+1))
                    fi
                else
                    if ((i >= n/2 && j < n/2)); then
                        collisions=$((collisions+1))
                    fi
                fi
            fi
        done
    done
    echo $collisions

}

candidate() {
    local res=$(car_race_collision "$@")
    echo $res
}

test() {
        x0=$(candidate 2)
    assert_equals 4 "${x0[*]}"

        x1=$(candidate 3)
    assert_equals 9 "${x1[*]}"

        x2=$(candidate 4)
    assert_equals 16 "${x2[*]}"

        x3=$(candidate 8)
    assert_equals 64 "${x3[*]}"

        x4=$(candidate 10)
    assert_equals 100 "${x4[*]}"

}