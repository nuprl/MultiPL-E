from typing import List


def max_area(height: List[int]) -> int:
    """
    You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
    Find two lines that together with the x-axis form a container, such that the container contains the most water.
    Return the maximum amount of water a container can store.
    Notice that you may not slant the container.
 
    Example 1:


    Input: height = [1,8,6,2,5,4,8,3,7]
    Output: 49
    Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

    Example 2:

    Input: height = [1,1]
    Output: 1

 
    Constraints:

    n == height.length
    2 <= n <= 105
    0 <= height[i] <= 104

    """
    ### Canonical solution below ###
    max_area, left, right = 0, 0, len(height) - 1
    while left < right:
        max_area = max(max_area, min(height[left], height[right]) * (right - left))
        if height[left] < height[right]:
            left += 1
        else:
            right -= 1
    return max_area




### Unit tests below ###
def check(candidate):
	assert candidate([1,4,3,2]) == 4
	assert candidate([1,2,4,3]) == 4
	assert candidate([1,8,6,2,5,4,8,3,7]) == 49
	assert candidate([1,3,2,5,25,24,5]) == 24
	assert candidate(list(reversed(range(100)))) == 2450
	assert candidate([]) == 0
	assert candidate(list(reversed(range(1, 100)))) == 2450
	assert candidate([1,3,1,5,25,24,5]) == 24
	assert candidate([2,3,4,5,18,17,6]) == 17
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 25
	assert candidate([1,1]) == 1
	assert candidate([10]) == 0
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 25
	assert candidate([1,2,1]) == 2
def test_check():
	check(max_area)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,greedy
# Metadata Coverage: 100
