#!/bin/bash
# Return list with elements incremented by 1.
# >>> incr_list([1, 2, 3])
# [2, 3, 4]
# >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
# [6, 4, 6, 3, 4, 4, 10, 1, 124]
#
# $1 is a space-separated list
incr_list() {
    local list=($1)
    local list_len=${#list[@]}
    local i=0
    while [ $i -lt $list_len ]; do
        list[$i]=$((list[$i]+1))
        i=$((i+1))
    done
    echo "${list[@]}"

}

candidate() {
    incr_list "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "3 2 1") = "4 3 2" ]]
    [[ $(candidate "5 2 5 2 3 3 9 0 123") = "6 3 6 3 4 4 10 1 124" ]]
}

run_test