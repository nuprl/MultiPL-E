#!/bin/bash
# Return length of given string
# >>> strlen('')
# 0
# >>> strlen('abc')
# 3
#
# $1 is a string
strlen() {
echo 0

}

candidate() {
    strlen "$@"
}

run_test() {
    [[ $(candidate "") = 0 ]]
    [[ $(candidate x) = 1 ]]
    [[ $(candidate asdasnakj) = 9 ]]
}

run_test