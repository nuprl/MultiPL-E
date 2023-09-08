from typing import List


def max_ice_cream(costs: List[int], coins: int) -> int:
    """
    It is a sweltering summer day, and a boy wants to buy some ice cream bars.
    At the store, there are n ice cream bars. You are given an array costs of length n, where costs[i] is the price of the ith ice cream bar in coins. The boy initially has coins coins to spend, and he wants to buy as many ice cream bars as possible. 
    Note: The boy can buy the ice cream bars in any order.
    Return the maximum number of ice cream bars the boy can buy with coins coins.
    You must solve the problem by counting sort.
 
    Example 1:

    Input: costs = [1,3,2,4,1], coins = 7
    Output: 4
    Explanation: The boy can buy ice cream bars at indices 0,1,2,4 for a total price of 1 + 3 + 2 + 1 = 7.

    Example 2:

    Input: costs = [10,6,8,7,7,8], coins = 5
    Output: 0
    Explanation: The boy cannot afford any of the ice cream bars.

    Example 3:

    Input: costs = [1,6,3,1,2,5], coins = 20
    Output: 6
    Explanation: The boy can buy all the ice cream bars for a total price of 1 + 6 + 3 + 1 + 2 + 5 = 18.

 
    Constraints:

    costs.length == n
    1 <= n <= 105
    1 <= costs[i] <= 105
    1 <= coins <= 108

    """
    ### Canonical solution below ###
    costs.sort()
    count = 0
    for cost in costs:
        if coins >= cost:
            coins -= cost
            count += 1
        else:
            break
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], 0) == 0
	assert candidate([3, 3, 3, 3, 3], 10) == 3
	assert candidate([1, 6, 3, 1, 2, 5], 15) == 5
	assert candidate([1, 1, 1, 1, 1], 5) == 5
	assert candidate([1, 1, 1, 1, 1], 3) == 3
	assert candidate([1, 3, 2, 4, 1], 7) == 4
	assert candidate(
    [10, 6, 8, 7, 7, 8], 5) == 0
	assert candidate([1, 2, 3, 4, 5], 5) == 2
	assert candidate([1, 6, 3, 1, 2, 5], 7) == 4
	assert candidate([5, 5, 5, 5, 5], 25) == 5
	assert candidate([5, 10, 20, 30, 40], 105) == 5
	assert candidate([10, 6, 8, 7, 5], 31) == 4
	assert candidate([1, 2, 3, 4, 5], 1) == 1
	assert candidate([2, 2, 2, 2, 2], 5) == 2
	assert candidate([1, 6, 3, 1, 2, 5], 20) == 6
	assert candidate([10, 10, 10, 10, 10], 50) == 5
	assert candidate(
    [1, 6, 3, 1, 2, 5], 20) == 6
	assert candidate(
    [10, 6, 8, 7, 7, 8], 5
) == 0
	assert candidate(
    [1, 3, 2, 4, 1], 7) == 4
	assert candidate([1, 2, 3, 4, 5], 15) == 5
	assert candidate([1, 6, 3, 1, 2, 5], 6) == 3
def test_check():
	check(max_ice_cream)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting
# Metadata Coverage: 100
