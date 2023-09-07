def min_window(s: str, t: str) -> str:
    """
    Given two strings s and t of lengths m and n respectively, return the minimum window substring of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".
    The testcases will be generated such that the answer is unique.
 
    Example 1:

    Input: s = "ADOBECODEBANC", t = "ABC"
    Output: "BANC"
    Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

    Example 2:

    Input: s = "a", t = "a"
    Output: "a"
    Explanation: The entire string s is the minimum window.

    Example 3:

    Input: s = "a", t = "aa"
    Output: ""
    Explanation: Both 'a's from t must be included in the window.
    Since the largest window of s only has one 'a', return empty string.

 
    Constraints:

    m == s.length
    n == t.length
    1 <= m, n <= 105
    s and t consist of uppercase and lowercase English letters.

 
    Follow up: Could you find an algorithm that runs in O(m + n) time?
    """
    ### Canonical solution below ###
    from collections import Counter
    need = Counter(t)
    window = {}

    left = 0
    right = 0
    valid = 0
    start = 0
    length = float('inf')

    while right < len(s):
        c = s[right]
        right += 1
        if c in need:
            window[c] = window.get(c, 0) + 1
            if window[c] <= need[c]:
                valid += 1

        while valid == len(t):
            if right - left < length:
                start = left
                length = right - left

            d = s[left]
            left += 1
            if d in need:
                if window[d] <= need[d]:
                    valid -= 1
                window[d] -= 1

    return "" if length == float('inf') else s[start: start + length]




### Unit tests below ###
def check(candidate):
	assert candidate("ZZZZZZXYZ", "ZZZZZZZZ") == ""
	assert candidate("ZZZZZXYZ", "ZZZZ") == "ZZZZ"
	assert candidate("XYZ", "XYZ") == "XYZ"
	assert candidate("ab", "a") == "a"
	assert candidate("XYZ", "ZZY") == ""
	assert candidate("ZZZZZZXYZ", "ZZZZZZ") == "ZZZZZZ"
	assert candidate("aaa", "aaa") == "aaa"
	assert candidate("aab", "aab") == "aab"
	assert candidate("XYZ", "YXZ") == "XYZ"
	assert candidate(
    "AABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
) == "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	assert candidate("ZZZZZZXYZ", "ZZZZ") == "ZZZZ"
	assert candidate("abccbcccsd", "bcccsdabx") == ""
	assert candidate("aaaaaaaa", "aaaaaaaa") == "aaaaaaaa"
	assert candidate("abcabccbcccsd", "bcccsdabx") == ""
	assert candidate("ABAZBC", "AC") == "AZBC"
	assert candidate("XYZ", "YZZ") == ""
	assert candidate("aaaaaaaa", "a") == "a"
	assert candidate("ZZZZZZXYZ", "ZZZZZ") == "ZZZZZ"
	assert candidate("aaaaaaaa", "aaaaa") == "aaaaa"
	assert candidate("aaaaaaaa", "aaaaaaaaa") == ""
	assert candidate("ABAZBC", "AB") == "AB"
	assert candidate("XYZ", "YZX") == "XYZ"
	assert candidate("", "") == ""
	assert candidate("XYZ", "YYZ") == ""
	assert candidate("aaaaaaaa", "aaaaaaa") == "aaaaaaa"
	assert candidate("abccbcccsde", "bcccsdabx") == ""
	assert candidate("", "aa") == ""
	assert candidate("XYZ", "ZYZ") == ""
	assert candidate("a", "aa") == ""
	assert candidate("ADOBECODEBANC", "ABC") == "BANC"
	assert candidate("aa", "aa") == "aa"
	assert candidate("aaaaaaaa", "aaaa") == "aaaa"
	assert candidate("aaaaaaaa", "aaaaaa") == "aaaaaa"
	assert candidate("a", "a") == "a"
	assert candidate("aaa", "aa") == "aa"
	assert candidate(
    "ADOBECODEBANC", "ABCDEFOO") == ""
	assert candidate("abccbcccsd", "bcccsdab") == "abccbcccsd"
def test_check():
	check(min_window)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
