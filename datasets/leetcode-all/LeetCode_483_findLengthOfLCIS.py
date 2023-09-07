from typing import List


def findLengthOfLCIS(nums: List[int]) -> int:
    """
    Given an unsorted array of integers nums, return the length of the longest continuous increasing subsequence (i.e. subarray). The subsequence must be strictly increasing.
    A continuous increasing subsequence is defined by two indices l and r (l < r) such that it is [nums[l], nums[l + 1], ..., nums[r - 1], nums[r]] and for each l <= i < r, nums[i] < nums[i + 1].
 
    Example 1:

    Input: nums = [1,3,5,4,7]
    Output: 3
    Explanation: The longest continuous increasing subsequence is [1,3,5] with length 3.
    Even though [1,3,5,7] is an increasing subsequence, it is not continuous as elements 5 and 7 are separated by element
    4.

    Example 2:

    Input: nums = [2,2,2,2,2]
    Output: 1
    Explanation: The longest continuous increasing subsequence is [2] with length 1. Note that it must be strictly
    increasing.

 
    Constraints:

    1 <= nums.length <= 104
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    if not nums:
        return 0
    result, current = 1, 1
    for i in range(1, len(nums)):
        current = current + 1 if nums[i] > nums[i - 1] else 1
        result = max(result, current)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(range(20000, 1, -1)) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,2]) == 2
	assert candidate(range(20, 1, -1)) == 1
	assert candidate([1,2,1,3,2,2,2]) == 2
	assert candidate([-1,0,1,2,3,4,5,6,7,8,9]) == 11
	assert candidate(range(1, 20000)) == 19999
	assert candidate([3,5,3,5,3,5,4]) == 2
	assert candidate([1,3,5,4,2]) == 3
	assert candidate([2,1,2,3,2,3,4,3,4]) == 3
	assert candidate(range(1, 20)) == 19
	assert candidate([0,1,0,1,0,1,0,1,0,1]) == 2
	assert candidate([5,6,7,8,9,1,2,3,4]) == 5
	assert candidate([1,0,1,0,1,0,1,0,1,0]) == 2
	assert candidate([-10,-8,-6,-4,-2,0,2,4,6,8,10]) == 11
	assert candidate(list(range(1, 2000))) == 1999
	assert candidate([2,1,2,1,2,1,2,1]) == 2
	assert candidate([1,3,5,4]) == 3
	assert candidate([1,3,5,7,9,11,13,15,17,19]) == 10
	assert candidate([9,8,7,6,5,4,3,2,1,-1,-2,-3,-4,-5,-6,-7,-8,-9]) == 1
	assert candidate([2,1,1,1,1,1,1,1,1,1]) == 1
	assert candidate(range(100000)) == 100000
	assert candidate([1,3,5,4,7]) == 3
	assert candidate([2,2,2,2,2]) == 1
	assert candidate([-9,-8,-7,-6,-5,-4,-3,-2,-1,0]) == 10
	assert candidate([1,2,3,2,1,2,3,2,1]) == 3
	assert candidate([1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9]) == 9
	assert candidate(list(range(1000, 0, -1))) == 1
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 1
	assert candidate([1,3,5,7,9,2,4,6,8,10]) == 5
	assert candidate([]) == 0
def test_check():
	check(findLengthOfLCIS)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
