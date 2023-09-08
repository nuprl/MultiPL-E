def knightDialer(n: int) -> int:
    """
    The chess knight has a unique movement, it may move two squares vertically and one square horizontally, or two squares horizontally and one square vertically (with both forming the shape of an L). The possible movements of chess knight are shown in this diagaram:
    A chess knight can move as indicated in the chess diagram below:

    We have a chess knight and a phone pad as shown below, the knight can only stand on a numeric cell (i.e. blue cell).

    Given an integer n, return how many distinct phone numbers of length n we can dial.
    You are allowed to place the knight on any numeric cell initially and then you should perform n - 1 jumps to dial a number of length n. All jumps should be valid knight jumps.
    As the answer may be very large, return the answer modulo 109 + 7.
 
    Example 1:

    Input: n = 1
    Output: 10
    Explanation: We need to dial a number of length 1, so placing the knight over any numeric cell of the 10 cells is sufficient.

    Example 2:

    Input: n = 2
    Output: 20
    Explanation: All the valid number we can dial are [04, 06, 16, 18, 27, 29, 34, 38, 40, 43, 49, 60, 61, 67, 72, 76, 81, 83, 92, 94]

    Example 3:

    Input: n = 3131
    Output: 136006598
    Explanation: Please take care of the mod.

 
    Constraints:

    1 <= n <= 5000

    """
    ### Canonical solution below ###
    if n == 1:
        return 10
    MOD = 10**9 + 7
    moves = [
        [4, 6], [6, 8], [7, 9], [4, 8], [0, 3, 9],
        [], [1, 7, 0], [2, 6], [1, 3], [2, 4]
    ]
    dp = [1] * 10
    for _ in range(2, n + 1):
        new_dp = [0] * 10
        for j in range(10):
            for move in moves[j]:
                new_dp[j] = (new_dp[j] + dp[move]) % MOD
        dp = new_dp
    return sum(dp) % MOD




### Unit tests below ###
def check(candidate):
	assert candidate(3131) == 136006598
	assert candidate(2) == 20
	assert candidate(6) == 544
	assert candidate(1) == 10
	assert candidate(4) == 104
	assert candidate(3) == 46
	assert candidate(5) == 240
def test_check():
	check(knightDialer)
# Metadata Difficulty: Medium
# Metadata Topics: dynamic-programming
# Metadata Coverage: 100
