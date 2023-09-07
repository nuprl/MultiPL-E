def custom_sort_string(order: str, s: str) -> str:
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
    return ''.join(sorted(s, key=lambda x: order.index(x) if x in order else len(order)))




### Unit tests below ###
def check(candidate):
	assert candidate("cba", "") == ""
	assert candidate("cba", "abcd") == "cbad"
	assert candidate(
    "cbafg",
    "abcd") == "cbad"
	assert candidate("a", "aaaa") == "aaaa"
	assert candidate("cba", "abcdef") == "cbadef"
	assert candidate(
    "zyxwvutsrqponmlkjihgfedcba", "zyxwvutsrqponmlkjihgfedcba") == "zyxwvutsrqponmlkjihgfedcba"
	assert candidate("cbafg", "aa") == "aa"
	assert candidate("cbafg", "abcd") == "cbad"
	assert candidate("cba", "abc") == "cba"
	assert candidate("cbafg", "aaaa") == "aaaa"
	assert candidate("", "abc") == "abc"
	assert candidate("cbadefghi", "abcd") == "cbad"
	assert candidate("ab", "aaaa") == "aaaa"
	assert candidate("cbafg", "aaa") == "aaa"
	assert candidate("cbafg", "abc") == "cba"
	assert candidate("a", "aaa") == "aaa"
	assert candidate("cbafg", "a") == "a"
	assert candidate("cbadefghi", "abc") == "cba"
	assert candidate(
    "cbafg", "abcd") == "cbad"
	assert candidate("cbafg", "aaaaaaa") == "aaaaaaa"
	assert candidate("cbafg", "aaaaa") == "aaaaa"
	assert candidate("cbafg", "aaaaaa") == "aaaaaa"
def test_check():
	check(custom_sort_string)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sorting
# Metadata Coverage: 100
