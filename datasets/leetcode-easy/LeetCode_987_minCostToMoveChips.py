from typing import List


def minCostToMoveChips(position: List[int]) -> int:
    """
    We have n chips, where the position of the ith chip is position[i].
    We need to move all the chips to the same position. In one step, we can change the position of the ith chip from position[i] to:

    position[i] + 2 or position[i] - 2 with cost = 0.
    position[i] + 1 or position[i] - 1 with cost = 1.

    Return the minimum cost needed to move all the chips to the same position.
 
    Example 1:


    Input: position = [1,2,3]
    Output: 1
    Explanation: First step: Move the chip at position 3 to position 1 with cost = 0.
    Second step: Move the chip at position 2 to position 1 with cost = 1.
    Total cost is 1.

    Example 2:


    Input: position = [2,2,2,3,3]
    Output: 2
    Explanation: We can move the two chips at position  3 to position 2. Each move has cost = 1. The total cost = 2.

    Example 3:

    Input: position = [1,1000000000]
    Output: 1

 
    Constraints:

    1 <= position.length <= 100
    1 <= position[i] <= 10^9

    """
    ### Canonical solution below ###
    evenCount, oddCount = 0, 0
    for i in position:
        if i % 2 == 0:
            evenCount += 1
        else:
            oddCount += 1
    return min(evenCount, oddCount)




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1, 2]) == 5
	assert candidate([1, 1, 1, 1, 1, 1, 1, 2, 2, 2]) == 3
	assert candidate([2, 4, 6, 8, 10, 1, 3, 5, 7, 9]) == 5
	assert candidate([1, 3, 5, 7, 9, 2, 4, 6, 8, 10]) == 5
	assert candidate([1, 2, 3, 4, 5]) == 2
	assert candidate([1, 1, 1, 1, 1]) == 0
	assert candidate([3, 3, 3, 3, 3]) == 0
	assert candidate([2, 2, 2, 2, 2]) == 0
	assert candidate([1, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == 1
	assert candidate([2, 4, 6, 8, 10]) == 0
	assert candidate([1, 3, 5, 7, 9]) == 0
def test_check():
	check(minCostToMoveChips)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,greedy
# Metadata Coverage: 100
