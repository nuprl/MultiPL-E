#!/bin/bash
# You are given two intervals,
# where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
# The given intervals are closed which means that the interval (start, end)
# includes both start and end.
# For each given interval, it is assumed that its start is less or equal its end.
# Your task is to determine whether the length of intersection of these two 
# intervals is a prime number.
# Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
# which its length is 1, which not a prime number.
# If the length of the intersection is a prime number, return "YES",
# otherwise, return "NO".
# If the two intervals don't intersect, return "NO".
# [input/output] samples:
# intersection((1, 2), (2, 3)) ==> "NO"
# intersection((-1, 1), (0, 4)) ==> "NO"
# intersection((-3, -1), (-5, 5)) ==> "YES"
#
# $1 is a space-separated list
# $2 is a space-separated list
intersection() {
    local -a arr1=($1)
    local -a arr2=($2)
    local -a arr3
    local -a arr4
    local -a arr5
    local -a arr6
    local -a arr7
    local -a arr8
    local -a arr9
    local -a arr10
    local -a arr11
    local -a arr12
    local -a arr13
    local -a arr14
    local -a arr15
    local -a arr16
    local -a arr17
    local -a arr18
    local -a arr19
    local -a arr20
    local -a arr21
    local -a arr22
    local -a arr23
    local -a arr24
    local -a arr25
    local -a arr26
    local -a arr27
    local -a arr28
    local -a arr29
    local -a arr30
    local -a arr31
    local -a arr32
    local -a arr33
    local -a arr34
    local -a arr35
    local -a arr36
    local -a arr37
    local -a arr38
    local -a arr39
    local -a arr40
    local -a arr41
    local -a arr42
    local -a arr43
    local -a arr44
    local -a arr45
    local -a arr46
    local -a arr47
    local -a arr48
    local -a arr49
    local -a arr50
    local -a arr51
    local -a arr52
    local -a arr53
    local -a arr54
    local -a arr55
    local -a arr56
    local -a arr57
    local -a arr58
    local -a arr59
    local -a arr60
    local -a arr61
    local -a arr62
    local -a arr63
    local -a arr64
    local -a arr65
    local -a arr66
    local -a arr67
    local -a arr68
    local -a arr69
    local -a arr70
   

}

candidate() {
    intersection "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2" "2 3") = "NO" ]]
    [[ $(candidate "-1 1" "0 4") = "NO" ]]
    [[ $(candidate "-3 -1" "-5 5") = "YES" ]]
    [[ $(candidate "-2 2" "-4 0") = "YES" ]]
    [[ $(candidate "-11 2" "-1 -1") = "NO" ]]
    [[ $(candidate "1 2" "3 5") = "NO" ]]
    [[ $(candidate "1 2" "1 2") = "NO" ]]
    [[ $(candidate "-2 -2" "-3 -2") = "NO" ]]
}

run_test