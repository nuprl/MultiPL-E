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
    from itertools import product
    closest = float('inf')
    topping_combinations = list(product([0, 1, 2], repeat=len(topping_costs)))

    for base in base_costs:
        for combination in topping_combinations:
            combination_cost = sum(x * y for x, y in zip(topping_costs, combination))
            diff = abs(target - (base + combination_cost))
            if diff < closest:
                closest = diff
            if diff == 0:
                return target

    return target - closest




### Unit tests below ###
def check(candidate):
	assert candidate([1,1], [1,1], 2) == 2
	assert candidate([1,3,5,7,9], [2,4,6,8,10], 25) == 25
	assert candidate([1,1,1], [1,1,1], 1) == 1
	assert candidate([10000,10000], [1,1], 10000) == 10000
	assert candidate([1,2,3], [1,2,3], 6) == 6
	assert candidate([1,7], [3,4], 10) == 10
	assert candidate([1,2,3,9], [4,5,100,9], 19) == 19
	assert candidate([3,10], [2,5], 9) == 8
	assert candidate([4,2], [8,5], 4) == 4
	assert candidate([1,1,1], [1,1,1], 8) == 7
	assert candidate([1,1,1], [1,1,1], 2) == 2
	assert candidate([1,2,3,9], [4,5,100,9], 1) == 1
	assert candidate([1,1,1], [1,1,1], 3) == 3
	assert candidate([1,2,3,9], [4,5,100,9], 20) == 20
	assert candidate([1,2,3], [4,5,100], 18) == 17
	assert candidate([10,20,30], [10,20,30], 50) == 50
	assert candidate([10,20,30], [10,20,30], 90) == 90
	assert candidate([1,1,1], [1,1,1], 5) == 5
	assert candidate([1,1,1,1], [1,1,1,1], 4) == 4
	assert candidate([10,20,30], [10,20,30], 100) == 100
	assert candidate([10,20,30], [10,20,30], 70) == 70
	assert candidate([2,3], [4,5,100], 18) == 17
	assert candidate([10,20,30], [10,20,30], 80) == 80
	assert candidate([1,2,3,9], [4,5,100,9], 5) == 5
	assert candidate([10,20,30], [10,20,30], 60) == 60
def test_check():
	check(closest_cost)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking
# Metadata Coverage: 100
