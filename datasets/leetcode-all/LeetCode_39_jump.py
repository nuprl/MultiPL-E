from typing import List


def jump(nums: List[int]) -> int:
    """
    You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].
    Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:

    0 <= j <= nums[i] and
    i + j < n

    Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].
 
    Example 1:

    Input: nums = [2,3,1,1,4]
    Output: 2
    Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.

    Example 2:

    Input: nums = [2,3,0,1,4]
    Output: 2

 
    Constraints:

    1 <= nums.length <= 104
    0 <= nums[i] <= 1000
    It's guaranteed that you can reach nums[n - 1].

    """
    ### Canonical solution below ###
    jumps = 0
    current_end = 0
    current_farthest = 0

    for i in range(len(nums) - 1):
        current_farthest = max(current_farthest, i + nums[i])
        if i == current_end:
            jumps += 1
            current_end = current_farthest

    return jumps




### Unit tests below ###
def check(candidate):
	assert candidate([2,3,1,1,4]) == 2
	assert candidate([9,8,7,6,5,4,3,2,1]) == 1
	assert candidate([2,3,0,1,4]) == 2
	assert candidate([1]*1000) == 999
	assert candidate([7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]) == 2
	assert candidate([1,1,1,1,1,1,1,1,1,1]) == 9
	assert candidate([1000] + [1]*999) == 1
	assert candidate([0]*2 + [1]*1000 + [0]*2) == 1
	assert candidate([5,9,3,2,1,0,2,3,3,1,0,0]) == 3
	assert candidate([1000]*1000) == 1
def test_check():
	check(jump)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
