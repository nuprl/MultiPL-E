def scoreOfParentheses(s: str) -> int:
    """
    Given a balanced parentheses string s, return the score of the string.
    The score of a balanced parentheses string is based on the following rule:

    "()" has score 1.
    AB has score A + B, where A and B are balanced parentheses strings.
    (A) has score 2 * A, where A is a balanced parentheses string.

 
    Example 1:

    Input: s = "()"
    Output: 1

    Example 2:

    Input: s = "(())"
    Output: 2

    Example 3:

    Input: s = "()()"
    Output: 2

 
    Constraints:

    2 <= s.length <= 50
    s consists of only '(' and ')'.
    s is a balanced parentheses string.

    """
    ### Canonical solution below ###
    score, depth = 0, 0
    for i in range(len(s)):
        if s[i] == '(':
            depth += 1
        else:
            depth -= 1
            if s[i - 1] == '(':
                score += 1 << depth
    return score




### Unit tests below ###
def check(candidate):
	assert candidate("()()()()") == 4
	assert candidate("(()()(()))") == 8
	assert candidate("(((())))") == 8
	assert candidate("()") == 1
	assert candidate("(())") == 2
	assert candidate("()()()()(())") == 6
	assert candidate("(((()()))))") == 16
	assert candidate("((((()))))((((()))))") == 32
	assert candidate("(()())") == 4
	assert candidate("()()()()()()()") == 7
	assert candidate("(((()))())()()") == 12
	assert candidate("()(()())()") == 6
	assert candidate("(()()()()())(()())()()") == 16
	assert candidate("((())(()))") == 8
	assert candidate("((((()))))") == 16
	assert candidate("()(())") == 3
	assert candidate("((())())") == 6
	assert candidate("((()))") == 4
	assert candidate("(())(())") == 4
	assert candidate("(()(()))") == 6
	assert candidate("((()())())") == 10
	assert candidate("()()()()()()()()") == 8
	assert candidate("()()()()()") == 5
	assert candidate("((()))()()") == 6
	assert candidate("((((((()))))))") == 64
	assert candidate("(((())))(((())))") == 16
	assert candidate("(((((())))))") == 32
	assert candidate("(()(()))(()(()))") == 12
	assert candidate("()()") == 2
def test_check():
	check(scoreOfParentheses)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
