<?php
// Given two lists operator, and operand. The first list has basic algebra operations, and 
// the second list is a list of integers. Use the two given lists to build the algebric 
// expression and return the evaluation of this expression.
// The basic algebra operations:
// Addition ( + ) 
// Subtraction ( - ) 
// Multiplication ( * ) 
// Floor division ( // ) 
// Exponentiation ( ** ) 
// Example:
// operator['+', '*', '-']
// array = [2, 3, 4, 5]
// result = 2 + 3 * 4 - 5
// => result = 9
// Note:
// The length of operator list is equal to the length of operand list minus one.
// Operand is a list of of non-negative integers.
// Operator list has at least one operator, and operand list has at least two operands.
function do_algebra($operator, $operand) {
    $result = $operand[0];
    for ($i = 1; $i < count($operand); $i++) {
        switch ($operator[$i - 1]) {
            case '+':
                $result += $operand[$i];
                break;
            case '-':
                $result -= $operand[$i];
                break;
            case '*':
                $result *= $operand[$i];
                break;
            case '//':
                $result = floor($result / $operand[$i]);
                break;
            case '**':
                $result = pow($result, $operand[$i]);
                break;
        }
    }
    return $result;
}


function candidate(...$args) {
    return do_algebra(...$args);
}

function test(): void {
    if (candidate(array('**', '*', '+'), array(2, 3, 4, 5)) !== 37) { throw new Exception("Test failed!"); }
    if (candidate(array('+', '*', '-'), array(2, 3, 4, 5)) !== 9) { throw new Exception("Test failed!"); }
    if (candidate(array('//', '*'), array(7, 3, 4)) !== 8) { throw new Exception("Test failed!"); }
}

test();