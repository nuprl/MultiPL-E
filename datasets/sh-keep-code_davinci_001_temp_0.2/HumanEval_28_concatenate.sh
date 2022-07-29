#!/bin/bash
# Concatenate list of strings into a single string
# >>> concatenate([])
# ''
# >>> concatenate(['a', 'b', 'c'])
# 'abc'
#
# $1 is a space-separated list
concatenate() {
echo 0

}

candidate() {
    concatenate "$@"
}

run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "x y z") = xyz ]]
    [[ $(candidate "x y z w k") = xyzwk ]]
}

run_test