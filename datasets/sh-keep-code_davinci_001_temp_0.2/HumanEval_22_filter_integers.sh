#!/bin/bash
# Filter given list of any python values only for integers
# >>> filter_integers(['a', 3.14, 5])
# [5]
# >>> filter_integers([1, 2, 3, 'abc', {}, []])
# [1, 2, 3]
#
# $1 is a space-separated list
filter_integers() {
    echo "$1" | tr ' ' '\n' | grep -E '^[0-9]+$'

}

candidate() {
    filter_integers "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "4   23.2 9 adasd") = "4 9" ]]
    [[ $(candidate "3 c 3 3 a b") = "3 3 3" ]]
}

run_test