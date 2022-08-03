import std.math;
import std.typecons;
/*

    Given two lists operator, and operand. The first list has basic algebra operations, and 
    the second list is a list of integers. Use the two given lists to build the algebric 
    expression and return the evaluation of this expression.

    The basic algebra operations:
    Addition ( + ) 
    Subtraction ( - ) 
    Multiplication ( * ) 
    Floor division ( // ) 
    Exponentiation ( ** ) 

    Example:
    operator['+', '*', '-']
    array = [2, 3, 4, 5]
    result = 2 + 3 * 4 - 5
    => result = 9

    Note:
        The length of operator list is equal to the length of operand list minus one.
        Operand is a list of of non-negative integers.
        Operator list has at least one operator, and operand list has at least two operands.

    
*/
long do_algebra(string[] operator, long[] operand) 
{
    long result = operand[0];
    for (int i = 0; i < operator.length; i++) {
        switch (operator[i]) {
            case '+':
                result += operand[i + 1];
                break;
            case '-':
                result -= operand[i + 1];
                break;
            case '*':
                result *= operand[i + 1];
                break;
            case '//':
                result /= operand[i + 1];
                break;
            case '**':
                result = result ** operand[i + 1];
                break;
        }
    }
    return result;
}

unittest
{
    alias candidate = do_algebra;

    assert(candidate(["**", "*", "+"], [2L, 3L, 4L, 5L]) == 37L);
    assert(candidate(["+", "*", "-"], [2L, 3L, 4L, 5L]) == 9L);
    assert(candidate(["//", "*"], [7L, 3L, 4L]) == 8L);
}
void main(){}