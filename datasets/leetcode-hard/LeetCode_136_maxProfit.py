from typing import List


def maxProfit(k: int, prices: List[int]) -> int:
    """
    You are given an integer array prices where prices[i] is the price of a given stock on the ith day, and an integer k.
    Find the maximum profit you can achieve. You may complete at most k transactions: i.e. you may buy at most k times and sell at most k times.
    Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).
 
    Example 1:

    Input: k = 2, prices = [2,4,1]
    Output: 2
    Explanation: Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 4-2 = 2.

    Example 2:

    Input: k = 2, prices = [3,2,6,5,0,3]
    Output: 7
    Explanation: Buy on day 2 (price = 2) and sell on day 3 (price = 6), profit = 6-2 = 4. Then buy on day 5 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.

 
    Constraints:

    1 <= k <= 100
    1 <= prices.length <= 1000
    0 <= prices[i] <= 1000

    """
    ### Canonical solution below ###
    n = len(prices)
    if k > n // 2:
        return sum(max(prices[i] - prices[i - 1], 0) for i in range(1, n))

    dp = [[0] * n for _ in range(k + 1)]
    for i in range(1, k + 1):
        max_diff = -prices[0]
        for j in range(1, n):
            dp[i][j] = max(dp[i][j - 1], prices[j] + max_diff)
            max_diff = max(max_diff, dp[i - 1][j] - prices[j])
    return dp[k][n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate(2, [1,2,4,2,5,7,2,4,9,0]) == 13
	assert candidate(3, [1,2,3,4,5]) == 4
	assert candidate(1, [7,6,4,3,1]) == 0
	assert candidate(1, [2,4,1]) == 2
	assert candidate(4, [1,2,3,1,2,3,1,2,3]) == 6
	assert candidate(2, [3,2,6,5,0,3]) == 7
	assert candidate(3, [1,2,3,4,5,6,7,8,9,10]) == 9
	assert candidate(3, [2,4,1]) == 2
	assert candidate(3, [10,9,8,7,6,5,4,3,2,1]) == 0
	assert candidate(2, [1,2,3,4,5,6,7,8,9,10]) == 9
	assert candidate(2, [3,3,5,0,0,3,1,4]) == 6
	assert candidate(2, [7,6,4,3,1]) == 0
	assert candidate(2, [1,2,3,4,5]) == 4
	assert candidate(3, [1,2,3,4,5,6]) == 5
	assert candidate(2, [1,2,4,2,5,7,2,4,9,9]) == 13
	assert candidate(3, [6,1,3,2,4,7]) == 7
	assert candidate(3, [2,1,2,0,1]) == 2
	assert candidate(1, [7,1,5,3,6,4,5,9,1,4]) == 8
	assert candidate(3, [7,6,4,3,1]) == 0
	assert candidate(1, [6,5,4,3,2,1]) == 0
	assert candidate(1, [10,9,8,7,6,5,4,3,2,1]) == 0
	assert candidate(1, [7,1,5,3,6,4]) == 5
	assert candidate(2, [2,4,1]) == 2
	assert candidate(2, [1,2,4,2,5,7,2,4,9,4]) == 13
	assert candidate(3, [3,2,6,5,0,3]) == 7
	assert candidate(3, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 19
	assert candidate(3, [9,8,7,6,5,4,3,2,1]) == 0
	assert candidate(3, [1,4,2,7]) == 8
	assert candidate(2, [7,6,5,4,3,2]) == 0
def test_check():
	check(maxProfit)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
