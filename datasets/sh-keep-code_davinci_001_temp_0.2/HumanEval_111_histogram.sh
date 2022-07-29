#!/bin/bash
# Given a string representing a space separated lowercase letters, return a dictionary
# of the letter with the most repetition and containing the corresponding count.
# If several letters have the same occurrence, return all of them.
# Example:
# histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
# histogram('a b b a') == {'a': 2, 'b': 2}
# histogram('a b c a b') == {'a': 2, 'b': 2}
# histogram('b b b b a') == {'b': 4}
# histogram('') == {}
histogram() {
echo 0

}

candidate() {
    histogram "$@"
}

run_test() {
    [[ $(candidate "a b b a") = "a,2\nb,2" ]]
    [[ $(candidate "a b c a b") = "a,2\nb,2" ]]
    [[ $(candidate "a b c d g") = "a,1\nb,1\nc,1\nd,1\ng,1" ]]
    [[ $(candidate "r t g") = "r,1\nt,1\ng,1" ]]
    [[ $(candidate "b b b b a") = "b,4" ]]
    [[ $(candidate "r t g") = "r,1\nt,1\ng,1" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate a) = "a,1" ]]
}

run_test