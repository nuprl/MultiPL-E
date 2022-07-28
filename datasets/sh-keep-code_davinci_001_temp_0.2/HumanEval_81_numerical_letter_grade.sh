#!/bin/bash
# It is the last week of the semester and the teacher has to give the grades
# to students. The teacher has been making her own algorithm for grading.
# The only problem is, she has lost the code she used for grading.
# She has given you a list of GPAs for some students and you have to write 
# a function that can output a list of letter grades using the following table:
# GPA       |    Letter grade
# 4.0                A+
# > 3.7                A 
# > 3.3                A- 
# > 3.0                B+
# > 2.7                B 
# > 2.3                B-
# > 2.0                C+
# > 1.7                C
# > 1.3                C-
# > 1.0                D+ 
# > 0.7                D 
# > 0.0                D-
# 0.0                E
# Example:
# grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ['A+', 'B', 'C-', 'C', 'A-']
numerical_letter_grade() {
    if [ $1 -ge 4.0 ]; then
        echo "A+"
    elif [ $1 -ge 3.7 ]; then
        echo "A"
    elif [ $1 -ge 3.3 ]; then
        echo "A-"
    elif [ $1 -ge 3.0 ]; then
        echo "B+"
    elif [ $1 -ge 2.7 ]; then
        echo "B"
    elif [ $1 -ge 2.3 ]; then
        echo "B-"
    elif [ $1 -ge 2.0 ]; then
        echo "C+"
    elif [ $1 -ge 1.7 ]; then
        echo "C"
    elif [ $1 -ge 1.3 ]; then
        echo "C-"
    elif [ $1 -ge 1.0 ]; then
        echo "D+"
    elif [ $1 -ge 0.7 ]; then
        echo "D"
    elif [ $1 -ge 0.0 ]; then
        echo "D-"
    else
        echo "E"
    fi

}

candidate() {
    local res=$(numerical_letter_grade "$@")
    echo $res
}

test() {
    declare -a x2=('A+' 'B' 'C-' 'C' 'A-')
    declare -a x0=(4.0 3 1.7 2 3.5)
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=('D+')
    declare -a x3=(1.2)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=('D-')
    declare -a x6=(0.5)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=('E')
    declare -a x9=(0.0)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=('D' 'D-' 'C-' 'B' 'B+')
    declare -a x12=(1.0 0.3 1.5 2.8 3.3)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

    declare -a x17=('E' 'D-')
    declare -a x15=(0.0 0.7)
    x16=$(candidate "${x15[*]}")
    assert_equals "${x17[*]}" "${x16[*]}"

}