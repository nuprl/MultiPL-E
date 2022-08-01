#!/bin/bash
# Write a function which sorts the given list of integers
# in ascending order according to the sum of their digits.
# Note: if there are several items with similar sum of their digits,
# order them based on their index in original list.
# For example:
# >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
# >>> order_by_points([]) == []
#
# $1 is a space-separated list
order_by_points() {
    local -a arr
    local -a arr2
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
    local -a arr71
    local -

}

candidate() {
    order_by_points "$@"
}

set -e
run_test() {
    [[ $(candidate "1 11 -1 -11 -12") = "-1 -11 1 -12 11" ]]
    [[ $(candidate "1234 423 463 145 2 423 423 53 6 37 3457 3 56 0 46") = "0 2 3 6 53 423 423 423 1234 145 37 46 56 463 3457" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 -11 -32 43 54 -98 2 -3") = "-3 -32 -98 -11 1 2 43 54" ]]
    [[ $(candidate "1 2 3 4 5 6 7 8 9 10 11") = "1 10 2 11 3 4 5 6 7 8 9" ]]
    [[ $(candidate "0 6 6 -76 -21 23 4") = "-76 -21 0 4 23 6 6" ]]
}

run_test