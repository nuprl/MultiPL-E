#!/bin/bash
# Check if in given list of numbers, are any two numbers closer to each other than
# given threshold.
# >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
# False
# >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
# True
#
# $1 is a space-separated list
has_close_elements() {
echo 0

}

candidate() {
    has_close_elements "$@"
}

run_test() {
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2" 0.3) = true ]]
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2" 0.05) = false ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0" 0.95) = true ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0" 0.8) = false ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.0" 0.1) = true ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1" 1.0) = true ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1" 0.5) = false ]]
}

run_test