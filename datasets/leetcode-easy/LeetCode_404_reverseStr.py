def reverseStr(s: str, k: int) -> str:
    """
    Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.
    If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.
 
    Example 1:
    Input: s = "abcdefg", k = 2
    Output: "bacdfeg"
    Example 2:
    Input: s = "abcd", k = 2
    Output: "bacd"

 
    Constraints:

    1 <= s.length <= 104
    s consists of only lowercase English letters.
    1 <= k <= 104

    """
    ### Canonical solution below ###
    chars = list(s)
    for i in range(0, len(chars), 2 * k):
        chars[i:i + k] = reversed(chars[i:i + k])
    return "".join(chars)




### Unit tests below ###
def check(candidate):
	assert candidate("abcdefg", 1) == "abcdefg"
	assert candidate("a", 1) == "a"
	assert candidate("abcdefghijklmnopqrstuvwxyz", 1) == "abcdefghijklmnopqrstuvwxyz"
	assert candidate("abcdefg", 7) == "gfedcba"
	assert candidate("abcde", 2) == "bacde"
	assert candidate("abcdef", 3) == "cbadef"
	assert candidate("abcd", 2) == "bacd"
	assert candidate("abcdefg", 100) == "gfedcba"
	assert candidate("abcdefg", 2) == "bacdfeg"
	assert candidate("abcdef", 2) == "bacdfe"
	assert candidate("abcdefg", 4) == "dcbaefg"
def test_check():
	check(reverseStr)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
