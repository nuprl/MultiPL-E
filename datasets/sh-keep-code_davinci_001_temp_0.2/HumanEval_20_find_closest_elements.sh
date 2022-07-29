#!/bin/bash
# From a supplied list of numbers (of length at least two) select and return two that are the closest to each
# other and return them in order (smaller number, larger number).
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
# (2.0, 2.2)
# >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
# (2.0, 2.0)
#
# $1 is a space-separated list
find_closest_elements() {
echo 0

}

candidate() {
    find_closest_elements "$@"
}

run_test() {
    [[ $(candidate "1.0 2.0 3.9 4.0 5.0 2.2") = "3.9 4.0" ]]
    [[ $(candidate "1.0 2.0 5.9 4.0 5.0") = "5.0 5.9" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.2") = "2.0 2.2" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0 2.0") = "2.0 2.0" ]]
    [[ $(candidate "1.1 2.2 3.1 4.1 5.1") = "2.2 3.1" ]]
}

run_test