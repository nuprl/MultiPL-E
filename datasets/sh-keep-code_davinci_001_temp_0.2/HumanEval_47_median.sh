#!/bin/bash
# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
#
# $1 is a space-separated list
median() {
    local l="$1"
    local n=$(echo "$l" | wc -w)
    local m=$((n/2))
    local l2=$(echo "$l" | sort -n)
    if [ $n -eq 1 ]; then
        echo "$l2"
    elif [ $n -eq 2 ]; then
        echo "scale=1; ($l2[1] + $l2[2]) / 2" | bc
    elif [ $n -eq 3 ]; then
        echo "scale=1; ($l2[1] + $l2[2] + $l2[3]) / 3" | bc
    else
        echo "scale=1; ($l2[$m] + $l2[$m+1]) / 2" | bc
    fi

}

candidate() {
    median "$@"
}

set -e
run_test() {
    [[ $(candidate "3 1 2 4 5") = "3" ]]
    [[ $(candidate "-10 4 6 1000 10 20") = "8.0" ]]
    [[ $(candidate "5") = "5" ]]
    [[ $(candidate "6 5") = "5.5" ]]
    [[ $(candidate "8 1 3 9 9 2 7") = "7" ]]
}

run_test