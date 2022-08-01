#!/bin/bash
# Create a function that takes a string as input which contains only square brackets.
# The function should return True if and only if there is a valid subsequence of brackets 
# where at least one bracket in the subsequence is nested.
# is_nested('[[]]') ➞ True
# is_nested('[]]]]]]][[[[[]') ➞ False
# is_nested('[][]') ➞ False
# is_nested('[]') ➞ False
# is_nested('[[][]]') ➞ True
# is_nested('[[]][[') ➞ True
#
# $1 is a string
is_nested() {
    # check if string contains any square brackets
    if [[ $1 == *"["* ]]; then
        # check if string contains any square brackets nested
        if [[ $1 == *"]"* ]]; then
            # check if string contains any square brackets nested
            if [[ $1 == *"]"*"["* ]]; then
                # check if string contains any square brackets nested
                if [[ $1 == *"]"*"["*"]"* ]]; then
                    # check if string contains any square brackets nested
                    if [[ $1 == *"]"*"["*"]"*"["* ]]; then
                        # check if string contains any square brackets nested
                        if [[ $1 == *"]"*"["*"]"*"["*"]"* ]]; then
                            # check if string contains any square brackets nested
                            if [[ $1 == *"]"*"["*"]"*"["*"]"*"["* ]]; then
                                # check if string contains any square brackets nested
                                if [[ $1 == *"]"*"["*"]"*"["*"]"*"["*"]"* ]]; then
                                    # check if string contains any square brackets nested
                                    if [[ $1 == *"]"*"["*"]"*"["*"]"*"["*"]"*"["* ]]; then
                                        # check if string contains any square brackets nested
                                        if [[ $1 == *"]"*"["*"]"*"["*"]"*"["*"]"*"["*"]"* ]]; then
                                            # check if string contains any square brackets nested
                                            if [[ $1 == *"]"*"["*"]"*"["*"]"*"["*"]"*"["*"]"*"["* ]]; then
                                                # check if string contains any square brackets nested
                                                if [[ $1 == *"]"*"["*"]"*"["*"]"*"["*"]"*"["*"]"*"["*"]"* ]]; then
                                                    # check if string contains any square brackets nested
                                                    if [[ $

}

candidate() {
    is_nested "$@"
}

run_test() {
    [[ $(candidate [[]]) = true ]]
    [[ $(candidate []]]]]]][[[[[]) = false ]]
    [[ $(candidate [][]) = false ]]
    [[ $(candidate []) = false ]]
    [[ $(candidate [[[[]]]]) = true ]]
    [[ $(candidate []]]]]]]]]]) = false ]]
    [[ $(candidate [][][[]]) = true ]]
    [[ $(candidate [[]) = false ]]
    [[ $(candidate []]) = false ]]
    [[ $(candidate [[]][[) = true ]]
    [[ $(candidate [[][]]) = true ]]
    [[ $(candidate "") = false ]]
    [[ $(candidate [[[[[[[[) = false ]]
    [[ $(candidate ]]]]]]]]) = false ]]
}

run_test