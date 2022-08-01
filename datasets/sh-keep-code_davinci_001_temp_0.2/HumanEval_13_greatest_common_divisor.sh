#!/bin/bash
# Return a greatest common divisor of two integers a and b
# >>> greatest_common_divisor(3, 5)
# 1
# >>> greatest_common_divisor(25, 15)
# 5
#
# $1 is an integer
# $2 is an integer
greatest_common_divisor() {
    if [ $1 -eq $2 ]; then
        echo $1
    elif [ $1 -gt $2 ]; then
        greatest_common_divisor $(($1 - $2)) $2
    else
        greatest_common_divisor $1 $(($2 - $1))
    fi

}

candidate() {
    greatest_common_divisor "$@"
}

set -e
run_test() {
    [[ $(candidate "3" "7") = "1" ]]
    [[ $(candidate "10" "15") = "5" ]]
    [[ $(candidate "49" "14") = "7" ]]
    [[ $(candidate "144" "60") = "12" ]]
}

run_test