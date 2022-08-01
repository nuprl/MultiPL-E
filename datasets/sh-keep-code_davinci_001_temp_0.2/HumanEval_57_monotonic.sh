#!/bin/bash
# Return True is list elements are monotonically increasing or decreasing.
# >>> monotonic([1, 2, 4, 20])
# True
# >>> monotonic([1, 20, 4, 10])
# False
# >>> monotonic([4, 1, 0, -10])
# True
#
# $1 is a space-separated list
monotonic() {
    local list=$1
    local direction=0
    local last=0
    for i in $list; do
        if [ $last -gt $i ]; then
            if [ $direction -eq 0 ]; then
                direction=-1
            elif [ $direction -eq 1 ]; then
                return 1
            fi
        elif [ $last -lt $i ]; then
            if [ $direction -eq 0 ]; then
                direction=1
            elif [ $direction -eq -1 ]; then
                return 1
            fi
        fi
        last=$i
    done
    return 0

}

candidate() {
    monotonic "$@"
}

set -e
run_test() {
    [[ $(candidate "1 2 4 10") = "true" ]]
    [[ $(candidate "1 2 4 20") = "true" ]]
    [[ $(candidate "1 20 4 10") = "false" ]]
    [[ $(candidate "4 1 0 -10") = "true" ]]
    [[ $(candidate "4 1 1 0") = "true" ]]
    [[ $(candidate "1 2 3 2 5 60") = "false" ]]
    [[ $(candidate "1 2 3 4 5 60") = "true" ]]
    [[ $(candidate "9 9 9 9") = "true" ]]
}

run_test