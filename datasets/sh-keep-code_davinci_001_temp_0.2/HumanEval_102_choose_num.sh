#!/bin/bash
# This function takes two positive numbers x and y and returns the
# biggest even integer number that is in the range [x, y] inclusive. If 
# there's no such number, then the function should return -1.
# For example:
# choose_num(12, 15) = 14
# choose_num(13, 12) = -1
#
# $1 is an integer
# $2 is an integer
choose_num() {
    if [ $1 -gt $2 ]; then
        echo -1
    else
        for ((i=$1;i<=$2;i++)); do
            if [ $((i%2)) -eq 0 ]; then
                echo $i
                return
            fi
        done
    fi

}

candidate() {
    choose_num "$@"
}

set -e
run_test() {
    [[ $(candidate "12" "15") = "14" ]]
    [[ $(candidate "13" "12") = "-1" ]]
    [[ $(candidate "33" "12354") = "12354" ]]
    [[ $(candidate "5234" "5233") = "-1" ]]
    [[ $(candidate "6" "29") = "28" ]]
    [[ $(candidate "27" "10") = "-1" ]]
    [[ $(candidate "7" "7") = "-1" ]]
    [[ $(candidate "546" "546") = "546" ]]
}

run_test