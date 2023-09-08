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
    st = []
    result = []

    for c in s:
        if c != ')':
            st.append(c)
        else:
            temp = []
            while st and st[-1] != '(':
                temp.append(st.pop())
            if st:
                st.pop()  # Remove '('
            st.extend(temp)

    result = "".join(st)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(
    "abcd") == "abcd", "Should return the string as is if there are no parentheses"
	assert candidate(
    "(ed(et(oc))el)") == "leetcode"
	assert candidate("((()()()))(()())") == ""
	assert candidate("(u(love)i)") == "iloveu"
	assert candidate(
    "Where are the parentheses?") == "Where are the parentheses?"
	assert candidate("(abc)") == "cba"
	assert candidate("(ed(et(oc))el)") == "leetcode"
	assert candidate("(ab)") == "ba"
	assert candidate("(a)") == "a"
	assert candidate("((ab))") == "ab"
	assert candidate(
    "z(a)yb(c)de") == "zaybcde"
	assert candidate(
    "The ((quick (brown) (fox) jumps over the lazy) dog)") == "The god quick nworb xof jumps over the lazy"
	assert candidate("(a((b)))") == "ba"
	assert candidate(
    "ta()usw((((a))))") == "tauswa"
	assert candidate("(((k))))(()()()))") == "k"
	assert candidate("a(bcdefghijkl(mno)p)q") == "apmnolkjihgfedcbq"
def test_check():
	check(reverseParentheses)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
