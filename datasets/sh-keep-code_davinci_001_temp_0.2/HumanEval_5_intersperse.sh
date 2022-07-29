#!/bin/bash
# Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
# >>> intersperse([], 4)
# []
# >>> intersperse([1, 2, 3], 4)
# [1, 4, 2, 4, 3]
#
# $1 is a space-separated list
intersperse() {
echo 0

}

candidate() {
    intersperse "$@"
}

run_test() {
    [[ $(candidate "" 7) = "" ]]
    [[ $(candidate "5 6 3 2" 8) = "5 8 6 8 3 8 2" ]]
    [[ $(candidate "2 2 2" 2) = "2 2 2 2 2" ]]
}

run_test