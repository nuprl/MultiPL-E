from typing import List


def partitionDisjoint(nums: List[int]) -> int:
    """
    Given an integer array nums, partition it into two (contiguous) subarrays left and right so that:

    Every element in left is less than or equal to every element in right.
    left and right are non-empty.
    left has the smallest possible size.

    Return the length of left after such a partitioning.
    Test cases are generated such that partitioning exists.
 
    Example 1:

    Input: nums = [5,0,3,8,6]
    Output: 3
    Explanation: left = [5,0,3], right = [8,6]

    Example 2:

    Input: nums = [1,1,1,0,6,12]
    Output: 4
    Explanation: left = [1,1,1,0], right = [6,12]

 
    Constraints:

    2 <= nums.length <= 105
    0 <= nums[i] <= 106
    There is at least one valid answer for the given input.

    """
    ### Canonical solution below ###
    left_max, global_max, left_length = nums[0], nums[0], 1
    for i in range(1, len(nums)):
        if nums[i] < left_max:
            left_max = global_max
            left_length = i + 1
        else:
            global_max = max(global_max, nums[i])
    return left_length




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,6,8,0,9]) == 6
	assert candidate(
    [1,2,3,4,5,0,6,7,8,9,10]) == 6
	assert candidate([1,1,1,0,6,12]) == 4
	assert candidate([0,1,2,3,4]) == 1
	assert candidate([5,0,3,8,6]) == 3
	assert candidate([1,1,1,0,0,0,0,1,1,1]) == 7
	assert candidate([1,1,0,2,3,4]) == 3
	assert candidate(
    [1,2,3,6,8,0,9]) == 6
	assert candidate([5,4,3,2,1,0]) == 6
	assert candidate([1,1,1,0,6,12,0]) == 7
	assert candidate([1,0,2]) == 2
	assert candidate([90,47,69,10,43,92,31,73,61,97]) == 9
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
	assert candidate([1,2,3,4,5,0,6,7,8,9,10]) == 6
	assert candidate([1,0,1,0,1,0,1,0,1,0]) == 10
	assert candidate([2,1,0,3,4]) == 3
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 10
	assert candidate([3,2,1,0]) == 4
def test_check():
	check(partitionDisjoint)
# Metadata Difficulty: Medium
# Metadata Topics: array
# Metadata Coverage: 100
