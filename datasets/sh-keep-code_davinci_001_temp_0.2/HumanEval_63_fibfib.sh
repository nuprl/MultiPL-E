#!/bin/bash
# The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
# fibfib(0) == 0
# fibfib(1) == 0
# fibfib(2) == 1
# fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
# Please write a function to efficiently compute the n-th element of the fibfib number sequence.
# >>> fibfib(1)
# 0
# >>> fibfib(5)
# 4
# >>> fibfib(8)
# 24
#
# $1 is an integer
fibfib() {
    if [ $1 -eq 0 ]; then
        echo 0
    elif [ $1 -eq 1 ]; then
        echo 0
    elif [ $1 -eq 2 ]; then
        echo 1
    else
        fibfib $(( $1 - 1 ))
        fibfib $(( $1 - 2 ))
        fibfib $(( $1 - 3 ))
        echo $(( $1 - 1 + $1 - 2 + $1 - 3 ))
    fi

}

candidate() {
    fibfib "$@"
}

run_test() {
    [[ $(candidate 2) = 1 ]]
    [[ $(candidate 1) = 0 ]]
    [[ $(candidate 5) = 4 ]]
    [[ $(candidate 8) = 24 ]]
    [[ $(candidate 10) = 81 ]]
    [[ $(candidate 12) = 274 ]]
    [[ $(candidate 14) = 927 ]]
}

run_test