from typing import List


def trap(height: List[int]) -> int:
    """
    Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.
 
    Example 1:


    Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
    Output: 6
    Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

    Example 2:

    Input: height = [4,2,0,3,2,5]
    Output: 9

 
    Constraints:

    n == height.length
    1 <= n <= 2 * 104
    0 <= height[i] <= 105

    """
    ### Canonical solution below ###
    n = len(height)
    left, right, max_left, max_right, water = 0, n - 1, 0, 0, 0

    while left < right:
        if height[left] <= height[right]:
            max_left = max(max_left, height[left])
            water += max_left - height[left]
            left += 1
        else:
            max_right = max(max_right, height[right])
            water += max_right - height[right]
            right -= 1

    return water




### Unit tests below ###
def check(candidate):
	assert candidate([1, 0, 1, 0, 1]) == 2
	assert candidate([6,5,4,3,2,1,2,3,4,5,6]) == 25
	assert candidate([1,2,3,4,5,0,5,4,3,2,1]) == 5
	assert candidate([3,0,2,0,4]) == 7
	assert candidate(range(5000)) == 0
	assert candidate([1,0,1]) == 1
	assert candidate([2,10,8,7,6,5]) == 0
	assert candidate([5,2,1,2,1,5]) == 14
	assert candidate([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1, 0]) == 6
	assert candidate([0,0,0,0,0,0]) == 0
	assert candidate([2,0,1]) == 1
	assert candidate([4,2,0,3,2,5]) == 9
	assert candidate([1,2,3,2,1]) == 0
	assert candidate([1,0,1,0,1]) == 2
	assert candidate([0,0,0,0,0]) == 0
	assert candidate([1,0,2]) == 1
	assert candidate([2, 0, 2]) == 2
	assert candidate([3, 0, 2]) == 2
	assert candidate([3,0,0,0,0]) == 0
	assert candidate([2,0,2]) == 2
	assert candidate([4, 2, 3]) == 1
	assert candidate([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6
	assert candidate([1, 0, 1]) == 1
	assert candidate([0,1,0,2,1,0,1,3,2,1,2,1,0]) == 6
	assert candidate([0,2,0]) == 0
	assert candidate([0,1,0,2,1,0,1,3,2,1,2,1]) == 6
	assert candidate([2,1,0,2,1,0,1,3,2,1,2,1]) == 8
	assert candidate([1, 1]) == 0
	assert candidate([1, 2, 3, 4]) == 0
	assert candidate([1,1]) == 0
	assert candidate([0, 2, 1, 2, 3, 4]) == 1
	assert candidate([1,2,3,4,5,6,5,4,3,2,1]) == 0
	assert candidate(list(range(10000)) + [9999]) == 0
	assert candidate([5,4,1,2]) == 1
	assert candidate([1,0,3,0,1]) == 2
	assert candidate([3,0,1,3,0,5]) == 8
def test_check():
	check(trap)
# Metadata Difficulty: Hard
# Metadata Topics: array,two-pointers,dynamic-programming,stack,monotonic-stack
# Metadata Coverage: 100
