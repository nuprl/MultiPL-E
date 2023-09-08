def numDistinct(s: str, t: str) -> int:
    """
    Given two strings s and t, return the number of distinct subsequences of s which equals t modulo 109 + 7.
 
    Example 1:

    Input: s = "rabbbit", t = "rabbit"
    Output: 3
    Explanation:
    As shown below, there are 3 ways you can generate "rabbit" from s.
    rabbbit
    rabbbit
    rabbbit

    Example 2:

    Input: s = "babgbag", t = "bag"
    Output: 5
    Explanation:
    As shown below, there are 5 ways you can generate "bag" from s.
    babgbag
    babgbag
    babgbag
    babgbag
    babgbag
 
    Constraints:

    1 <= s.length, t.length <= 1000
    s and t consist of English letters.

    """
    ### Canonical solution below ###
    m, n = len(s), len(t)
    dp = [[0] * (n + 1) for _ in range(m + 1)]

    for i in range(m + 1):
        dp[i][0] = 1

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if s[i - 1] == t[j - 1]:
                dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j]
            else:
                dp[i][j] = dp[i - 1][j]

    return dp[m][n]




### Unit tests below ###
def check(candidate):
	assert candidate(
    "abc", "abcabc") == 0
	assert candidate(
    "xyz", "xy") == 1
	assert candidate(
    "xyz", "x") == 1
	assert candidate("xyz", "yz") == 1
	assert candidate("xyz", "x") == 1
	assert candidate("xyz", "y") == 1
	assert candidate("abcabc", "ab") == 3
	assert candidate("abcabc", "bc") == 3
	assert candidate(
    "rabbbit", "rabbit") == 3
	assert candidate("aaaaaa", "aa") == 15
	assert candidate("abcabcabcabcabcabc", "abcabcabcabcabcabc") == 1
	assert candidate("xyz", "xy") == 1
	assert candidate(
    "", "") == 1
	assert candidate("xyz", "xz") == 1
	assert candidate("a", "") == 1
	assert candidate(
    "abcabc", "abcabca") == 0
	assert candidate(
    "xyz", "w") == 0
	assert candidate(
    "xyz", "y") == 1
	assert candidate(
    "xyz", "xyz") == 1
	assert candidate("abcabcabcabcabcabc", "abcabcabcabcabcabca") == 0
	assert candidate(
    "babgbag", "bag") == 5
	assert candidate(
    "abcabcabcabcabcabc", "a") == 6
	assert candidate(
    "abcabcabcabcabcabc", "abcabcabcabcabcabc") == 1
	assert candidate(
    "xyz", "z") == 1
	assert candidate("abcabc", "abcabc") == 1
	assert candidate("abcde", "ace") == 1
	assert candidate(
    "a", "") == 1
	assert candidate("abcabcabcabcabcabc", "a") == 6
	assert candidate("abcabc", "abcabca") == 0
	assert candidate(
    "abcabcabcabcabcabc", "abcabcabcabcabcabca") == 0
	assert candidate("xyz", "w") == 0
	assert candidate(
    "xyz", "xz") == 1
	assert candidate(
    "abcabc", "bc") == 3
	assert candidate("abcabc", "b") == 2
	assert candidate("xyz", "z") == 1
	assert candidate("babgbag", "bag") == 5
	assert candidate(
    "abcabc", "a") == 2
	assert candidate("abcabc", "c") == 2
	assert candidate("", "") == 1
	assert candidate(
    "abcde", "ace") == 1
	assert candidate("abcabc", "a") == 2
	assert candidate("rabbbit", "rabbit") == 3
	assert candidate("xyz", "xyz") == 1
	assert candidate("abc", "abcabc") == 0
def test_check():
	check(numDistinct)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
