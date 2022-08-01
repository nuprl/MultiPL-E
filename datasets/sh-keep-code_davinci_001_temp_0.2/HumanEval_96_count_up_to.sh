#!/bin/bash
# Implement a function that takes an non-negative integer and returns an array of the first n
# integers that are prime numbers and less than n.
# for example:
# count_up_to(5) => [2,3]
# count_up_to(11) => [2,3,5,7]
# count_up_to(0) => []
# count_up_to(20) => [2,3,5,7,11,13,17,19]
# count_up_to(1) => []
# count_up_to(18) => [2,3,5,7,11,13,17]
#
# $1 is an integer
count_up_to() {
echo 0

}

candidate() {
    count_up_to "$@"
}

run_test() {
    [[ $(candidate 5) = "2 3" ]]
    [[ $(candidate 6) = "2 3 5" ]]
    [[ $(candidate 7) = "2 3 5" ]]
    [[ $(candidate 10) = "2 3 5 7" ]]
    [[ $(candidate 0) = "" ]]
    [[ $(candidate 22) = "2 3 5 7 11 13 17 19" ]]
    [[ $(candidate 1) = "" ]]
    [[ $(candidate 18) = "2 3 5 7 11 13 17" ]]
    [[ $(candidate 47) = "2 3 5 7 11 13 17 19 23 29 31 37 41 43" ]]
    [[ $(candidate 101) = "2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97" ]]
}

run_test