def shortest_palindrome(s: str) -> str:
    """
    You are given a string s. You can convert s to a palindrome by adding characters in front of it.
    Return the shortest palindrome you can find by performing this transformation.
 
    Example 1:
    Input: s = "aacecaaa"
    Output: "aaacecaaa"
    Example 2:
    Input: s = "abcd"
    Output: "dcbabcd"

 
    Constraints:

    0 <= s.length <= 5 * 104
    s consists of lowercase English letters only.

    """
    ### Canonical solution below ###
    n = len(s)
    rev_s = s[::-1]

    for i in range(n):
        if s[:n - i] == rev_s[i:]:
            return rev_s[:i] + s
    return ""




### Unit tests below ###
def check(candidate):
	assert candidate("a") == "a"
	assert candidate("rotor") == "rotor"
	assert candidate("abababababababa") == "abababababababa"
	assert candidate("level") == "level"
	assert candidate("madam") == "madam"
	assert candidate("aa") == "aa"
	assert candidate("aaacecaaa") == "aaacecaaa"
	assert candidate(
    "abacaba") == "abacaba"
	assert candidate("xxx") == "xxx"
	assert candidate(
    "aaabaaa"
) == "aaabaaa"
	assert candidate(
    "aba"
) == "aba"
	assert candidate(
    ""
) == ""
	assert candidate("cbaabc") == "cbaabc"
	assert candidate("civic") == "civic"
	assert candidate(
    "abcddcba") == "abcddcba"
	assert candidate("redder") == "redder"
	assert candidate("x") == "x"
	assert candidate("racecar") == "racecar"
	assert candidate(
    "b"
) == "b"
	assert candidate("xxxx") == "xxxx"
	assert candidate("aacecaaa") == "aaacecaaa"
	assert candidate(
    "a"
) == "a"
	assert candidate("hannah") == "hannah"
	assert candidate("repaper") == "repaper"
	assert candidate("deified") == "deified"
	assert candidate("xxxxx") == "xxxxx"
	assert candidate("abababa") == "abababa"
	assert candidate("deed") == "deed"
	assert candidate("abc") == "cbabc"
	assert candidate(
    "a") == "a"
	assert candidate("abcd") == "dcbabcd"
	assert candidate("dewed") == "dewed"
def test_check():
	check(shortest_palindrome)
# Metadata Difficulty: Hard
# Metadata Topics: string,rolling-hash,string-matching,hash-function
# Metadata Coverage: 100
