
from typing import List

def do_algebra(operator: List[str], operand: List[int]) -> int:
    """
    Given two vectors operator, and operand. The first vector has basic algebra operations, and 
    the second vector is a vector of integers. Use the two given vectors to build the algebric 
    expression and return the evaluation of this expression.

    The basic algebra operations:
    Addition ( + ) 
    Subtraction ( - ) 
    Multiplication ( * ) 
    Floor division ( // ) 
    Exponentiation ( ** ) 

    Example:
    operator['+', '*', '-']
    vector = [2, 3, 4, 5]
    result = 2 + 3 * 4 - 5
    => result = 9

    Note:
        The length of operator vector is equal to the length of operand vector minus one.
        Operand is a vector of of non-negative integers.
        Operator vector has at least one operator, and operand vector has at least two operands.

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
