#!/bin/bash
# You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
# cycpattern_check("abcd","abd") => False
# cycpattern_check("hello","ell") => True
# cycpattern_check("whassup","psus") => False
# cycpattern_check("abab","baa") => True
# cycpattern_check("efef","eeff") => False
# cycpattern_check("himenss","simen") => True
cycpattern_check() {
    local word=$1
    local pattern=$2
    local i=0
    local j=0
    local flag=0
    local len=${#word}
    local len_pattern=${#pattern}
    while [ $i -lt $len ]
    do
        if [ ${word:$i:1} == ${pattern:$j:1} ]
        then
            ((j++))
            if [ $j -eq $len_pattern ]
            then
                flag=1
                break
            fi
        else
            j=0
        fi
        ((i++))
    done
    echo $flag

}

candidate() {
    local res=$(cycpattern_check "$@")
    echo $res
}

test() {
        x0=$(candidate 'xyzw' 'xyw')
    assert_equals false "${x0[*]}"

        x1=$(candidate 'yello' 'ell')
    assert_equals true "${x1[*]}"

        x2=$(candidate 'whattup' 'ptut')
    assert_equals false "${x2[*]}"

        x3=$(candidate 'efef' 'fee')
    assert_equals true "${x3[*]}"

        x4=$(candidate 'abab' 'aabb')
    assert_equals false "${x4[*]}"

        x5=$(candidate 'winemtt' 'tinem')
    assert_equals true "${x5[*]}"

}