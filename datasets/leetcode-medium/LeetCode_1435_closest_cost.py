from typing import List


def closest_cost(base_costs: List[int], topping_costs: List[int], target: int) -> int:
    """
    You would like to make dessert and are preparing to buy the ingredients. You have n ice cream base flavors and m types of toppings to choose from. You must follow these rules when making your dessert:

    There must be exactly one ice cream base.
    You can add one or more types of topping or have no toppings at all.
    There are at most two of each type of topping.

    You are given three inputs:

    baseCosts, an integer array of length n, where each baseCosts[i] represents the price of the ith ice cream base flavor.
    toppingCosts, an integer array of length m, where each toppingCosts[i] is the price of one of the ith topping.
    target, an integer representing your target price for dessert.

    You want to make a dessert with a total cost as close to target as possible.
    Return the closest possible cost of the dessert to target. If there are multiple, return the lower one.
 
    Example 1:

    Input: baseCosts = [1,7], toppingCosts = [3,4], target = 10
    Output: 10
    Explanation: Consider the following combination (all 0-indexed):
    - Choose base 1: cost 7
    - Take 1 of topping 0: cost 1 x 3 = 3
    - Take 0 of topping 1: cost 0 x 4 = 0
    Total: 7 + 3 + 0 = 10.

    Example 2:

    Input: baseCosts = [2,3], toppingCosts = [4,5,100], target = 18
    Output: 17
    Explanation: Consider the following combination (all 0-indexed):
    - Choose base 1: cost 3
    - Take 1 of topping 0: cost 1 x 4 = 4
    - Take 2 of topping 1: cost 2 x 5 = 10
    - Take 0 of topping 2: cost 0 x 100 = 0
    Total: 3 + 4 + 10 + 0 = 17. You cannot make a dessert with a total cost of 18.

    Example 3:

    Input: baseCosts = [3,10], toppingCosts = [2,5], target = 9
    Output: 8
    Explanation: It is possible to make desserts with cost 8 and 10. Return 8 as it is the lower cost.

 
    Constraints:

    n == baseCosts.length
    m == toppingCosts.length
    1 <= n, m <= 10
    1 <= baseCosts[i], toppingCosts[i] <= 104
    1 <= target <= 104

    """
    ### Canonical solution below ###
    closest = base_costs[0]

    for base in base_costs:
        cost = base

        for i in range(1 << (len(topping_costs) * 2)):
            bit_mask = i

            for j, topping_cost in enumerate(topping_costs):
                cost += (bit_mask & 3) * topping_cost
                bit_mask >>= 2

            if abs(target - cost) < abs(target - closest):
                closest = cost
            elif abs(target - cost) == abs(target - closest) and cost < closest:
                closest = cost

            cost = base

    return closest




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3], [1,2], 1) == 1
	assert candidate([1,2,3], [2,3], 17) == 17
	assert candidate([1,2,3], [4,5,100], 17) == 17
	assert candidate([1,1,1], [1,1,1], 1) == 1
	assert candidate([1,2,3], [2,3], 14) == 14
	assert candidate([1,2,3], [2,3], 13) == 13
	assert candidate([1,2,3], [1,2], 2) == 2
	assert candidate([1,7], [3,4], 10) == 10
	assert candidate([2,3,1], [1,2], 12) == 12
	assert candidate([2,3,4], [1,2], 6) == 6
	assert candidate([1,1,1], [1,1,1], 2) == 2
	assert candidate([2,3,1], [2,1], 3) == 3
	assert candidate([1,3,2], [1,2], 12) == 12
	assert candidate([2,3,1], [2,1], 8) == 8
	assert candidate([1,2,3], [1,2], 7) == 7
	assert candidate([1,2,3], [1,2], 12) == 12
	assert candidate([1,2,3], [2,3], 15) == 15
	assert candidate([1,2,3], [1,2], 4) == 4
	assert candidate([2,3,1], [2,1], 6) == 6
	assert candidate([1,2,3], [4,5,100], 15) == 15
	assert candidate([1,2,3], [1,2], 9) == 9
	assert candidate([2], [1,3], 2) == 2
	assert candidate([1,2,3], [2,3], 18) == 18
	assert candidate([1,2,3], [2,3], 11) == 11
	assert candidate([1,2,3], [1,2], 10) == 10
	assert candidate([1,2,3], [1,2], 3) == 3
	assert candidate([2,3,1], [2,1], 10) == 10
	assert candidate([2], [1,3], 3) == 3
	assert candidate([1,2,3], [2,3], 12) == 12
	assert candidate([1,2,3], [2,3], 16) == 16
	assert candidate([2,3,1], [2,1], 9) == 9
	assert candidate([1,2,3], [1,2], 0) == 1
	assert candidate([1,2,3], [1,2], 8) == 8
	assert candidate([2,3,1], [2,1], 4) == 4
	assert candidate([1,2,3], [1,2], 6) == 6
	assert candidate([1,2,3], [1,2], 5) == 5
	assert candidate([2,3,1], [2,1], 7) == 7
	assert candidate([2], [1,3], 1) == 2
	assert candidate([2,3,1], [2,1], 5) == 5
def test_check():
	check(closest_cost)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking
# Metadata Coverage: 100
