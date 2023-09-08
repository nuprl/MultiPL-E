def numRollsToTarget(n: int, k: int, target: int) -> int:
    """
    You have n dice, and each die has k faces numbered from 1 to k.
    Given three integers n, k, and target, return the number of possible ways (out of the kn total ways) to roll the dice, so the sum of the face-up numbers equals target. Since the answer may be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: n = 1, k = 6, target = 3
    Output: 1
    Explanation: You throw one die with 6 faces.
    There is only one way to get a sum of 3.

    Example 2:

    Input: n = 2, k = 6, target = 7
    Output: 6
    Explanation: You throw two dice, each with 6 faces.
    There are 6 ways to get a sum of 7: 1+6, 2+5, 3+4, 4+3, 5+2, 6+1.

    Example 3:

    Input: n = 30, k = 30, target = 500
    Output: 222616187
    Explanation: The answer must be returned modulo 109 + 7.

 
    Constraints:

    1 <= n, k <= 30
    1 <= target <= 1000

    """
    ### Canonical solution below ###
    MOD = 1000000007
    dp = [[0 for _ in range(target + 1)] for _ in range(n + 1)]
    dp[0][0] = 1
    for i in range(1, n + 1):
        for j in range(i, target + 1):
            for d in range(1, k + 1):
                if j - d >= 0:
                    dp[i][j] = (dp[i][j] + dp[i - 1][j - d]) % MOD
    return dp[n][target]




### Unit tests below ###
def check(candidate):
	assert candidate(1, 1, 2) == 0
	assert candidate(1, 2, 1) == 1
	assert candidate(1, 10, 11) == 0
	assert candidate(1, 2, 2) == 1
	assert candidate(3, 2, 6) == 1
	assert candidate(2, 2, 3) == 2
	assert candidate(2, 2, 4) == 1
	assert candidate(2, 5, 5) == 4
	assert candidate(1, 10, 10) == 1
	assert candidate(30, 1, 30) == 1
	assert candidate(2, 2, 1) == 0
	assert candidate(1, 1, 1) == 1
	assert candidate(30, 30, 500) == 222616187
	assert candidate(2, 10, 19) == 2
	assert candidate(1, 10, 3) == 1
	assert candidate(1, 10, 5) == 1
	assert candidate(2, 1, 2) == 1
	assert candidate(1, 10, 1) == 1
	assert candidate(2, 2, 2) == 1
	assert candidate(1, 6, 3) == 1
	assert candidate(1, 10, 4) == 1
	assert candidate(2, 1, 1) == 0
	assert candidate(2, 6, 7) == 6
	assert candidate(2, 3, 1) == 0
	assert candidate(1, 30, 30) == 1
	assert candidate(2, 10, 20) == 1
def test_check():
	check(numRollsToTarget)
# Metadata Difficulty: Medium
# Metadata Topics: dynamic-programming
# Metadata Coverage: 100
