import std.typecons;
import std.math;
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
int do_algebra(const(char)[][] operator, int[] operand) 
{
    int result = operand[0];
    for (int i = 0; i < operator.length; i++)
    {
        switch (operator[i])
        {
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
                result = std.math.pow(result, operand[i + 1]);
                break;
        }
    }
    return result;
}

unittest
{
    alias candidate = do_algebra;

    assert(candidate(["**", "*", "+"], [2, 3, 4, 5]) == 37);
    assert(candidate(["+", "*", "-"], [2, 3, 4, 5]) == 9);
    assert(candidate(["//", "*"], [7, 3, 4]) == 8);
}
void main(){}