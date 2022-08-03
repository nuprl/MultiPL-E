
from typing import List

def do_algebra(operator: List[str], operand: List[int]) -> int:
    """
    Given two array lists operator, and operand. The first array list has basic algebra operations, and 
    the second array list is an array array list of integers. Use the two given array lists to build the algebric 
    expression and return the evaluation of this expression.

    The basic algebra operations:
    Addition ( + ) 
    Subtraction ( - ) 
    Multiplication ( * ) 
    Floor division ( // ) 
    Exponentiation ( ** ) 

    Example:
    operator['+', '*', '-']
    array array list = [2, 3, 4, 5]
    result = 2 + 3 * 4 - 5
    => result = 9

    Note:
        The length of operator array list is equal to the length of operand array list minus one.
        Operand is an array array list of of non-negative integers.
        Operator array list has at least one operator, and operand array list has at least two operands.

    """
    ### Canonical solution below ###
    expression = str(operand[0])
    for oprt, oprn in zip(operator, operand[1:]):
        expression+= oprt + str(oprn)
    return eval(expression)

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate(['**', '*', '+'], [2, 3, 4, 5]) == 37
    assert candidate(['+', '*', '-'], [2, 3, 4, 5]) == 9
    assert candidate(['//', '*'], [7, 3, 4]) == 8, "This prints if this assert fails 1 (good for debugging!)"

    # Check some edge cases that are easy to work out by hand.
    

def test_check():
    check(do_algebra)
