def is_subsequence(s: str, t: str) -> bool:
    """
    Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
    A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
 
    Example 1:
    Input: s = "abc", t = "ahbgdc"
    Output: true
    Example 2:
    Input: s = "axc", t = "ahbgdc"
    Output: false

 
    Constraints:

    0 <= s.length <= 100
    0 <= t.length <= 104
    s and t consist only of lowercase English letters.

 
    Follow up: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?"""
    ### Canonical solution below ###
    si, ti = 0, 0

    while si < len(s) and ti < len(t):
        if s[si] == t[ti]:
            si += 1
        ti += 1

    return si == len(s)




### Unit tests below ###
def check(candidate):
	assert candidate("a", "aaaaa") == True
	assert candidate("abc", "abcd") == True
	assert candidate("abcd", "abc") == False
	assert candidate("abcdef", "abcde") == False
	assert candidate("a", "b") == False
	assert candidate("zyxwvutsrqponmlkjihgfedcba", "abcdefghijklmnopqrstuvwxyz") == False
	assert candidate("abc", "cba") == False
	assert candidate("aabbcc", "aabcb") == False
	assert candidate("world", "hello world") == True
	assert candidate("python", "pypypypython") == True
	assert candidate("abcabcabcabcabc", "abc") == False
	assert candidate("bbb", "bbb") == True
	assert candidate("ab", "abcd") == True
	assert candidate("abc", "abcdef") == True
	assert candidate("axc", "ahbgdc") == False
	assert candidate(
    "ababababababc", "abc") == False
	assert candidate("abc", "bac") == False
	assert candidate("abc", "baac") == False
	assert candidate("bbbbbb", "bbb") == False
	assert candidate("", "abc") == True
	assert candidate("bbbbbb", "aabb") == False
	assert candidate("abc", "bccba") == False
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyzaabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz") == True
	assert candidate(
    "abababababababaababab", "abababababababaababaababababababababababababababaabababab"
) == True
	assert candidate("abcde", "abcd") == False
	assert candidate("abc", "baacb") == False
	assert candidate("b", "ba") == True
	assert candidate("abc", "abcabcabcabcabc") == True
	assert candidate("pythonpython", "python") == False
	assert candidate("abc", "bca") == False
	assert candidate("abcde", "abcde") == True
	assert candidate("abcde", "abcdef") == True
	assert candidate("aa", "aa") == True
	assert candidate("ace", "abcde") == True
	assert candidate("abacb", "abac") == False
	assert candidate("abc", "aabbcc") == True
	assert candidate("aaaaaaaaaa", "aaaaaaaaaa") == True
	assert candidate("abcde", "abbb") == False
	assert candidate("bbb", "bbbbbb") == True
	assert candidate("abc", "") == False
	assert candidate("abc", "baaca") == False
	assert candidate("abc", "bbac") == False
	assert candidate("python", "pythonpython") == True
	assert candidate("a", "aab") == True
	assert candidate(
    "ace",
    "abcde"
) == True
	assert candidate("aec", "abcde") == False
	assert candidate("pythonisthebestlanguage", "python") == False
	assert candidate("abc", "abca") == True
	assert candidate("abcd", "abcd") == True
	assert candidate("aac", "aab") == False
	assert candidate("python", "pypypypyp") == False
	assert candidate("aab", "aab") == True
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz") == True
	assert candidate("abc", "ahbgdc") == True
	assert candidate("aaaaaaaa", "aaa") == False
	assert candidate("abc", "ababababababc") == True
	assert candidate("aabbcc", "aacb") == False
	assert candidate("python", "pythonisthebestlanguage") == True
	assert candidate("a", "a") == True
	assert candidate("", "") == True
	assert candidate("hello", "hello world") == True
def test_check():
	check(is_subsequence)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string,dynamic-programming
# Metadata Coverage: 100
