#!/bin/bash
# Given list of integers, return list in strange order.
# Strange sorting, is when you start with the minimum value,
# then maximum of the remaining integers, then minimum and so on.
# Examples:
# strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
# strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
# strange_sort_list([]) == []
#
# $1 is a space-separated list
strange_sort_list() {
echo 0

}

candidate() {
    strange_sort_list "$@"
}

run_test() {
    [[ $(candidate "1 2 3 4") = "1 4 2 3" ]]
    [[ $(candidate "5 6 7 8 9") = "5 9 6 8 7" ]]
    [[ $(candidate "1 2 3 4 5") = "1 5 2 4 3" ]]
    [[ $(candidate "5 6 7 8 9 1") = "1 9 5 8 6 7" ]]
    [[ $(candidate "5 5 5 5") = "5 5 5 5" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "1 2 3 4 5 6 7 8") = "1 8 2 7 3 6 4 5" ]]
    [[ $(candidate "0 2 2 2 5 5 -5 -5") = "-5 5 -5 5 0 2 2 2" ]]
    [[ $(candidate "111111") = "111111" ]]
}

run_test