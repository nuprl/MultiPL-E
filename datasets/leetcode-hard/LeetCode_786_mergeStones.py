from typing import List, Union


def mergeStones(stones: List[Union[List[int], int]], k: int) -> int:
    """
    There are n piles of stones arranged in a row. The ith pile has stones[i] stones.
    A move consists of merging exactly k consecutive piles into one pile, and the cost of this move is equal to the total number of stones in these k piles.
    Return the minimum cost to merge all piles of stones into one pile. If it is impossible, return -1.
 
    Example 1:

    Input: stones = [3,2,4,1], k = 2
    Output: 20
    Explanation: We start with [3, 2, 4, 1].
    We merge [3, 2] for a cost of 5, and we are left with [5, 4, 1].
    We merge [4, 1] for a cost of 5, and we are left with [5, 5].
    We merge [5, 5] for a cost of 10, and we are left with [10].
    The total cost was 20, and this is the minimum possible.

    Example 2:

    Input: stones = [3,2,4,1], k = 3
    Output: -1
    Explanation: After any merge operation, there are 2 piles left, and we can't merge anymore.  So the task is impossible.

    Example 3:

    Input: stones = [3,5,1,2,6], k = 3
    Output: 25
    Explanation: We start with [3, 5, 1, 2, 6].
    We merge [5, 1, 2] for a cost of 8, and we are left with [3, 8, 6].
    We merge [3, 8, 6] for a cost of 17, and we are left with [17].
    The total cost was 25, and this is the minimum possible.

 
    Constraints:

    n == stones.length
    1 <= n <= 30
    1 <= stones[i] <= 100
    2 <= k <= 30

    """
    ### Canonical solution below ###
    n = len(stones)
    if (n - 1) % (k - 1) != 0:
        return -1
    prefixSum = [0] * (n + 1)
    dp = [[[-1] * (k + 1) for _ in range(n)] for _ in range(n)]

    for i in range(n):
        prefixSum[i + 1] = prefixSum[i] + stones[i]

    for l in range(2, n + 1):
        for i in range(n - l + 1):
            j = i + l - 1
            for m in range(2, k + 1):
                for p in range(i, j + 1 - m + 1, k - 1):
                    dp[i][j][m] = (dp[i][p][1] + dp[p + 1][j][m - 1]) % (1e9 + 7)
            if (j - i) % (k - 1) == 0:
                dp[i][j][1] = (dp[i][j][k] + prefixSum[j + 1] - prefixSum[i]) % (1e9 + 7)

    return dp[0][n - 1][1]




### Unit tests below ###
def check(candidate):
	assert candidate(
    [3, 2, 4, 1], 2
) == 20
	assert candidate( [3,2,4,1], 2) == 20
	assert candidate([[1,2],[2,3],[3,4],[4,1],[1,3],[2,4]], 5) == -1
	assert candidate([3,2,4,1], 3) == -1
	assert candidate(
    [3, 2, 4, 1], 3
) == -1
	assert candidate([3,2,4,1], 2) == 20
	assert candidate(
    [3,2,4,1],
    2
) == 20
	assert candidate([[1,2],[3,4]], 5) == -1
	assert candidate( [3,2,4,1], 3) == -1
def test_check():
	check(mergeStones)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,prefix-sum
# Metadata Coverage: 100
