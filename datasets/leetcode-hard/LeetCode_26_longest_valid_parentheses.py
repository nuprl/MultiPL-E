def longest_valid_parentheses(s: str) -> int:
    """
    Given a string containing just the characters '(' and ')', return the length of the longest valid (well-formed) parentheses substring.
 
    Example 1:

    Input: s = "(()"
    Output: 2
    Explanation: The longest valid parentheses substring is "()".

    Example 2:

    Input: s = ")()())"
    Output: 4
    Explanation: The longest valid parentheses substring is "()()".

    Example 3:

    Input: s = ""
    Output: 0

 
    Constraints:

    0 <= s.length <= 3 * 104
    s[i] is '(', or ')'.

    """
    ### Canonical solution below ###
    n = len(s)
    result = 0
    st = []

    for i in range(n):
        if s[i] == '(':
            st.append(i)
        else:
            if st and s[st[-1]] == '(':
                st.pop()
            else:
                st.append(i)

    if not st:
        result = n
    else:
        right, left = n, 0
        while st:
            left = st.pop()
            result = max(result, right - left - 1)
            right = left
        result = max(result, right)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("()()") == 4
	assert candidate("()(((((((()())()))))))()(()))()())") == 28
	assert candidate(")()())()()())(())") == 6
	assert candidate(")()())") == 4
	assert candidate(")(()()())") == 8
	assert candidate("(()())())") == 8
	assert candidate("()(()))") == 6
	assert candidate("(()") == 2
	assert candidate("(()(()())") == 8
	assert candidate("()") == 2
	assert candidate("()(())") == 6
	assert candidate("()(((((((()())()))))))()(()))())") == 28
	assert candidate("((((((((((()))))))))") == 18
	assert candidate("((((((((((())))))))))") == 20
	assert candidate("") == 0
	assert candidate(
    "()((((((((((((((((((())))))))))))))))()))(())))") == 46
	assert candidate("((()()()())(()))())()()()()()") == 18
	assert candidate("()(()())") == 8
	assert candidate("(()((())())()()()()()()())") == 26
	assert candidate("()(()") == 2
def test_check():
	check(longest_valid_parentheses)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming,stack
# Metadata Coverage: 100
