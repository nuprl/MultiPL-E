from typing import List


def evalRPN(tokens: List[str]) -> int:
    """
    You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.
    Evaluate the expression. Return an integer that represents the value of the expression.
    Note that:

    The valid operators are '+', '-', '*', and '/'.
    Each operand may be an integer or another expression.
    The division between two integers always truncates toward zero.
    There will not be any division by zero.
    The input represents a valid arithmetic expression in a reverse polish notation.
    The answer and all the intermediate calculations can be represented in a 32-bit integer.

 
    Example 1:

    Input: tokens = ["2","1","+","3","*"]
    Output: 9
    Explanation: ((2 + 1) * 3) = 9

    Example 2:

    Input: tokens = ["4","13","5","/","+"]
    Output: 6
    Explanation: (4 + (13 / 5)) = 6

    Example 3:

    Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
    Output: 22
    Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
    = ((10 * (6 / (12 * -11))) + 17) + 5
    = ((10 * (6 / -132)) + 17) + 5
    = ((10 * 0) + 17) + 5
    = (0 + 17) + 5
    = 17 + 5
    = 22

 
    Constraints:

    1 <= tokens.length <= 104
    tokens[i] is either an operator: "+", "-", "*", or "/", or an integer in the range [-200, 200].

    """
    ### Canonical solution below ###
    stack = []
    for token in tokens:
        if token in {"+", "-", "*", "/"}:
            b = stack.pop()
            a = stack.pop()
            if token == "+":
                stack.append(a + b)
            elif token == "-":
                stack.append(a - b)
            elif token == "*":
                stack.append(a * b)
            else:
                stack.append(int(a / b))
        else:
            stack.append(int(token))
    return stack[-1]




### Unit tests below ###
def check(candidate):
	assert candidate(["-1", "1", "*"]) == -1
	assert candidate(["4", "13", "5", "/", "+"]) == 6
	assert candidate(["100", "1", "-", "99", "-", "100", "1", "-", "99", "-", "100", "1", "-", "99", "-", "100", "1", "-", "99", "-", "100", "1", "-", "99", "-", "100", "1", "-", "99", "-"]) == 0
	assert candidate(["200", "-200", "*"]) == -40000
	assert candidate(["200", "-200", "/"]) == -1
	assert candidate(["200", "200", "*"]) == 40000
	assert candidate(["2", "1", "+", "3", "*"]) == 9
	assert candidate(["2", "3", "+", "4", "+", "5", "+"]) == 14
	assert candidate(["100", "2", "/", "2", "*", "50", "+"]) == 150
	assert candidate(["1", "2", "+", "3", "+", "4", "+", "5", "+", "6", "+", "7", "+", "8", "+", "9", "+", "10", "+"]) == 55
	assert candidate(["200", "-200", "+"]) == 0
	assert candidate(["200", "200", "/"]) == 1
	assert candidate(["-1", "-1", "*"]) == 1
	assert candidate(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]) == 22
	assert candidate(["1", "2", "+", "3", "*", "4", "-", "5", "/"]) == 1
	assert candidate(["3", "4", "+", "2", "*"]) == 14
	assert candidate(["2", "3", "+", "4", "*", "5", "+"]) == 25
def test_check():
	check(evalRPN)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,stack
# Metadata Coverage: 100
