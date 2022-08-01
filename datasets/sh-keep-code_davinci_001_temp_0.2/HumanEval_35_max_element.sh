#!/bin/bash
# Return maximum element in the list.
# >>> max_element([1, 2, 3])
# 3
# >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
# 123
#
# $1 is a space-separated list
max_element() {
    local max=0
    for i in $1; do
        if [ $i -gt $max ]; then
            max=$i
        fi
    done
    echo $max

}

candidate() {
    max_element "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 3") = "3" ]]
    [[ $(candidate "5 3 -5 2 -3 3 9 0 124 1 -10") = "124" ]]
}

run_test