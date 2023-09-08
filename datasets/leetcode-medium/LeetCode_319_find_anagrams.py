from typing import List


def find_anagrams(s: str, p: str) -> List[int]:
    """
    Given two strings s and p, return an array of all the start indices of p's anagrams in s. You may return the answer in any order.
    An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
    Example 1:

    Input: s = "cbaebabacd", p = "abc"
    Output: [0,6]
    Explanation:
    The substring with start index = 0 is "cba", which is an anagram of "abc".
    The substring with start index = 6 is "bac", which is an anagram of "abc".

    Example 2:

    Input: s = "abab", p = "ab"
    Output: [0,1,2]
    Explanation:
    The substring with start index = 0 is "ab", which is an anagram of "ab".
    The substring with start index = 1 is "ba", which is an anagram of "ab".
    The substring with start index = 2 is "ab", which is an anagram of "ab".

 
    Constraints:

    1 <= s.length, p.length <= 3 * 104
    s and p consist of lowercase English letters.

    """
    ### Canonical solution below ###
    if len(s) < len(p):
        return []

    s_count = [0] * 26
    p_count = [0] * 26
    for c in p:
        p_count[ord(c) - ord('a')] += 1

    result = []
    for i in range(len(s)):
        s_count[ord(s[i]) - ord('a')] += 1
        if i >= len(p):
            s_count[ord(s[i - len(p)]) - ord('a')] -= 1
        if s_count == p_count:
            result.append(i - len(p) + 1)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("bbaa", "ba") == [1]
	assert candidate("abab", "ab") == [0, 1, 2]
	assert candidate("abab", "bab") == [1]
	assert candidate(
    "aaa", "aba") == []
	assert candidate("baaa", "aa") == [1, 2]
	assert candidate("anagram", "nagaram") == [0]
	assert candidate("abc", "efg") == []
	assert candidate("xyz", "zxy") == [0]
	assert candidate("bcbc", "bcb") == [0]
	assert candidate("baa", "b") == [0]
	assert candidate("aaa", "aab") == []
	assert candidate(
    "baa", "baa") == [0]
	assert candidate("a", "a") == [0]
	assert candidate("baa", "aa") == [1]
	assert candidate("", "") == []
	assert candidate("xyzabc", "zyx") == [0]
	assert candidate("cbaebabacd", "abc") == [0, 6]
	assert candidate("bbbb", "b") == [0, 1, 2, 3]
	assert candidate("aaa", "bab") == []
	assert candidate("abcabc", "cba") == [0, 1, 2, 3]
	assert candidate("bbaa", "aa") == [2]
	assert candidate("nnnnnnn", "nn") == [0, 1, 2, 3, 4, 5]
	assert candidate(
    "abc", "bca") == [0]
	assert candidate(
    "a", "aa") == []
	assert candidate(
    "abc", "cba") == [0]
	assert candidate(
    "aaa", "aab") == []
	assert candidate("bba", "bbb") == []
	assert candidate("baaa", "aaa") == [1]
	assert candidate("baaa", "baa") == [0]
	assert candidate("bba", "aab") == []
	assert candidate("abc", "def") == []
	assert candidate("xyzxyz", "zyx") == [0, 1, 2, 3]
	assert candidate(
    "abc", "abc") == [0]
	assert candidate("bbb", "aaa") == []
	assert candidate("bbb", "bbb") == [0]
	assert candidate("", "a") == []
	assert candidate("", "ab") == []
	assert candidate("aaa", "aaa") == [0]
	assert candidate("aaa", "aba") == []
	assert candidate("abc", "abc") == [0]
def test_check():
	check(find_anagrams)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
