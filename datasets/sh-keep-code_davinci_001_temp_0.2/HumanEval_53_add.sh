#!/bin/bash
# Add two numbers x and y
# >>> add(2, 3)
# 5
# >>> add(5, 7)
# 12
add() {
    echo $(( $1 + $2 ))

}

candidate() {
    local res=$(add "$@")
    echo $res
}

test() {
        x0=$(candidate 0 1)
    assert_equals 1 "${x0[*]}"

        x1=$(candidate 1 0)
    assert_equals 1 "${x1[*]}"

        x2=$(candidate 2 3)
    assert_equals 5 "${x2[*]}"

        x3=$(candidate 5 7)
    assert_equals 12 "${x3[*]}"

        x4=$(candidate 7 5)
    assert_equals 12 "${x4[*]}"

}