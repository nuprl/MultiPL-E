def minAddToMakeValid(s: str) -> int:
    """
    A parentheses string is valid if and only if:

    It is the empty string,
    It can be written as AB (A concatenated with B), where A and B are valid strings, or
    It can be written as (A), where A is a valid string.

    You are given a parentheses string s. In one move, you can insert a parenthesis at any position of the string.

    For example, if s = "()))", you can insert an opening parenthesis to be "(()))" or a closing parenthesis to be "())))".

    Return the minimum number of moves required to make s valid.
 
    Example 1:

    Input: s = "())"
    Output: 1

    Example 2:

    Input: s = "((("
    Output: 3

 
    Constraints:

    1 <= s.length <= 1000
    s[i] is either '(' or ')'.

    """
    ### Canonical solution below ###
    result = balance = 0
    for c in s:
        balance += 1 if c == '(' else -1
        if balance == -1:
            result += 1
            balance += 1
    return result + balance




### Unit tests below ###
def check(candidate):
	assert candidate("()(()") == 1
	assert candidate("(") == 1
	assert candidate("()") == 0
	assert candidate("(()())") == 0
	assert candidate(")))(((") == 6
	assert candidate("(((()))())()") == 0
	assert candidate("(((()))())()()()()()") == 0
	assert candidate("((((((((()()()()))))))))") == 0
	assert candidate("))(") == 3
	assert candidate("(((((((((()()())))))))))") == 0
	assert candidate("())()") == 1
	assert candidate("(((())()))") == 0
	assert candidate("(()))") == 1
	assert candidate("))))))") == 6
	assert candidate("()()(") == 1
	assert candidate("())") == 1
	assert candidate("()()(())") == 0
	assert candidate("((()))") == 0
	assert candidate("(())(()") == 1
	assert candidate("()()") == 0
	assert candidate(")(") == 2
	assert candidate("))())(") == 4
	assert candidate("(((()))()") == 1
	assert candidate("))(()") == 3
	assert candidate("()()(()") == 1
	assert candidate("(((((((())(())))))(()))())") == 0
	assert candidate("()(())()") == 0
	assert candidate("((()()()()))") == 0
	assert candidate("((((((((((()))))))))))") == 0
	assert candidate("((((((()))))))") == 0
	assert candidate("()))((") == 4
	assert candidate(
    "((((((((((((((((((((()))))))))))))))))))))))") == 2
	assert candidate("))))))((((((") == 12
	assert candidate("()(()(") == 2
	assert candidate("(()") == 1
	assert candidate("((((((") == 6
	assert candidate("))))((((") == 8
	assert candidate("(())") == 0
	assert candidate("))((") == 4
	assert candidate("))") == 2
	assert candidate("))()(()") == 3
	assert candidate("((()())())") == 0
	assert candidate("(()((())()))") == 0
	assert candidate("(((()))())") == 0
def test_check():
	check(minAddToMakeValid)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack,greedy
# Metadata Coverage: 100
