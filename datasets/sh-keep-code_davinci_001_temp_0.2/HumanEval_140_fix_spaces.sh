#!/bin/bash
# Given a string text, replace all spaces in it with underscores, 
# and if a string has more than 2 consecutive spaces, 
# then replace all consecutive spaces with - 
# fix_spaces("Example") == "Example"
# fix_spaces("Example 1") == "Example_1"
# fix_spaces(" Example 2") == "_Example_2"
# fix_spaces(" Example   3") == "_Example-3"
fix_spaces() {
    echo "$1" | sed -e 's/ /_/g' | sed -e 's/\([^ ]\)\ \{2,\}/\1-/g'

}

candidate() {
    local res=$(fix_spaces "$@")
    echo $res
}

test() {
        x0=$(candidate "Example")
    assert_equals "Example" "${x0[*]}"

        x1=$(candidate "Mudasir Hanif ")
    assert_equals "Mudasir_Hanif_" "${x1[*]}"

        x2=$(candidate "Yellow Yellow  Dirty  Fellow")
    assert_equals "Yellow_Yellow__Dirty__Fellow" "${x2[*]}"

        x3=$(candidate "Exa   mple")
    assert_equals "Exa-mple" "${x3[*]}"

        x4=$(candidate "   Exa 1 2 2 mple")
    assert_equals "-Exa_1_2_2_mple" "${x4[*]}"

}