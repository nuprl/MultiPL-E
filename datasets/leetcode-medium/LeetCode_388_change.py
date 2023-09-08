from typing import List


def change(amount: int, coins: List[int]) -> int:
    """
    You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.
    Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.
    You may assume that you have an infinite number of each kind of coin.
    The answer is guaranteed to fit into a signed 32-bit integer.
 
    Example 1:

    Input: amount = 5, coins = [1,2,5]
    Output: 4
    Explanation: there are four ways to make up the amount:
    5=5
    5=2+2+1
    5=2+1+1+1
    5=1+1+1+1+1

    Example 2:

    Input: amount = 3, coins = [2]
    Output: 0
    Explanation: the amount of 3 cannot be made up just with coins of 2.

    Example 3:

    Input: amount = 10, coins = [10]
    Output: 1

 
    Constraints:

    1 <= coins.length <= 300
    1 <= coins[i] <= 5000
    All the values of coins are unique.
    0 <= amount <= 5000

    """
    ### Canonical solution below ###
    dp = [1] + [0] * amount
    for coin in coins:
        for i in range(coin, amount + 1):
            dp[i] += dp[i - coin]
    return dp[amount]




### Unit tests below ###
def check(candidate):
	assert candidate(7, [2,3,7]) == 2
	assert candidate(3, [4,6,9,11]) == 0
	assert candidate(5, [1, 2, 5]) == 4
	assert candidate(6, [1, 2, 3]) == 7
	assert candidate(100, [5,8]) == 3
	assert candidate(10, [10]) == 1
	assert candidate(8, [2,3,8]) == 3
	assert candidate(10, [2, 5, 3, 6]) == 5
	assert candidate(6, [1,2,3]) == 7
	assert candidate(2, [1, 2]) == 2
	assert candidate(5000, [1, 5000]) == 2
	assert candidate(1, [2]) == 0
	assert candidate(9, [3,4,5,6]) == 3
	assert candidate(21, [7,14]) == 2
	assert candidate(2, [2]) == 1
	assert candidate(1000, [1]) == 1
	assert candidate(0, [1, 2, 3]) == 1
	assert candidate(4, [1, 2]) == 3
	assert candidate(7, [4,5]) == 0
	assert candidate(3, [2]) == 0
def test_check():
	check(change)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
