def minOperationsToFlip(expression: str) -> int:
    """
    You are given a valid boolean expression as a string expression consisting of the characters '1','0','&' (bitwise AND operator),'|' (bitwise OR operator),'(', and ')'.

    For example, "()1|1" and "(1)&()" are not valid while "1", "(((1))|(0))", and "1|(0&(1))" are valid expressions.

    Return the minimum cost to change the final value of the expression.

    For example, if expression = "1|1|(0&0)&1", its value is 1|1|(0&0)&1 = 1|1|0&1 = 1|0&1 = 1&1 = 1. We want to apply operations so that the new expression evaluates to 0.

    The cost of changing the final value of an expression is the number of operations performed on the expression. The types of operations are described as follows:

    Turn a '1' into a '0'.
    Turn a '0' into a '1'.
    Turn a '&' into a '|'.
    Turn a '|' into a '&'.

    Note: '&' does not take precedence over '|' in the order of calculation. Evaluate parentheses first, then in left-to-right order.
 
    Example 1:

    Input: expression = "1&(0|1)"
    Output: 1
    Explanation: We can turn "1&(0|1)" into "1&(0&1)" by changing the '|' to a '&' using 1 operation.
    The new expression evaluates to 0. 

    Example 2:

    Input: expression = "(0&0)&(0&0&0)"
    Output: 3
    Explanation: We can turn "(0&0)&(0&0&0)" into "(0|1)|(0&0&0)" using 3 operations.
    The new expression evaluates to 1.

    Example 3:

    Input: expression = "(0|(1|0&1))"
    Output: 1
    Explanation: We can turn "(0|(1|0&1))" into "(0|(0|0&1))" using 1 operation.
    The new expression evaluates to 0.
 
    Constraints:

    1 <= expression.length <= 105
    expression only contains '1','0','&','|','(', and ')'
    All parentheses are properly matched.
    There will be no empty parentheses (i.e: "()" is not a substring of expression).

    """
    ### Canonical solution below ###
    zero, one, op = [0], [0], []
    for c in expression:
        if c == '&':
            op.append(1)
        elif c == '|':
            op.append(2)
        elif c.isdigit():
            if c == '0':
                one.append(1)
                zero.append(0)
            else:
                zero.append(1)
                one.append(0)
        elif c == ')':
            cur_op = op.pop()
            x = zero.pop()
            y = one.pop() + 1
            if cur_op == 1:
                new_zero = max(x, y)
                new_one = one[-1] + min(x, zero[-1])
            else:
                new_zero = zero[-1] + min(x, one[-1])
                new_one = max(y, one[-1])
            zero.pop()
            one.pop()
            zero.append(new_zero)
            one.append(new_one)
    return zero[-1] + 1




### Unit tests below ###
def check(candidate):
	assert candidate("1&0|1") == 2
	assert candidate("0&0|0&0") == 1
	assert candidate("1^0|0^1") == 2
	assert candidate("(0&0)&(0&0&0)") == 3
	assert candidate("1^1|0|1") == 2
	assert candidate("(1|1)&0") == 1
	assert candidate("1&0|0") == 1
	assert candidate("(1|0)&1|0&1") == 2
	assert candidate("0|0") == 1
	assert candidate("((1|0)&1)&0") == 1
	assert candidate("1|1|(0&0&0)") == 3
	assert candidate("1|0") == 1
	assert candidate("0|0|(1&1)") == 2
	assert candidate("1&1|0&1|0") == 1
	assert candidate("1&1&0&0&0&0") == 1
	assert candidate("(1&1)|0") == 1
	assert candidate("0") == 1
	assert candidate("1|(0&0)&(0&0)") == 3
	assert candidate("1^0|0|1") == 2
	assert candidate("1|0|0") == 1
	assert candidate("((0&0)&(0&0&0))") == 3
	assert candidate("1&0&0") == 1
	assert candidate("(1&0)|(0&1)") == 2
	assert candidate("(1|0)&1|0") == 1
	assert candidate("(1&0)|1&0|1") == 2
	assert candidate("(1|1)&0|1") == 2
	assert candidate("1&0") == 1
	assert candidate("(0&0)&(0&0)") == 3
	assert candidate("1|0&1|0") == 1
	assert candidate("((1|1)&0)&1") == 2
def test_check():
	check(minOperationsToFlip)
# Metadata Difficulty: Hard
# Metadata Topics: math,string,dynamic-programming,stack
# Metadata Coverage: 100
