def longest_ideal_string(s: str, k: int) -> int:
    """
    You are given a string s consisting of lowercase letters and an integer k. We call a string t ideal if the following conditions are satisfied:

    t is a subsequence of the string s.
    The absolute difference in the alphabet order of every two adjacent letters in t is less than or equal to k.

    Return the length of the longest ideal string.
    A subsequence is a string that can be derived from another string by deleting some or no characters without changing the order of the remaining characters.
    Note that the alphabet order is not cyclic. For example, the absolute difference in the alphabet order of 'a' and 'z' is 25, not 1.
 
    Example 1:

    Input: s = "acfgbd", k = 2
    Output: 4
    Explanation: The longest ideal string is "acbd". The length of this string is 4, so 4 is returned.
    Note that "acfgbd" is not ideal because 'c' and 'f' have a difference of 3 in alphabet order.
    Example 2:

    Input: s = "abcd", k = 3
    Output: 4
    Explanation: The longest ideal string is "abcd". The length of this string is 4, so 4 is returned.

 
    Constraints:

    1 <= s.length <= 105
    0 <= k <= 25
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    dp = [0] * 26

    for c in s:
        current = 1
        for i in range(26):
            if abs(i - (ord(c) - ord('a'))) <= k:
                current = max(current, dp[i] + 1)
        dp[ord(c) - ord('a')] = max(dp[ord(c) - ord('a')], current)

    return max(dp)




### Unit tests below ###
def check(candidate):
	assert candidate("acfgbd", 2) == 4
	assert candidate("abacabadabacaba", 0) == 8
	assert candidate("abcabcabc", 2) == 9
	assert candidate("abcdefghijklmnopqrstuvwxyz", 25) == 26
	assert candidate("abcdefghijklmnopqrstuvwxyz", 24) == 26
	assert candidate("abcdabcdabcd", 3) == 12
	assert candidate("abcd", 3) == 4
	assert candidate("abcdefghijklmnopqrstuvwxyz", 0) == 1
def test_check():
	check(longest_ideal_string)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,dynamic-programming
# Metadata Coverage: 100
