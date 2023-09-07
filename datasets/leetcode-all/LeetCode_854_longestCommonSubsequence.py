def longestCommonSubsequence(text1: str, text2: str) -> int:
    """
    Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.
    A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

    For example, "ace" is a subsequence of "abcde".

    A common subsequence of two strings is a subsequence that is common to both strings.
 
    Example 1:

    Input: text1 = "abcde", text2 = "ace" 
    Output: 3  
    Explanation: The longest common subsequence is "ace" and its length is 3.

    Example 2:

    Input: text1 = "abc", text2 = "abc"
    Output: 3
    Explanation: The longest common subsequence is "abc" and its length is 3.

    Example 3:

    Input: text1 = "abc", text2 = "def"
    Output: 0
    Explanation: There is no such common subsequence, so the result is 0.

 
    Constraints:

    1 <= text1.length, text2.length <= 1000
    text1 and text2 consist of only lowercase English characters.

    """
    ### Canonical solution below ###
    m, n = len(text1), len(text2)
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if text1[i - 1] == text2[j - 1]:
                dp[i][j] = dp[i - 1][j - 1] + 1
            else:
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
    return dp[m][n]




### Unit tests below ###
def check(candidate):
	assert candidate("abcd", "abce") == 3
	assert candidate("abcde", "abde") == 4
	assert candidate("abcde", "bcda") == 3
	assert candidate("abcde", "abef") == 3
	assert candidate("abcd", "aabd") == 3
	assert candidate("abcdef", "fda") == 1
	assert candidate("abcde", "bcd") == 3
	assert candidate("abcde", "e") == 1
	assert candidate("abcde", "ab") == 2
	assert candidate("a"*500+"b"*500, "a"*500+"b"*500) == 1000
	assert candidate("abcde", "a") == 1
	assert candidate("", "") == 0
	assert candidate("abc", "xyabc") == 3
	assert candidate("abcd", "acd") == 3
	assert candidate("abcde", "abce") == 4
	assert candidate("abce", "ace") == 3
	assert candidate("abc", "abc") == 3
	assert candidate("abcde", "ebcda") == 3
	assert candidate("abcde", "c") == 1
	assert candidate("abcde", "dcea") == 2
	assert candidate("abcd", "aad") == 2
	assert candidate("abc", "") == 0
	assert candidate("abcdabcd", "abcdabcd") == 8
	assert candidate("abcde", "accde") == 4
	assert candidate("abcde", "adcde") == 4
	assert candidate("abcd", "abcdabcd") == 4
	assert candidate("abce", "bce") == 3
	assert candidate("abcd", "dcba") == 1
	assert candidate("abcde", "edca") == 1
	assert candidate("abcde", "abc") == 3
	assert candidate("abcde", "ade") == 3
	assert candidate("abcde", "abcd") == 4
	assert candidate("a"*500+"b"*500, "b"*1000) == 500
	assert candidate("abc", "abcde") == 3
	assert candidate("abcde", "abe") == 3
	assert candidate("abcd", "abcd") == 4
	assert candidate("abcde", "bcde") == 4
	assert candidate("abcde", "cde") == 3
	assert candidate("abcd", "bcde") == 3
	assert candidate("abcde", "ae") == 2
	assert candidate("abcde", "abf") == 2
	assert candidate("abcde", "ace") == 3
	assert candidate("a"*1000, "a"*1000) == 1000
	assert candidate("a"*1000, "b"*1000) == 0
	assert candidate("a"*500+"b"*500, "a"*1000) == 500
	assert candidate("abcdabcd", "abcd") == 4
	assert candidate("abcde", "abcde") == 5
	assert candidate("abcde", "Xbcde") == 4
	assert candidate("a"*1000, "a"*500+"b"*500) == 500
	assert candidate("abcde", "aXcde") == 4
	assert candidate("abcde", "cd") == 2
	assert candidate("", "abc") == 0
	assert candidate("abc", "def") == 0
	assert candidate("abcdabcdabcd", "abcdabcdabcd") == 12
def test_check():
	check(longestCommonSubsequence)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
