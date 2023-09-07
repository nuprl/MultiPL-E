from typing import List


def coinChange(coins: List[int], amount: int) -> int:
    """
    You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.
    Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
    You may assume that you have an infinite number of each kind of coin.
 
    Example 1:

    Input: coins = [1,2,5], amount = 11
    Output: 3
    Explanation: 11 = 5 + 5 + 1

    Example 2:

    Input: coins = [2], amount = 3
    Output: -1

    Example 3:

    Input: coins = [1], amount = 0
    Output: 0

 
    Constraints:

    1 <= coins.length <= 12
    1 <= coins[i] <= 231 - 1
    0 <= amount <= 104

    """
    ### Canonical solution below ###
    dp = [amount + 1] * (amount + 1)
    dp[0] = 0

    for coin in coins:
        for i in range(coin, amount + 1):
            dp[i] = min(dp[i], dp[i - coin] + 1)

    return dp[amount] if dp[amount] <= amount else -1




### Unit tests below ###
def check(candidate):
	assert candidate([99,100,101], 200) == 2
	assert candidate(range(1, 100), 1) == 1
	assert candidate(
    [186,419,83,408], 6249) == 20
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 1
	assert candidate([15,25,35], 120) == 4
	assert candidate(
    [186,419,83,408], 6249
) == 20
	assert candidate(range(1, 50), 0) == 0
	assert candidate([2], 3) == -1
	assert candidate([1,2,3], 4) == 2
	assert candidate([1,2,5], 100) == 20
	assert candidate([1,3,5,7], 14) == 2
	assert candidate([18,21,24,27], 66) == 3
	assert candidate([3,4], 12) == 3
	assert candidate(
    [186, 419, 83, 408],
    6249) == 20
	assert candidate([1], 0) == 0
	assert candidate([1,2,5], 10) == 2
	assert candidate([3,4], 1) == -1
	assert candidate([1,2,5], 11) == 3
	assert candidate([3,4], 8) == 2
	assert candidate([1,3,4,5], 8) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10], 45) == 5
	assert candidate([2,5,10,20], 37) == 4
	assert candidate([3,4], 11) == 3
	assert candidate([186,419,83,408], 6249) == 20
	assert candidate([1,2,3,5], 6) == 2
	assert candidate([1,2,5], 7) == 2
	assert candidate(range(1, 100), 0) == 0
	assert candidate([3,4], 9) == 3
	assert candidate([200,217,219,307], 0) == 0
	assert candidate(range(1, 50), 1) == 1
	assert candidate([200,217,219,307], 10) == -1
	assert candidate([1,4,5,6], 23) == 4
def test_check():
	check(coinChange)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,breadth-first-search
# Metadata Coverage: 100
