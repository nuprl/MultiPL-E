from typing import List


def furthest_building(heights: List[int], bricks: int, ladders: int) -> int:
    """
    You are given an integer array heights representing the heights of buildings, some bricks, and some ladders.
    You start your journey from building 0 and move to the next building by possibly using bricks or ladders.
    While moving from building i to building i+1 (0-indexed),

    If the current building's height is greater than or equal to the next building's height, you do not need a ladder or bricks.
    If the current building's height is less than the next building's height, you can either use one ladder or (h[i+1] - h[i]) bricks.

    Return the furthest building index (0-indexed) you can reach if you use the given ladders and bricks optimally.
 
    Example 1:


    Input: heights = [4,2,7,6,9,14,12], bricks = 5, ladders = 1
    Output: 4
    Explanation: Starting at building 0, you can follow these steps:
    - Go to building 1 without using ladders nor bricks since 4 >= 2.
    - Go to building 2 using 5 bricks. You must use either bricks or ladders because 2 < 7.
    - Go to building 3 without using ladders nor bricks since 7 >= 6.
    - Go to building 4 using your only ladder. You must use either bricks or ladders because 6 < 9.
    It is impossible to go beyond building 4 because you do not have any more bricks or ladders.

    Example 2:

    Input: heights = [4,12,2,7,3,18,20,3,19], bricks = 10, ladders = 2
    Output: 7

    Example 3:

    Input: heights = [14,3,19,3], bricks = 17, ladders = 0
    Output: 3

 
    Constraints:

    1 <= heights.length <= 105
    1 <= heights[i] <= 106
    0 <= bricks <= 109
    0 <= ladders <= heights.length

    """
    ### Canonical solution below ###
    import heapq
    min_heap = []
    for i in range(len(heights) - 1):
        diff = heights[i + 1] - heights[i]
        if diff > 0:
            heapq.heappush(min_heap, diff)
            if len(min_heap) > ladders:
                bricks -= heapq.heappop(min_heap)
                if bricks < 0:
                    return i
    return len(heights) - 1




### Unit tests below ###
def check(candidate):
	assert candidate([4,4,4,4], 1, 1) == 3
	assert candidate([2,3,1,4], 0, 0) == 0
	assert candidate([10,9,8,7,6,5,4,3,2,1], 5, 5) == 9
	assert candidate([4,3,2,1], 0, 0) == 3
	assert candidate([4,12,2,7,3,18,20,3,19], 10, 2) == 7
	assert candidate([1,2,5,9,1,0,2,9], 2, 2) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10], 6, 5) == 9
	assert candidate([4,2,3,1], 2, 2) == 3
	assert candidate([1,3,2,4], 0, 0) == 0
	assert candidate([2,3,1,4], 3, 3) == 3
	assert candidate([1,3,2,4], 2, 2) == 3
	assert candidate([4,3,2,1], 4, 4) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10], 7, 5) == 9
	assert candidate([4,3,2,1], 2, 2) == 3
	assert candidate([1,2,5,9,1,0,2], 2, 2) == 5
	assert candidate([4,3,2,1], 3, 1) == 3
	assert candidate([1,3,2,4], 2, 1) == 3
	assert candidate([4,3,2,1,2,3,4], 3, 3) == 6
	assert candidate([1,2,5,9,1,0,2], 3, 3) == 6
	assert candidate([4,2,3,1], 3, 3) == 3
	assert candidate([4,4,4,4], 2, 2) == 3
	assert candidate([4,3,2,1], 5, 5) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10], 0, 0) == 0
	assert candidate([1,3,2,4], 10, 0) == 3
	assert candidate([4,3,2,1], 1, 1) == 3
	assert candidate([1,3,2,4], 3, 3) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5, 5) == 9
	assert candidate([4,4,4,4], 3, 3) == 3
	assert candidate([4,4,4,4], 4, 4) == 3
	assert candidate([4,3,2,1], 3, 3) == 3
def test_check():
	check(furthest_building)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,heap-priority-queue
# Metadata Coverage: 100
