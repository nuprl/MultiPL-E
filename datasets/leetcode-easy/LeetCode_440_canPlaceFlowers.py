from typing import List


def canPlaceFlowers(flowerbed: List[int], n: int) -> bool:
    """
    You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.
    Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
 
    Example 1:
    Input: flowerbed = [1,0,0,0,1], n = 1
    Output: true
    Example 2:
    Input: flowerbed = [1,0,0,0,1], n = 2
    Output: false

 
    Constraints:

    1 <= flowerbed.length <= 2 * 104
    flowerbed[i] is 0 or 1.
    There are no two adjacent flowers in flowerbed.
    0 <= n <= flowerbed.length

    """
    ### Canonical solution below ###
    count = 0
    for i in range(len(flowerbed)):
        if flowerbed[i] == 0 and (i == 0 or flowerbed[i - 1] == 0) and (i == len(flowerbed) - 1 or flowerbed[i + 1] == 0):
            flowerbed[i] = 1
            count += 1
        if count >= n:
            return True
    return count >= n




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,0,1,0,0,1,0,0,1], 0) == True
	assert candidate([0,0,1,0,0,0,0,0,0,1,0,0,0,0], 2) == True
	assert candidate([1,0,1,0,0,0,1], 2) == False
	assert candidate([1,0,0,1,0,0,1,0,0,1], 1) == False
	assert candidate([0,0,0,0,1,0,0,0,0], 4) == True
	assert candidate([0,0,0,0,0,0,0,0,0,0,0,0], 7) == False
	assert candidate([1,0,0,0,1], 1) == True
	assert candidate([0,0,0,0,0,0,0,0,0,0,0,0,0,0], 6) == True
	assert candidate([1,0,0,0,0,0,1], 2) == True
	assert candidate([1,0,0,0,1,0,0,0,0,0,0,0,0,0], 1) == True
	assert candidate([0,0,0,0,0,0,0,0,0,0], 6) == False
	assert candidate([1,0,0,0,0,0,0,0,1], 4) == False
	assert candidate([0,0,0,0,0,0,0,0,0,0,0,0], 6) == True
	assert candidate([1,0,0,1,0,0,0,1,0,0,1,0,0,1], 2) == False
	assert candidate([0,0,0,0,0,0,0,0,0,0], 5) == True
	assert candidate([1,0,1,0,0,0,1], 1) == True
	assert candidate([0,0,0,0,1,0,0,0,0], 5) == False
	assert candidate([0,0,0,0,0,0,0,0,0,0,0,0,0,0], 1) == True
	assert candidate([1,0,0,0,0,0,0,0,1], 3) == True
	assert candidate([0,0,1,0,0], 1) == True
	assert candidate([0,0,0,0,0], 3) == True
	assert candidate([1,0,0,0,1], 2) == False
	assert candidate([1,0,1,0,0,0,0,1,0,0,1,0,0,0], 1) == True
def test_check():
	check(canPlaceFlowers)
# Metadata Difficulty: Easy
# Metadata Topics: array,greedy
# Metadata Coverage: 100
