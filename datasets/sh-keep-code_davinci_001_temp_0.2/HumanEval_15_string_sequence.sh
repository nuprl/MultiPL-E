#!/bin/bash
# Return a string containing space-delimited numbers starting from 0 upto n inclusive.
# >>> string_sequence(0)
# '0'
# >>> string_sequence(5)
# '0 1 2 3 4 5'
string_sequence() {
echo 0

}

candidate() {
    string_sequence "$@"
}

run_test() {
    [[ $(candidate 0) = 0 ]]
    [[ $(candidate 3) = "0 1 2 3" ]]
    [[ $(candidate 10) = "0 1 2 3 4 5 6 7 8 9 10" ]]
}

run_test