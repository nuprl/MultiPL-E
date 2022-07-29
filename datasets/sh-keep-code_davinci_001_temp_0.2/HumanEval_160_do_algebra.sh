#!/bin/bash
# Given two lists operator, and operand. The first list has basic algebra operations, and 
# the second list is a list of integers. Use the two given lists to build the algebric 
# expression and return the evaluation of this expression.
# The basic algebra operations:
# Addition ( + ) 
# Subtraction ( - ) 
# Multiplication ( * ) 
# Floor division ( // ) 
# Exponentiation ( ** ) 
# Example:
# operator['+', '*', '-']
# array = [2, 3, 4, 5]
# result = 2 + 3 * 4 - 5
# => result = 9
# Note:
# The length of operator list is equal to the length of operand list minus one.
# Operand is a list of of non-negative integers.
# Operator list has at least one operator, and operand list has at least two operands.
do_algebra() {
    local operator=$1
    local operand=$2
    local result=0
    local i=0
    local j=0
    local op=0
    local op1=0
    local op2=0
    local op3=0
    local op4=0
    local op5=0
    local op6=0
    local op7=0
    local op8=0
    local op9=0
    local op10=0
    local op11=0
    local op12=0
    local op13=0
    local op14=0
    local op15=0
    local op16=0
    local op17=0
    local op18=0
    local op19=0
    local op20=0
    local op21=0
    local op22=0
    local op23=0
    local op24=0
    local op25=0
    local op26=0
    local op27=0
    local op28=0
    local op29=0
    local op30=0
    local op31=0
    local op32=0
    local op33=0
    local op34=0
    local op35=0
    local op36=0
    local op37=0
    local op38=0
    local op39=0
    local op40=0
    local op41=0
    local op42=0
    local op43=0
    local op44=0
    local op45=0
    local op46=0
    local op47=0
    local op48=0
    local op49=0
    local op50=0
    local op51=0
    local op52=0
    local op53=0
    local op54=0
    local op55=0
    local op56=0
    local op57=0
    local op58=0
    local op59=0
    local op60=0
    local op61=0
    local op62=0
    local op63=0
    local op64=0
    local op65=0
    local op66=0


}

candidate() {
    local res=$(do_algebra "$@")
    echo $res
}

test() {
    declare -a x0=("**" "*" "+")
declare -a x1=(2 3 4 5)
    x2=$(candidate "${x0[*]}" "${x1[*]}")
    assert_equals 37 "${x2[*]}"

    declare -a x3=("+" "*" "-")
declare -a x4=(2 3 4 5)
    x5=$(candidate "${x3[*]}" "${x4[*]}")
    assert_equals 9 "${x5[*]}"

    declare -a x6=("//" "*")
declare -a x7=(7 3 4)
    x8=$(candidate "${x6[*]}" "${x7[*]}")
    assert_equals 8 "${x8[*]}"

}