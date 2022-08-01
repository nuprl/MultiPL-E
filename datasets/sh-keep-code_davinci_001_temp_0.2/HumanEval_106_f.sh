#!/bin/bash
# Implement the function f that takes n as a parameter,
# and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
# or the sum of numbers from 1 to i otherwise.
# i starts from 1.
# the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
# Example:
# f(5) == [1, 2, 6, 24, 15]
#
# $1 is an integer
f() {
    local n=$1
    local i=1
    local result=()
    while [ $i -le $n ]
    do
        if [ $((i%2)) -eq 0 ]
        then
            result[$i]=$((i*(i-1)*(i-2)*(i-3)*(i-4)*(i-5)*(i-6)*(i-7)*(i-8)*(i-9)*(i-10)))
        else
            local sum=0
            for j in $(seq 1 $i)
            do
                sum=$((sum+j))
            done
            result[$i]=$sum
        fi
        ((i++))
    done
    echo ${result[@]}

}

candidate() {
    f "$@"
}

run_test() {
    [[ $(candidate 5) = "1 2 6 24 15" ]]
    [[ $(candidate 7) = "1 2 6 24 15 720 28" ]]
    [[ $(candidate 1) = "1" ]]
    [[ $(candidate 3) = "1 2 6" ]]
}

run_test