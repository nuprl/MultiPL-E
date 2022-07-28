"""
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

    """
function do_algebra(operator::Vector{String}, operand::Vector{Int64})::Int64 
    # Write your code here
    #
    #
    #
    #
    return 0
end

using Test

@testset begin

candidate = do_algebra;
	@test(candidate(["**", "*", "+"], [2, 3, 4, 5]) == 37)
	@test(candidate(["+", "*", "-"], [2, 3, 4, 5]) == 9)
	@test(candidate(["//", "*"], [7, 3, 4]) == 8)
end
