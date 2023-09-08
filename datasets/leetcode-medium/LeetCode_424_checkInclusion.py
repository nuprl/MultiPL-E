def checkInclusion(s1: str, s2: str) -> bool:
    """
    Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.
    In other words, return true if one of s1's permutations is the substring of s2.
 
    Example 1:

    Input: s1 = "ab", s2 = "eidbaooo"
    Output: true
    Explanation: s2 contains one permutation of s1 ("ba").

    Example 2:

    Input: s1 = "ab", s2 = "eidboaoo"
    Output: false

 
    Constraints:

    1 <= s1.length, s2.length <= 104
    s1 and s2 consist of lowercase English letters.

    """
    ### Canonical solution below ###
    if len(s1) > len(s2):
        return False

    s1_map = [0] * 26
    s2_map = [0] * 26

    for i in range(len(s1)):
        s1_map[ord(s1[i]) - ord('a')] += 1
        s2_map[ord(s2[i]) - ord('a')] += 1

    for i in range(len(s2) - len(s1)):
        if s1_map == s2_map:
            return True

        s2_map[ord(s2[i]) - ord('a')] -= 1
        s2_map[ord(s2[i + len(s1)]) - ord('a')] += 1

    return s1_map == s2_map




### Unit tests below ###
def check(candidate):
	assert candidate("ab", "eidbaooo") == True
	assert candidate("abc", "bca") == True
	assert candidate("bba", "abababaabb") == True
	assert candidate("abc", "abcab") == True
	assert candidate(
    "aaa", "abccaaccaaabaabcccaaaca") == True
	assert candidate("ab", "eidboaoo") == False
	assert candidate("", "baaa") == True
	assert candidate("abc", "abca") == True
	assert candidate("abc", "cba") == True
	assert candidate("abc", "abac") == True
	assert candidate("abc", "bac") == True
	assert candidate("xyz", "yxz") == True
	assert candidate(
    "aab", "aab") == True
	assert candidate("abc", "cab") == True
	assert candidate("ab", "lafb") == False
	assert candidate("abc", "acb") == True
	assert candidate("abcd", "abc") == False
	assert candidate("a", "a") == True
	assert candidate("a", "b") == False
	assert candidate("ab", "alb") == False
	assert candidate("xyz", "zyx") == True
	assert candidate("abc", "def") == False
	assert candidate("aa", "ba") == False
	assert candidate("aaa", "aaa") == True
	assert candidate("abc", "abcabcabc") == True
	assert candidate("ab", "aab") == True
	assert candidate("a", "aba") == True
	assert candidate(
    "ab", "lalaefaklmncedddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddo") == False
	assert candidate("abc", "abcd") == True
	assert candidate("abc", "abcabc") == True
def test_check():
	check(checkInclusion)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,two-pointers,string,sliding-window
# Metadata Coverage: 100
