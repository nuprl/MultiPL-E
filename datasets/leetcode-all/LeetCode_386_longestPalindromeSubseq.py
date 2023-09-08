def longestPalindromeSubseq(s: str) -> int:
    """
    Given a string s, find the longest palindromic subsequence's length in s.
    A subsequence is a sequence that can be derived from another sequence by deleting some or no elements without changing the order of the remaining elements.
 
    Example 1:

    Input: s = "bbbab"
    Output: 4
    Explanation: One possible longest palindromic subsequence is "bbbb".

    Example 2:

    Input: s = "cbbd"
    Output: 2
    Explanation: One possible longest palindromic subsequence is "bb".

 
    Constraints:

    1 <= s.length <= 1000
    s consists only of lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(s)
    dp = [[0] * n for _ in range(n)]

    for i in range(n - 1, -1, -1):
        dp[i][i] = 1
        for j in range(i + 1, n):
            if s[i] == s[j]:
                dp[i][j] = 2 + dp[i + 1][j - 1]
            else:
                dp[i][j] = max(dp[i + 1][j], dp[i][j - 1])

    return dp[0][n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate("abcdefghijklmnopqrst") == 1
	assert candidate("abc") == 1
	assert candidate("abcdefghijklm") == 1
	assert candidate("aaaaaaa") == 7
	assert candidate("abcdba") == 5
	assert candidate("abcdefghiihgfedcba") == 18
	assert candidate("a") == 1
	assert candidate("abcdefghijklmnopq") == 1
	assert candidate("cbbd") == 2
	assert candidate("abcdefgh") == 1
	assert candidate("abcddcba") == 8
	assert candidate("baa") == 2
	assert candidate("aabaaa") == 5
	assert candidate("aaaaaaaaaaa") == 11
	assert candidate("aaaa") == 4
	assert candidate("abcdefghhgfedcba") == 16
	assert candidate("aaaaa") == 5
	assert candidate("aaaaaaaaaa") == 10
	assert candidate("abac") == 3
	assert candidate("abcdcba") == 7
	assert candidate("bbaaaaaaaaaaaa") == 12
	assert candidate("abcdefghijkl") == 1
	assert candidate("abcdefghihgfedcba") == 17
	assert candidate("abaaaa") == 5
	assert candidate("abccba") == 6
	assert candidate("bbbab") == 4
	assert candidate("abcdefghijklmnopqrstuvwxy") == 1
	assert candidate("abcba") == 5
	assert candidate("aa") == 2
	assert candidate("abcdefghijklmnop") == 1
def test_check():
	check(longestPalindromeSubseq)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
