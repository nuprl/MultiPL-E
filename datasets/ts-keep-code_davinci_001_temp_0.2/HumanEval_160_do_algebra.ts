//Given two lists operator, and operand. The first list has basic algebra operations, and 
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
function do_algebra(operator: string[], operand: number[]): number {
    let result = operand[0];
    for (let i = 1; i < operand.length; i++) {
        switch (operator[i - 1]) {
            case '+':
                result += operand[i];
                break;
            case '-':
                result -= operand[i];
                break;
            case '*':
                result *= operand[i];
                break;
            case '//':
                result = result / operand[i];
                break;
            case '**':
                result = result ** operand[i];
                break;
        }
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = do_algebra;
  assert.deepEqual(candidate(["**", "*", "+"], [2, 3, 4, 5]),37);
  assert.deepEqual(candidate(["+", "*", "-"], [2, 3, 4, 5]),9);
  assert.deepEqual(candidate(["//", "*"], [7, 3, 4]),8);
}

test();