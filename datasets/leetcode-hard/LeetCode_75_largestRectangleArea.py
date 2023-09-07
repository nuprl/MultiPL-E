from typing import List


def largestRectangleArea(heights: List[int]) -> int:
    """
    Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.
 
    Example 1:


    Input: heights = [2,1,5,6,2,3]
    Output: 10
    Explanation: The above is a histogram where width of each bar is 1.
    The largest rectangle is shown in the red area, which has an area = 10 units.

    Example 2:


    Input: heights = [2,4]
    Output: 4

 
    Constraints:

    1 <= heights.length <= 105
    0 <= heights[i] <= 104

    """
    ### Canonical solution below ###
    stack = []
    max_area = 0
    for i, h in enumerate(heights + [0]):
        while stack and heights[stack[-1]] > h:
            height = heights[stack.pop()]
            width = i if not stack else i - stack[-1] - 1
            max_area = max(max_area, height * width)
        stack.append(i)
    return max_area




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 2, 2]) == 8
	assert candidate([0]*105) == 0
	assert candidate([1, 3, 2, 1, 2]) == 5
	assert candidate([4, 2]) == 4
	assert candidate([1,3,2,1,2]) == 5
	assert candidate([0, 2, 2, 2, 0]) == 6
	assert candidate([2]*53) == 106
	assert candidate([0]*51 + [1, 1] + [0]*52) == 2
	assert candidate([2]*52 + [1] + [2]*52 + [0]*105) == 105
	assert candidate([1]*105) == 105
	assert candidate([0,1,0,1,0]) == 1
	assert candidate([0]*50 + [1, 1, 1] + [0]*52) == 3
	assert candidate([2,3,4,5,6]) == 12
	assert candidate([2, 2, 1, 1]) == 4
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 20
	assert candidate([2]*52 + [1] + [2]*52) == 105
	assert candidate([104]*105) == 10920
	assert candidate([6,5,4,3,2]) == 12
	assert candidate([0,0,0,1,0,0,0]) == 1
	assert candidate([1]*105 + [0]*105) == 105
	assert candidate([2,4]) == 4
	assert candidate([1]) == 1
	assert candidate([3,1,3,2,2]) == 6
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2, 1, 2]) == 10
	assert candidate([0]*105 + [2]*52 + [1] + [2]*52 + [0]*105 + [5, 4, 3, 2]) == 105
	assert candidate([0]*52 + [1] + [0]*52) == 1
	assert candidate([0]*105 + [2]*52 + [1] + [2]*52 + [0]*105) == 105
	assert candidate([4, 2, 0, 3, 2, 5]) == 6
	assert candidate([1,1,1,1]) == 4
	assert candidate([1,2,2,3,1]) == 6
	assert candidate([2,1,5,6,2,3]) == 10
def test_check():
	check(largestRectangleArea)
# Metadata Difficulty: Hard
# Metadata Topics: array,stack,monotonic-stack
# Metadata Coverage: 100
