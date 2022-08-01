#!/bin/bash
# xs represent coefficients of a polynomial.
# xs[0] + xs[1] * x + xs[2] * x^2 + ....
# Return derivative of this polynomial in the same form.
# >>> derivative([3, 1, 2, 4, 5])
# [1, 4, 12, 20]
# >>> derivative([1, 2, 3])
# [2, 6]
#
# $1 is a space-separated list
derivative() {
    local xs=($1)
    local result=()
    for ((i=1; i<${#xs[@]}; i++)); do
        result+=(${xs[i]}*$i)
    done
    echo ${result[@]}

}

candidate() {
    derivative "$@"
}

run_test() {
    [[ $(candidate "3 1 2 4 5") = "1 4 12 20" ]]
    [[ $(candidate "1 2 3") = "2 6" ]]
    [[ $(candidate "3 2 1") = "2 2" ]]
    [[ $(candidate "3 2 1 0 4") = "2 2 0 16" ]]
    [[ $(candidate "1") = "" ]]
}

run_test