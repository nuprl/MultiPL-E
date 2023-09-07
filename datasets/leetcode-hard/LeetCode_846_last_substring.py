def last_substring(s: str) -> str:
    """
    Given a string s, return the last substring of s in lexicographical order.
 
    Example 1:

    Input: s = "abab"
    Output: "bab"
    Explanation: The substrings are ["a", "ab", "aba", "abab", "b", "ba", "bab"]. The lexicographically maximum substring is "bab".

    Example 2:

    Input: s = "leetcode"
    Output: "tcode"

 
    Constraints:

    1 <= s.length <= 4 * 105
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    i, j, k, n = 0, 1, 0, len(s)
    while j + k < n:
        if s[i + k] == s[j + k]:
            k += 1
        elif s[i + k] < s[j + k]:
            i = j
            j += 1
            k = 0
        else:
            j += 1
            k = 0
    return s[i:]




### Unit tests below ###
def check(candidate):
	assert candidate("cba") == "cba"
	assert candidate("a"*10000) == "a"*10000
	assert candidate("abcbabcd") == "d"
	assert candidate("c") == "c"
	assert candidate("bacdab") == "dab"
	assert candidate("abcbac") == "cbac"
	assert candidate("abcabcbac") == "cbac"
	assert candidate("cab") == "cab"
	assert candidate("ba") == "ba"
	assert candidate("abcabc") == "cabc"
	assert candidate("abcab") == "cab"
	assert candidate("abc") == "c"
	assert candidate("abcabcabc") == "cabcabc"
	assert candidate("bca") == "ca"
	assert candidate("ecbacba") == "ecbacba"
	assert candidate("abbcc") == "cc"
	assert candidate("ecbabc") == "ecbabc"
	assert candidate("abcabcabcabc") == "cabcabcabc"
	assert candidate("cbacbabc") == "cbacbabc"
	assert candidate("dcbab") == "dcbab"
	assert candidate("aa") == "aa"
	assert candidate("e") == "e"
	assert candidate("cbacbacbabc") == "cbacbacbabc"
	assert candidate("cbabab") == "cbabab"
	assert candidate("abcba") == "cba"
	assert candidate("abcbabc") == "cbabc"
	assert candidate("ed") == "ed"
	assert candidate("abcbacbac") == "cbacbac"
	assert candidate("abcd") == "d"
	assert candidate("aabbcc") == "cc"
	assert candidate("cbacb") == "cbacb"
	assert candidate("aaaa") == "aaaa"
	assert candidate("") == ""
	assert candidate("cbabac") == "cbabac"
def test_check():
	check(last_substring)
# Metadata Difficulty: Hard
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
