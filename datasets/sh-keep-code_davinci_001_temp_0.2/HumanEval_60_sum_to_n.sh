#!/bin/bash
# sum_to_n is a function that sums numbers from 1 to n.
# >>> sum_to_n(30)
# 465
# >>> sum_to_n(100)
# 5050
# >>> sum_to_n(5)
# 15
# >>> sum_to_n(10)
# 55
# >>> sum_to_n(1)
# 1
#
# $1 is an integer
sum_to_n() {
    if [ $1 -eq 1 ]; then
        echo 1
    else
        echo $(( $1 + $(sum_to_n $(($1 - 1))) ))
    fi

}

candidate() {
    sum_to_n "$@"
}

set -e
run_test() {
    [[ $(candidate "1") = "1" ]]
    [[ $(candidate "6") = "21" ]]
    [[ $(candidate "11") = "66" ]]
    [[ $(candidate "30") = "465" ]]
    [[ $(candidate "100") = "5050" ]]
}

run_test