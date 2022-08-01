#!/bin/bash
# Given a string text, replace all spaces in it with underscores, 
# and if a string has more than 2 consecutive spaces, 
# then replace all consecutive spaces with - 
# fix_spaces("Example") == "Example"
# fix_spaces("Example 1") == "Example_1"
# fix_spaces(" Example 2") == "_Example_2"
# fix_spaces(" Example   3") == "_Example-3"
#
# $1 is a string
fix_spaces() {
    echo "$1" | sed 's/\s/_/g' | sed 's/\s\+/-/g'

}

candidate() {
    fix_spaces "$@"
}

set -e
run_test() {
    [[ $(candidate "Example") = "Example" ]]
    [[ $(candidate "Mudasir Hanif ") = "Mudasir_Hanif_" ]]
    [[ $(candidate "Yellow Yellow  Dirty  Fellow") = "Yellow_Yellow__Dirty__Fellow" ]]
    [[ $(candidate "Exa   mple") = "Exa-mple" ]]
    [[ $(candidate "   Exa 1 2 2 mple") = "-Exa_1_2_2_mple" ]]
}

run_test