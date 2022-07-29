#!/bin/bash
# Create a function that takes integers, floats, or strings representing
# real numbers, and returns the larger variable in its given variable type.
# Return None if the values are equal.
# Note: If a real number is represented as a string, the floating point might be . or ,
# compare_one(1, 2.5) ➞ 2.5
# compare_one(1, "2,3") ➞ "2,3"
# compare_one("5,1", "6") ➞ "6"
# compare_one("1", 1) ➞ None
compare_one() {
echo 0

}

candidate() {
    compare_one "$@"
}

run_test() {
    [[ $(candidate 1 2) = 2 ]]
    [[ $(candidate 1 2.5) = 2.5 ]]
    [[ $(candidate 2 3) = 3 ]]
    [[ $(candidate 5 6) = 6 ]]
    [[ $(candidate 1 2,3) = 2,3 ]]
    [[ $(candidate 5,1 6) = 6 ]]
    [[ $(candidate 1 2) = 2 ]]
    [[ $(candidate 1 1) = None ]]
}

run_test