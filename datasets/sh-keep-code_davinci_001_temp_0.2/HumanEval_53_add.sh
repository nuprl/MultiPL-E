#!/bin/bash
# Add two numbers x and y
# >>> add(2, 3)
# 5
# >>> add(5, 7)
# 12
#
# $1 is an integer
# $2 is an integer
add() {
  echo $(( $1 + $2 ))

}

candidate() {
    add "$@"
}

set -e
run_test() {
    [[ $(candidate "0" "1") = "1" ]]
    [[ $(candidate "1" "0") = "1" ]]
    [[ $(candidate "2" "3") = "5" ]]
    [[ $(candidate "5" "7") = "12" ]]
    [[ $(candidate "7" "5") = "12" ]]
}

run_test