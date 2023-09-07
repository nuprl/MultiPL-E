def customSortString(order: str, s: str) -> str:
    """
    You are given two strings order and s. All the characters of order are unique and were sorted in some custom order previously.
    Permute the characters of s so that they match the order that order was sorted. More specifically, if a character x occurs before a character y in order, then x should occur before y in the permuted string.
    Return any permutation of s that satisfies this property.
 
    Example 1:

    Input: order = "cba", s = "abcd"
    Output: "cbad"
    Explanation: 
    "a", "b", "c" appear in order, so the order of "a", "b", "c" should be "c", "b", and "a". 
    Since "d" does not appear in order, it can be at any position in the returned string. "dcba", "cdba", "cbda" are also valid outputs.

    Example 2:

    Input: order = "cbafg", s = "abcd"
    Output: "cbad"

 
    Constraints:

    1 <= order.length <= 26
    1 <= s.length <= 200
    order and s consist of lowercase English letters.
    All the characters of order are unique.

    """
    ### Canonical solution below ###
    priority = {char: idx for idx, char in enumerate(order)}
    return "".join(sorted(s, key=lambda x: priority.get(x, 0)))




### Unit tests below ###
def check(candidate):
	assert candidate("ba", "ab") == "ba"
	assert candidate("ab", "ba") == "ab"
	assert candidate("abc", "ddd") == "ddd"
	assert candidate("abc", "aaa") == "aaa"
	assert candidate("zyx", "ddd") == "ddd"
	assert candidate("abc", "bbb") == "bbb"
	assert candidate(
    "zyx", "xyz") == "zyx"
	assert candidate("cba", "ccc") == "ccc"
	assert candidate("abc", "ccc") == "ccc"
	assert candidate("cba", "abc") == "cba"
	assert candidate("a", "a") == "a"
	assert candidate("abc", "cba") == "abc"
	assert candidate("abc", "abc") == "abc"
	assert candidate("ba", "aa") == "aa"
	assert candidate("cba", "bbb") == "bbb"
	assert candidate("cba", "aaa") == "aaa"
	assert candidate("gfedcba", "abcdefg") == "gfedcba"
	assert candidate("zyx", "xyz") == "zyx"
	assert candidate("a", "aa") == "aa"
	assert candidate("abc", "xyz") == "xyz"
def test_check():
	check(customSortString)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sorting
# Metadata Coverage: 100
