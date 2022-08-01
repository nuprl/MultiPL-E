#!/bin/bash
# Write a function that takes an integer a and returns True 
# if this ingeger is a cube of some integer number.
# Note: you may assume the input is always valid.
# Examples:
# iscube(1) ==> True
# iscube(2) ==> False
# iscube(-1) ==> True
# iscube(64) ==> True
# iscube(0) ==> True
# iscube(180) ==> False
#
# $1 is an integer
iscube() {
echo 0

}

candidate() {
    iscube "$@"
}

run_test() {
    [[ $(candidate 1) = true ]]
    [[ $(candidate 2) = false ]]
    [[ $(candidate -1) = true ]]
    [[ $(candidate 64) = true ]]
    [[ $(candidate 180) = false ]]
    [[ $(candidate 1000) = true ]]
    [[ $(candidate 0) = true ]]
    [[ $(candidate 1729) = false ]]
}

run_test