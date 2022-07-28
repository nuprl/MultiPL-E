#!/bin/bash
# Find how many times a given substring can be found in the original string. Count overlaping cases.
# >>> how_many_times('', 'a')
# 0
# >>> how_many_times('aaa', 'a')
# 3
# >>> how_many_times('aaaa', 'aa')
# 3
how_many_times() {
    local string="$1"
    local substring="$2"
    local count=0
    local i=0
    local j=0
    while [ $i -lt ${#string} ]
    do
        if [ ${string:$i:${#substring}} = $substring ]
        then
            count=$((count+1))
            i=$((i+${#substring}))
        else
            i=$((i+1))
        fi
    done
    echo $count

}

candidate() {
    local res=$(how_many_times "$@")
    echo $res
}

test() {
        x0=$(candidate '' 'x')
    assert_equals 0 "${x0[*]}"

        x1=$(candidate 'xyxyxyx' 'x')
    assert_equals 4 "${x1[*]}"

        x2=$(candidate 'cacacacac' 'cac')
    assert_equals 4 "${x2[*]}"

        x3=$(candidate 'john doe' 'john')
    assert_equals 1 "${x3[*]}"

}