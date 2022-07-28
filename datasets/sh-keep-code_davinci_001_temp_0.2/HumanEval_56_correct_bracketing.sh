#!/bin/bash
# brackets is a string of "<" and ">".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("<")
# False
# >>> correct_bracketing("<>")
# True
# >>> correct_bracketing("<<><>>")
# True
# >>> correct_bracketing("><<>")
# False
correct_bracketing() {
    local brackets="$1"
    local count=0
    for (( i=0; i<${#brackets}; i++ )); do
        if [[ "${brackets:$i:1}" == "<" ]]; then
            (( count++ ))
        elif [[ "${brackets:$i:1}" == ">" ]]; then
            (( count-- ))
        fi
        if [[ $count -lt 0 ]]; then
            return 1
        fi
    done
    if [[ $count -eq 0 ]]; then
        return 0
    else
        return 1
    fi

}

candidate() {
    local res=$(correct_bracketing "$@")
    echo $res
}

test() {
        x0=$(candidate '<>')
    assert_equals true "${x0[*]}"

        x1=$(candidate '<<><>>')
    assert_equals true "${x1[*]}"

        x2=$(candidate '<><><<><>><>')
    assert_equals true "${x2[*]}"

        x3=$(candidate '<><><<<><><>><>><<><><<>>>')
    assert_equals true "${x3[*]}"

        x4=$(candidate '<<<><>>>>')
    assert_equals false "${x4[*]}"

        x5=$(candidate '><<>')
    assert_equals false "${x5[*]}"

        x6=$(candidate '<')
    assert_equals false "${x6[*]}"

        x7=$(candidate '<<<<')
    assert_equals false "${x7[*]}"

        x8=$(candidate '>')
    assert_equals false "${x8[*]}"

        x9=$(candidate '<<>')
    assert_equals false "${x9[*]}"

        x10=$(candidate '<><><<><>><>><<>')
    assert_equals false "${x10[*]}"

        x11=$(candidate '<><><<><>><>>><>')
    assert_equals false "${x11[*]}"

}