def reverseParentheses(s: str) -> str:
    """
    You are given a string s that consists of lower case English letters and brackets.
    Reverse the strings in each pair of matching parentheses, starting from the innermost one.
    Your result should not contain any brackets.
 
    Example 1:

    Input: s = "(abcd)"
    Output: "dcba"

    Example 2:

    Input: s = "(u(love)i)"
    Output: "iloveu"
    Explanation: The substring "love" is reversed first, then the whole string is reversed.

    Example 3:

    Input: s = "(ed(et(oc))el)"
    Output: "leetcode"
    Explanation: First, we reverse the substring "oc", then "etco", and finally, the whole string.

 
    Constraints:

    1 <= s.length <= 2000
    s only contains lower case English characters and parentheses.
    It is guaranteed that all parentheses are balanced.

    """
    ### Canonical solution below ###
    stack = []
    for i, c in enumerate(s):
        if c == '(':
            stack.append(i)
        elif c == ')':
            start, end = stack.pop(), i
            # reversal of the substring
            s = s[:start] + s[start+1:end][::-1] + s[end+1:]
    return ''.join(c for c in s if c.isalpha())




### Unit tests below ###
def check(candidate):
	assert candidate("(((((a)))))") == "a"
	assert candidate("((((a))))") == "a"
	assert candidate("(u(love)i)") == "iloveu"
	assert candidate("(abcd)") == "dcba"
	assert candidate("(abc)") == "cba"
	assert candidate("(a(b))") == "ba", "Should handle nested empty parentheses"
	assert candidate("(a)") == "a"
	assert candidate("((a))") == "a"
	assert candidate("(a)(b)") == "ab", "Should return the input string if there are no parentheses"
	assert candidate("") == "", "Should return an empty string if given the empty string"
def test_check():
	check(reverseParentheses)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
