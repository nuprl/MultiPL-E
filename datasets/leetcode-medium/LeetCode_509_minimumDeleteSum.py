def minimumDeleteSum(s1: str, s2: str) -> int:
    """
    Given two strings s1 and s2, return the lowest ASCII sum of deleted characters to make two strings equal.
 
    Example 1:

    Input: s1 = "sea", s2 = "eat"
    Output: 231
    Explanation: Deleting "s" from "sea" adds the ASCII value of "s" (115) to the sum.
    Deleting "t" from "eat" adds 116 to the sum.
    At the end, both strings are equal, and 115 + 116 = 231 is the minimum sum possible to achieve this.

    Example 2:

    Input: s1 = "delete", s2 = "leet"
    Output: 403
    Explanation: Deleting "dee" from "delete" to turn the string into "let",
    adds 100[d] + 101[e] + 101[e] to the sum.
    Deleting "e" from "leet" adds 101[e] to the sum.
    At the end, both strings are equal to "let", and the answer is 100+101+101+101 = 403.
    If instead we turned both strings into "lee" or "eet", we would get answers of 433 or 417, which are higher.

 
    Constraints:

    1 <= s1.length, s2.length <= 1000
    s1 and s2 consist of lowercase English letters.

    """
    ### Canonical solution below ###
    dp = [[0] * (len(s2) + 1) for _ in range(len(s1) + 1)]
    for i in range(1, len(s1) + 1):
        dp[i][0] = dp[i - 1][0] + ord(s1[i - 1])
    for j in range(1, len(s2) + 1):
        dp[0][j] = dp[0][j - 1] + ord(s2[j - 1])
    for i in range(1, len(s1) + 1):
        for j in range(1, len(s2) + 1):
            if s1[i - 1] == s2[j - 1]:
                dp[i][j] = dp[i - 1][j - 1]
            else:
                dp[i][j] = min(dp[i - 1][j] + ord(s1[i - 1]), dp[i][j - 1] + ord(s2[j - 1]))
    return dp[len(s1)][len(s2)]




### Unit tests below ###
def check(candidate):
	assert candidate("yx", "yx") == 0
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == 0
	assert candidate("aaaaa", "aaaaa") == 0
	assert candidate("aaaaaaaaaaa", "aaaaaaaaaaa") == 0
	assert candidate("aba", "aba") == 0
	assert candidate("ab", "dab") == 100
	assert candidate("sea", "eat") == 231
	assert candidate(
    "ab", "ab"
) == 0
	assert candidate(
    "a", "b"
) == 195
	assert candidate("aaaaaaaaaaaa", "aaaaaaaaaaaa") == 0
	assert candidate("xyz", "xyz") == 0
	assert candidate("helloworld", "helloworld") == 0
	assert candidate("aaa", "aaa") == 0
	assert candidate("zyxwvutsrqponmlkjihgfedcba", "zyxwvutsrqponmlkjihgfedcba") == 0
	assert candidate("aaaaaaaaaa", "aaaaaaaaaa") == 0
	assert candidate("zzzzzz", "zzzzzz") == 0
	assert candidate("delete", "leet") == 403
	assert candidate("", "x") == 120
	assert candidate("abc", "abc") == 0
	assert candidate("aaaaaaaa", "aaaaaaaa") == 0
	assert candidate("aaaaaaaaaaaaaa", "aaaaaaaaaaaaaa") == 0
	assert candidate("a", "") == 97
	assert candidate(
    "abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz"
) == 0
	assert candidate("aaaa", "aaaa") == 0
	assert candidate("aaaaaaaaaaaaa", "aaaaaaaaaaaaa") == 0
	assert candidate("a", "a") == 0
	assert candidate("abcd", "bc") == 197
	assert candidate("abcd", "abcd") == 0
	assert candidate("y", "y") == 0
	assert candidate("x", "") == 120
	assert candidate("", "") == 0
def test_check():
	check(minimumDeleteSum)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
