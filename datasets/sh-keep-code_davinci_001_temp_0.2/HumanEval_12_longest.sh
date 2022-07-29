#!/bin/bash
# Out of list of strings, return the longest one. Return the first one in case of multiple
# strings of the same length. Return None in case the input list is empty.
# >>> longest([])
# >>> longest(['a', 'b', 'c'])
# 'a'
# >>> longest(['a', 'bb', 'ccc'])
# 'ccc'
#
# $1 is a space-separated list
longest() {
echo 0

}

candidate() {
    longest "$@"
}

run_test() {
    [[ $(candidate "") = None ]]
    [[ $(candidate "x y z") = x ]]
    [[ $(candidate "x yyy zzzz www kkkk abc") = zzzz ]]
}

run_test