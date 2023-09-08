from typing import List


def generate_parenthesis(n: int) -> List[str]:
    """
    Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
 
    Example 1:
    Input: n = 3
    Output: ["((()))","(()())","(())()","()(())","()()()"]
    Example 2:
    Input: n = 1
    Output: ["()"]

 
    Constraints:

    1 <= n <= 8

    """
    ### Canonical solution below ###
    def generate_parenthesis_helper(open, close, current):
        if open == 0 and close == 0:
            result.append(current)
            return
        if open > 0:
            generate_parenthesis_helper(open - 1, close + 1, current + '(')
        if close > 0:
            generate_parenthesis_helper(open, close - 1, current + ')')

    result = []
    generate_parenthesis_helper(n, 0, '')
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(1) == ["()"]
	assert candidate(2) == ["(())","()()"]
	assert candidate(5) == ["((((()))))", "(((()())))", "(((())()))", "(((()))())", "(((())))()", "((()(())))", "((()()()))", "((()())())", "((()()))()", "((())(()))", "((())()())", "((())())()", "((()))(())", "((()))()()", "(()((())))", "(()(()()))", "(()(())())", "(()(()))()", "(()()(()))", "(()()()())", "(()()())()", "(()())(())", "(()())()()", "(())((()))", "(())(()())", "(())(())()", "(())()(())", "(())()()()", "()(((())))", "()((()()))", "()((())())", "()((()))()", "()(()(()))", "()(()()())", "()(()())()", "()(())(())", "()(())()()", "()()((()))", "()()(()())", "()()(())()", "()()()(())", "()()()()()"]
	assert candidate(0) == [""]
	assert candidate(3) == ["((()))", "(()())", "(())()", "()(())", "()()()"]
	assert candidate(4) == ["(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()"]
def test_check():
	check(generate_parenthesis)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming,backtracking
# Metadata Coverage: 100
