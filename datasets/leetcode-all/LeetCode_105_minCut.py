def minCut(s: str) -> int:
    """
    Given a string s, partition s such that every substring of the partition is a palindrome.
    Return the minimum cuts needed for a palindrome partitioning of s.
 
    Example 1:

    Input: s = "aab"
    Output: 1
    Explanation: The palindrome partitioning ["aa","b"] could be produced using 1 cut.

    Example 2:

    Input: s = "a"
    Output: 0

    Example 3:

    Input: s = "ab"
    Output: 1

 
    Constraints:

    1 <= s.length <= 2000
    s consists of lowercase English letters only.

    """
    ### Canonical solution below ###
    n = len(s)
    dp = [i - 1 for i in range(n + 1)]
    is_palindrome = [[False] * n for _ in range(n)]

    for j in range(1, n):
        for i in range(j, -1, -1):
            if s[i] == s[j] and (j - i < 2 or is_palindrome[i + 1][j - 1]):
                is_palindrome[i][j] = True
                dp[j + 1] = min(dp[j + 1], dp[i] + 1)

    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate("refer") == 0
	assert candidate("python") == 5
	assert candidate("laptop") == 5
	assert candidate("releveler") == 0
	assert candidate("deified") == 0
	assert candidate("computer") == 7
	assert candidate("level") == 0
	assert candidate("bbabbcbb") == 2
	assert candidate("babb") == 1
	assert candidate("civic") == 0
	assert candidate("a") == 0
	assert candidate("deed") == 0
	assert candidate("redder") == 0
	assert candidate("aa") == 0
	assert candidate("madam") == 0
	assert candidate("substring") == 8
	assert candidate("aab") == 1
	assert candidate("reviver") == 0
	assert candidate("bbb") == 0
	assert candidate("repaper") == 0
	assert candidate("dddddd") == 0
	assert candidate("bbbb") == 0
	assert candidate("racecar") == 0
	assert candidate("bcbc") == 1
	assert candidate("rotator") == 0
	assert candidate("b") == 0
	assert candidate("redivider") == 0
	assert candidate("hannah") == 0
	assert candidate("ab") == 1
	assert candidate("rotor") == 0
def test_check():
	check(minCut)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
