#!/bin/bash
# Input to this function is a string representing musical notes in a special ASCII format.
# Your task is to parse this string and return list of integers corresponding to how many beats does each
# not last.
# Here is a legend:
# 'o' - whole note, lasts four beats
# 'o|' - half note, lasts two beats
# '.|' - quater note, lasts one beat
# >>> parse_music('o o| .| o| o| .| .| .| .| o o')
# [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
parse_music() {
    local -i beats=0
    local -a result
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q=0
    local -i r=0
    local -i s=0
    local -i t=0
    local -i u=0
    local -i v=0
    local -i w=0
    local -i x=0
    local -i y=0
    local -i z=0
    local -i a=0
    local -i b=0
    local -i c=0
    local -i d=0
    local -i e=0
    local -i f=0
    local -i g=0
    local -i h=0
    local -i i=0
    local -i j=0
    local -i k=0
    local -i l=0
    local -i m=0
    local -i n=0
    local -i o=0
    local -i p=0
    local -i q

}

candidate() {
    local res=$(parse_music "$@")
    echo $res
}

test() {
    declare -a x1=()
        x0=$(candidate '')
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(4 4 4 4)
        x2=$(candidate 'o o o o')
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(1 1 1 1)
        x4=$(candidate '.| .| .| .|')
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(2 2 1 1 4 4 4 4)
        x6=$(candidate 'o| o| .| .| o o o o')
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(2 1 2 1 4 2 4 2)
        x8=$(candidate 'o| .| o| .| o o| o o|')
    assert_equals "${x9[*]}" "${x8[*]}"

}