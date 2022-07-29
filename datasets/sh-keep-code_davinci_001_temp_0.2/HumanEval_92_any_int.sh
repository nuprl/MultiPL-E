#!/bin/bash
# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
any_int() {
echo 0

}

candidate() {
    any_int "$@"
}

run_test() {
    [[ $(candidate 2 3 1) = true ]]
    [[ $(candidate 2.5 2 3) = false ]]
    [[ $(candidate 1.5 5 3.5) = false ]]
    [[ $(candidate 2 6 2) = false ]]
    [[ $(candidate 4 2 2) = true ]]
    [[ $(candidate 2.2 2.2 2.2) = false ]]
    [[ $(candidate -4 6 2) = true ]]
    [[ $(candidate 2 1 1) = true ]]
    [[ $(candidate 3 4 7) = true ]]
    [[ $(candidate 3.0 4 7) = false ]]
}

run_test