def longestSubstring(s: str, k: int) -> int:
    """
    Given a string s and an integer k, return the length of the longest substring of s such that the frequency of each character in this substring is greater than or equal to k.
    if no such substring exists, return 0.
 
    Example 1:

    Input: s = "aaabb", k = 3
    Output: 3
    Explanation: The longest substring is "aaa", as 'a' is repeated 3 times.

    Example 2:

    Input: s = "ababbc", k = 2
    Output: 5
    Explanation: The longest substring is "ababb", as 'a' is repeated 2 times and 'b' is repeated 3 times.

 
    Constraints:

    1 <= s.length <= 104
    s consists of only lowercase English letters.
    1 <= k <= 105

    """
    ### Canonical solution below ###
    if not s or k <= 0:
        return 0

    char_count = {}
    for ch in s:
        char_count[ch] = char_count.get(ch, 0) + 1

    for char, count in char_count.items():
        if count < k:
            return max(longestSubstring(sub_s, k) for sub_s in s.split(char))
    return len(s)




### Unit tests below ###
def check(candidate):
	assert candidate("aabbccddeeff", 5) == 0
	assert candidate("abacabadabacaba", 7) == 0
	assert candidate("abcdabcdabcd", 4) == 0
	assert candidate("aaaaaabbbbbbcccccc", 6) == 18
	assert candidate("a", 1) == 1
	assert candidate("abacabadabacaba", 6) == 0
	assert candidate("abcd", 1) == 4
	assert candidate("abcdefg", 1) == 7
	assert candidate("ababababab", 6) == 0
	assert candidate("abacabadabacaba", 4) == 0
	assert candidate("aabbccdd", 2) == 8
	assert candidate("aabbccddeeff", 3) == 0
	assert candidate("abcbabcbabcb", 7) == 0
	assert candidate("aabbccddeeff", 6) == 0
	assert candidate("aabbccddeeff", 7) == 0
	assert candidate("abacabadabacaba", 8) == 0
	assert candidate("zzzzzzzzzz", 10) == 10
	assert candidate("aaabb", 3) == 3
	assert candidate("abcdefg", 7) == 0
	assert candidate("aaaaaabbbbbbcccccc", 7) == 0
	assert candidate("zzzzzzzzzz", 11) == 0
	assert candidate("abacabadabacaba", 2) == 0
	assert candidate(
    "aaabb", 2
) == 5, "Error: The substring is not contiguous."
	assert candidate("aaaabbbbcccc", 5) == 0
	assert candidate("aabbccddeeff", 2) == 12
	assert candidate("aabbccddeeff", 1) == 12
	assert candidate("aaabbbcc", 3) == 6
	assert candidate("aaaaaaa", 7) == 7
	assert candidate("ababbc", 2) == 5
	assert candidate("", 3) == 0
	assert candidate("abacabadabacaba", 5) == 0
	assert candidate("abcabcabc", 4) == 0
	assert candidate("aaaabbbbcccc", 4) == 12
	assert candidate("abcabcabc", 3) == 9
	assert candidate("aabbccddeeff", 11) == 0
	assert candidate(("aabcccccaa"), 2) == 7
	assert candidate("ababababab", 5) == 10
	assert candidate("abcdabcdabcd", 2) == 12
	assert candidate("aaabb", 3) == 3, "Error: The substring is not contiguous."
	assert candidate("aabbccddeeff", 4) == 0
	assert candidate("aaaaaaa", 8) == 0
	assert candidate("abbbbbbbbbb", 2) == 10
	assert candidate("abacabadabacaba", 1) == 15
	assert candidate("abcbabcbabcb", 4) == 0
	assert candidate("abcd", 2) == 0
	assert candidate("abcdabcdabcd", 1) == 12
def test_check():
	check(longestSubstring)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,divide-and-conquer,sliding-window
# Metadata Coverage: 100
