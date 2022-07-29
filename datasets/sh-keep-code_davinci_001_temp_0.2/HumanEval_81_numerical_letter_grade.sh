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
#
# $1 is a space-separated list
numerical_letter_grade() {
echo 0

}

candidate() {
    numerical_letter_grade "$@"
}

run_test() {
    [[ $(candidate "4.0 3 1.7 2 3.5") = "A+ B C- C A-" ]]
    [[ $(candidate "1.2") = "D+" ]]
    [[ $(candidate "0.5") = "D-" ]]
    [[ $(candidate "0.0") = "E" ]]
    [[ $(candidate "1.0 0.3 1.5 2.8 3.3") = "D D- C- B B+" ]]
    [[ $(candidate "0.0 0.7") = "E D-" ]]
}

run_test