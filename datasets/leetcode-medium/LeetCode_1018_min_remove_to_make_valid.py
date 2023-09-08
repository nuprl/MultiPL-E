def min_remove_to_make_valid(s: str) -> str:
    """
    Given a string s of '(' , ')' and lowercase English characters.
    Your task is to remove the minimum number of parentheses ( '(' or ')', in any positions ) so that the resulting parentheses string is valid and return any valid string.
    Formally, a parentheses string is valid if and only if:

    It is the empty string, contains only lowercase characters, or
    It can be written as AB (A concatenated with B), where A and B are valid strings, or
    It can be written as (A), where A is a valid string.

 
    Example 1:

    Input: s = "lee(t(c)o)de)"
    Output: "lee(t(c)o)de"
    Explanation: "lee(t(co)de)" , "lee(t(c)ode)" would also be accepted.

    Example 2:

    Input: s = "a)b(c)d"
    Output: "ab(c)d"

    Example 3:

    Input: s = "))(("
    Output: ""
    Explanation: An empty string is also valid.

 
    Constraints:

    1 <= s.length <= 105
    s[i] is either'(' , ')', or lowercase English letter.

    """
    ### Canonical solution below ###
    stk = []
    result = list(s)

    for i, ch in enumerate(s):
        if ch == '(':
            stk.append(i)
        elif ch == ')':
            if stk:
                stk.pop()
            else:
                result[i] = ''

    for i in stk:
        result[i] = ''

    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("()))())()()()()") == "()()()()()()"
	assert candidate("()(()())") == "()(()())"
	assert candidate("((()))") == "((()))"
	assert candidate(
    "()()(((()))((())()))()()") == "()()(((()))((())()))()()"
	assert candidate('))((') == ""
	assert candidate(
    "()()((((()()(()()))()())))()()") == "()()((((()()(()()))()())))()()"
	assert candidate("((((((((((((") == ""
	assert candidate("((((((((((((((((((((((((((((((((((((") == ""
	assert candidate(")))))))))))") == ""
	assert candidate(
    'lee(t(c)o)de)') == "lee(t(c)o)de"
	assert candidate("(()())") == "(()())"
	assert candidate(")(") == ""
	assert candidate("()()") == "()()"
	assert candidate(")()())()()()") == "()()()()()"
	assert candidate("bcbcbc") == "bcbcbc"
	assert candidate('((((((') == ""
	assert candidate("(())(())") == "(())(())"
	assert candidate(
    ')()()()()()(') == "()()()()()"
	assert candidate(')())()') == "()()"
	assert candidate(
    '))((') == ""
	assert candidate('))()()(') == "()()"
	assert candidate("()()()") == "()()()"
	assert candidate("()") == "()"
	assert candidate('a)b(c)d') == "ab(c)d"
	assert candidate("()()(()())") == "()()(()())"
	assert candidate("(((((((((()))(((()))(((()))()))())))))))(()())") == "(((((((((()))(((()))(((()))()))())))))))(()())"
	assert candidate('()(())') == "()(())"
	assert candidate('((((((((((((((((((((((((') == ""
	assert candidate("(()()())") == "(()()())"
def test_check():
	check(min_remove_to_make_valid)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
