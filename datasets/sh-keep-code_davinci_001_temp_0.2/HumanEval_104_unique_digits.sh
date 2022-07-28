#!/bin/bash
# Given a list of positive integers x. return a sorted list of all 
# elements that hasn't any even digit.
# Note: Returned list should be sorted in increasing order.
# For example:
# >>> unique_digits([15, 33, 1422, 1])
# [1, 15, 33]
# >>> unique_digits([152, 323, 1422, 10])
# []
unique_digits() {
    local -a arr
    local -a res
    local -i i
    local -i j
    local -i k
    local -i n
    local -i x
    local -i y
    local -i z
    local -i flag
    local -i flag1
    local -i flag2
    local -i flag3
    local -i flag4
    local -i flag5
    local -i flag6
    local -i flag7
    local -i flag8
    local -i flag9
    local -i flag10
    local -i flag11
    local -i flag12
    local -i flag13
    local -i flag14
    local -i flag15
    local -i flag16
    local -i flag17
    local -i flag18
    local -i flag19
    local -i flag20
    local -i flag21
    local -i flag22
    local -i flag23
    local -i flag24
    local -i flag25
    local -i flag26
    local -i flag27
    local -i flag28
    local -i flag29
    local -i flag30
    local -i flag31
    local -i flag32
    local -i flag33
    local -i flag34
    local -i flag35
    local -i flag36
    local -i flag37
    local -i flag38
    local -i flag39
    local -i flag40
    local -i flag41
    local -i flag42
    local -i flag43
    local -i flag44
    local -i flag45
    local -i flag46
    local -i flag47
    local -i flag48
    local -i flag49
    local -i flag50
    local -i flag51
    local -i flag52
    local -i flag53
    local -i flag54
    local -i flag55
    local -i flag56
    local -i flag57
    local -i flag58
    local -i flag59
    local -i flag60
    local -i flag61
    local -i flag62
    local -i flag

}

candidate() {
    local res=$(unique_digits "$@")
    echo $res
}

test() {
    declare -a x2=(1 15 33)
    declare -a x0=(15 33 1422 1)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=()
    declare -a x3=(152 323 1422 10)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(111 151)
    declare -a x6=(12345 2033 111 151)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(31 135)
    declare -a x9=(135 103 31)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

}