#!/bin/bash
# Write a function that takes an integer a and returns True 
# if this ingeger is a cube of some integer number.
# Note: you may assume the input is always valid.
# Examples:
# iscube(1) ==> True
# iscube(2) ==> False
# iscube(-1) ==> True
# iscube(64) ==> True
# iscube(0) ==> True
# iscube(180) ==> False
iscube() {
    # your code here
    if [ $1 -eq 0 ]; then
        echo True
    elif [ $1 -lt 0 ]; then
        echo True
    else
        cube=$(echo "($1)^(1/3)" | bc -l)
        cube=${cube%.*}
        if [ $cube -eq 1 ]; then
            echo True
        else
            echo False
        fi
    fi

}

candidate() {
    local res=$(iscube "$@")
    echo $res
}

test() {
        x0=$(candidate 1)
    assert_equals true "${x0[*]}"

        x1=$(candidate 2)
    assert_equals false "${x1[*]}"

        x2=$(candidate -1)
    assert_equals true "${x2[*]}"

        x3=$(candidate 64)
    assert_equals true "${x3[*]}"

        x4=$(candidate 180)
    assert_equals false "${x4[*]}"

        x5=$(candidate 1000)
    assert_equals true "${x5[*]}"

        x6=$(candidate 0)
    assert_equals true "${x6[*]}"

        x7=$(candidate 1729)
    assert_equals false "${x7[*]}"

}