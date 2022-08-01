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
    # your code here
    # $1 is a space-separated list
    # $2 is the letter grade
    # $3 is the numerical grade
    # $4 is the output list
    # $5 is the counter
    # $6 is the number of elements in the list
    # $7 is the letter grade
    # $8 is the numerical grade
    # $9 is the output list
    # $10 is the counter
    # $11 is the number of elements in the list
    # $12 is the letter grade
    # $13 is the numerical grade
    # $14 is the output list
    # $15 is the counter
    # $16 is the number of elements in the list
    # $17 is the letter grade
    # $18 is the numerical grade
    # $19 is the output list
    # $20 is the counter
    # $21 is the number of elements in the list
    # $22 is the letter grade
    # $23 is the numerical grade
    # $24 is the output list
    # $25 is the counter
    # $26 is the number of elements in the list
    # $27 is the letter grade
    # $28 is the numerical grade
    # $29 is the output list
    # $30 is the counter
    # $31 is the number of elements in the list
    # $32 is the letter grade
    # $33 is the numerical grade
    # $34 is the output list
    # $35 is the counter
    # $36 is the number of elements in the list
    # $37 is the letter grade
    # $38 is the numerical grade
    # $39 is the output list
    # $40 is the counter
    # $41 is the number of elements in the list
    # $42 is the letter grade
    # $43 is the numerical grade
    # $44 is the output list
    # $45 is the counter
    # $46 is the number of elements in the list
    # $47 is the letter grade
    # $48 is the numerical grade
    # $49 is the output list
    # $50 is the counter
    # $51 is the number of elements in the list
   

}

candidate() {
    numerical_letter_grade "$@"
}

set -e
run_test() {
    [[ $(candidate "4.0 3 1.7 2 3.5") = "A+ B C- C A-" ]]
    [[ $(candidate "1.2") = "D+" ]]
    [[ $(candidate "0.5") = "D-" ]]
    [[ $(candidate "0.0") = "E" ]]
    [[ $(candidate "1.0 0.3 1.5 2.8 3.3") = "D D- C- B B+" ]]
    [[ $(candidate "0.0 0.7") = "E D-" ]]
}

run_test