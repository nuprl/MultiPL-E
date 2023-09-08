from typing import List


def maxProfit(inventory: List[int], orders: int) -> int:
    """
    You have an inventory of different colored balls, and there is a customer that wants orders balls of any color.
    The customer weirdly values the colored balls. Each colored ball's value is the number of balls of that color you currently have in your inventory. For example, if you own 6 yellow balls, the customer would pay 6 for the first yellow ball. After the transaction, there are only 5 yellow balls left, so the next yellow ball is then valued at 5 (i.e., the value of the balls decreases as you sell more to the customer).
    You are given an integer array, inventory, where inventory[i] represents the number of balls of the ith color that you initially own. You are also given an integer orders, which represents the total number of balls that the customer wants. You can sell the balls in any order.
    Return the maximum total value that you can attain after selling orders colored balls. As the answer may be too large, return it modulo 109 + 7.
 
    Example 1:


    Input: inventory = [2,5], orders = 4
    Output: 14
    Explanation: Sell the 1st color 1 time (2) and the 2nd color 3 times (5 + 4 + 3).
    The maximum total value is 2 + 5 + 4 + 3 = 14.

    Example 2:

    Input: inventory = [3,5], orders = 6
    Output: 19
    Explanation: Sell the 1st color 2 times (3 + 2) and the 2nd color 4 times (5 + 4 + 3 + 2).
    The maximum total value is 3 + 2 + 5 + 4 + 3 + 2 = 19.

 
    Constraints:

    1 <= inventory.length <= 105
    1 <= inventory[i] <= 109
    1 <= orders <= min(sum(inventory[i]), 109)

    """
    ### Canonical solution below ###
    mod = 10**9 + 7
    inventory.sort(reverse=True)
    inventory.append(0)
    n, ans, count = len(inventory), 0, 1
    for i in range(n - 1):
        diff = inventory[i] - inventory[i + 1]
        if count * diff < orders:
            orders -= count * diff
            ans = (ans + (((inventory[i] + inventory[i + 1] + 1) * diff) // 2) % mod * count) % mod
        else:
            q, r = divmod(orders, count)
            ans = (ans + (((inventory[i] + inventory[i] - q + 1) * q) // 2) % mod * count) % mod
            ans = (ans + r * (inventory[i] - q)) % mod
            break
        count += 1
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1], 5) == 5
	assert candidate([2, 5], 4) == 14
	assert candidate([3, 5], 6) == 19
	assert candidate(
    [3, 5], 6
) == 19
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 10) == 10
	assert candidate(
    [1000000000], 1000000000
) == 21
	assert candidate(
    [2, 5], 4
) == 14
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 20) == 20
	assert candidate([3, 3, 3, 3, 3], 5) == 15
def test_check():
	check(maxProfit)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,binary-search,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
