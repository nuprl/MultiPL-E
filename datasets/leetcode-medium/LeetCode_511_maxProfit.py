from typing import List


def maxProfit(prices: List[int], fee: int) -> int:
    """
    You are given an array prices where prices[i] is the price of a given stock on the ith day, and an integer fee representing a transaction fee.
    Find the maximum profit you can achieve. You may complete as many transactions as you like, but you need to pay the transaction fee for each transaction.
    Note:

    You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).
    The transaction fee is only charged once for each stock purchase and sale.

 
    Example 1:

    Input: prices = [1,3,2,8,4,9], fee = 2
    Output: 8
    Explanation: The maximum profit can be achieved by:
    - Buying at prices[0] = 1
    - Selling at prices[3] = 8
    - Buying at prices[4] = 4
    - Selling at prices[5] = 9
    The total profit is ((8 - 1) - 2) + ((9 - 4) - 2) = 8.

    Example 2:

    Input: prices = [1,3,7,5,10,3], fee = 3
    Output: 6

 
    Constraints:

    1 <= prices.length <= 5 * 104
    1 <= prices[i] < 5 * 104
    0 <= fee < 5 * 104

    """
    ### Canonical solution below ###
    cash, hold = 0, -prices[0]
    for price in prices:
        temp = cash
        cash = max(cash, hold + price - fee)
        hold = max(hold, temp - price)
    return cash




### Unit tests below ###
def check(candidate):
	assert candidate([5,3,1], 2) == 0
	assert candidate([1,1,1,1,1], 0) == 0
	assert candidate([10,20,30,40,50], 10) == 30
	assert candidate([5,4,3,2,1], 1) == 0
	assert candidate([50,40,30,20,10], 10) == 0
	assert candidate([1,3,1,5,1,7], 3) == 4
	assert candidate([1,10,1,10,1], 2) == 14
	assert candidate([1,2,3,4,5], 0) == 4
	assert candidate([1,3,1,5,1,7], 2) == 6
	assert candidate([1,3,2,8,4,9], 2) == 8
	assert candidate([5,4,3,2,1], 0) == 0
	assert candidate([1,2,3,2,1], 2) == 0
	assert candidate([1,1,1,1,1], 1) == 0
	assert candidate([1,10,1,10,1], 1) == 16
	assert candidate([1,2,3,2,1], 1) == 1
	assert candidate([1,2,3,4,5], 1) == 3
	assert candidate([1,3,7,5,10,3], 3) == 6
	assert candidate([1,10,1,10,1], 3) == 12
def test_check():
	check(maxProfit)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
