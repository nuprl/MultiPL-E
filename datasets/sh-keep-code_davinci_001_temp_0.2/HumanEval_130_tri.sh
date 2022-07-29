#!/bin/bash
# Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
# the last couple centuries. However, what people don't know is Tribonacci sequence.
# Tribonacci sequence is defined by the recurrence:
# tri(1) = 3
# tri(n) = 1 + n / 2, if n is even.
# tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
# For example:
# tri(2) = 1 + (2 / 2) = 2
# tri(4) = 3
# tri(3) = tri(2) + tri(1) + tri(4)
# = 2 + 3 + 3 = 8 
# You are given a non-negative integer number n, you have to a return a list of the 
# first n + 1 numbers of the Tribonacci sequence.
# Examples:
# tri(3) = [1, 3, 2, 8]
tri() {
echo 0

}

candidate() {
    tri "$@"
}

run_test() {
    [[ $(candidate 3) = "1 3 2 8" ]]
    [[ $(candidate 4) = "1 3 2 8 3" ]]
    [[ $(candidate 5) = "1 3 2 8 3 15" ]]
    [[ $(candidate 6) = "1 3 2 8 3 15 4" ]]
    [[ $(candidate 7) = "1 3 2 8 3 15 4 24" ]]
    [[ $(candidate 8) = "1 3 2 8 3 15 4 24 5" ]]
    [[ $(candidate 9) = "1 3 2 8 3 15 4 24 5 35" ]]
    [[ $(candidate 20) = "1 3 2 8 3 15 4 24 5 35 6 48 7 63 8 80 9 99 10 120 11" ]]
    [[ $(candidate 0) = "1" ]]
    [[ $(candidate 1) = "1 3" ]]
}

run_test