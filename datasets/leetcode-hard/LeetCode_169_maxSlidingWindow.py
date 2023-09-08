from typing import List


def maxSlidingWindow(nums: List[int], k: int) -> List[int]:
    """
    You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.
    Return the max sliding window.
 
    Example 1:

    Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
    Output: [3,3,5,5,6,7]
    Explanation: 
    Window position                Max
    ---------------               -----
    [1  3  -1] -3  5  3  6  7       3
     1 [3  -1  -3] 5  3  6  7       3
     1  3 [-1  -3  5] 3  6  7       5
     1  3  -1 [-3  5  3] 6  7       5
     1  3  -1  -3 [5  3  6] 7       6
     1  3  -1  -3  5 [3  6  7]      7

    Example 2:

    Input: nums = [1], k = 1
    Output: [1]

 
    Constraints:

    1 <= nums.length <= 105
    -104 <= nums[i] <= 104
    1 <= k <= nums.length

    """
    ### Canonical solution below ###
    from collections import deque
    dq = deque()
    result = []

    for i in range(len(nums)):
        while dq and dq[0] < i - k + 1:
            dq.popleft()

        while dq and nums[dq[-1]] < nums[i]:
            dq.pop()

        dq.append(i)

        if i >= k - 1:
            result.append(nums[dq[0]])

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([10,9,8,7,6,5,4,3,2,1], 10) == [10]
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1], 3) == [1,1,1,1,1,1,1,1,1,1]
	assert candidate([1], 1) == [1]
	assert candidate([1,3,1,2,0,5], 6) == [5]
	assert candidate([1,3,1,2,0,5], 3) == [3,3,2,5]
	assert candidate([-1,-3,-1,-3,5,3,6,7], 3) == [-1,-1,5,5,6,7]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 3) == [3,4,5,6,7,8,9,10]
	assert candidate([1,2,3,4,5,6,7,8,9,10], 10) == [10]
	assert candidate(
    [1,3,-1,-3,5,3,6,7], 2
) == [3,3,-1,5,5,6,7]
	assert candidate([1,2,3,4,5,4,3,2,1], 3) == [3,4,5,5,5,4,3]
	assert candidate([1,3,1,2,0,5], 1) == [1,3,1,2,0,5]
	assert candidate([1,3,-1,-3,5,3,6,7], 3) == [3,3,5,5,6,7]
	assert candidate(
    [-7,-8,7,5,7,1,9,0,1,0], 1) == [-7,-8,7,5,7,1,9,0,1,0]
def test_check():
	check(maxSlidingWindow)
# Metadata Difficulty: Hard
# Metadata Topics: array,queue,sliding-window,heap-priority-queue,monotonic-queue
# Metadata Coverage: 100
