from typing import List


def final_prices(prices: List[int]) -> List[int]:
    """
    You are given an integer array prices where prices[i] is the price of the ith item in a shop.
    There is a special discount for items in the shop. If you buy the ith item, then you will receive a discount equivalent to prices[j] where j is the minimum index such that j > i and prices[j] <= prices[i]. Otherwise, you will not receive any discount at all.
    Return an integer array answer where answer[i] is the final price you will pay for the ith item of the shop, considering the special discount.
 
    Example 1:

    Input: prices = [8,4,6,2,3]
    Output: [4,2,4,2,3]
    Explanation: 
    For item 0 with price[0]=8 you will receive a discount equivalent to prices[1]=4, therefore, the final price you will pay is 8 - 4 = 4.
    For item 1 with price[1]=4 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 4 - 2 = 2.
    For item 2 with price[2]=6 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 6 - 2 = 4.
    For items 3 and 4 you will not receive any discount at all.

    Example 2:

    Input: prices = [1,2,3,4,5]
    Output: [1,2,3,4,5]
    Explanation: In this case, for all items, you will not receive any discount at all.

    Example 3:

    Input: prices = [10,1,1,6]
    Output: [9,0,1,6]

 
    Constraints:

    1 <= prices.length <= 500
    1 <= prices[i] <= 1000

    """
    ### Canonical solution below ###
    for i in range(len(prices)):
        for j in range(i + 1, len(prices)):
            if prices[j] <= prices[i]:
                prices[i] -= prices[j]
                break
    return prices




### Unit tests below ###
def check(candidate):
	assert candidate([3, 2, 1, 2]) == [1, 1, 1, 2]
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == [0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
	assert candidate([8, 4, 6, 2, 3]) == [4, 2, 4, 2, 3]
	assert candidate([10, 1, 10, 1, 10, 1, 10, 1]) == [9, 0, 9, 0, 9, 0, 9, 1]
	assert candidate([1, 1, 1, 1]) == [0, 0, 0, 1]
	assert candidate([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
	assert candidate([4, 4, 4, 4]) == [0, 0, 0, 4]
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == [
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
]
	assert candidate([5, 5, 5, 5, 5]) == [0, 0, 0, 0, 5]
	assert candidate([10, 1, 1, 6]) == [9, 0, 1, 6]
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10]) == [0, 0, 0, 0, 0, 0, 0, 10]
	assert candidate([5, 0, 5, 0, 5]) == [5, 0, 5, 0, 5]
def test_check():
	check(final_prices)
# Metadata Difficulty: Easy
# Metadata Topics: array,stack,monotonic-stack
# Metadata Coverage: 100
