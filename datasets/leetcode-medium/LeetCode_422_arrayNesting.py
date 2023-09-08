from typing import List


def arrayNesting(nums: List[int]) -> int:
    """
    You are given an integer array nums of length n where nums is a permutation of the numbers in the range [0, n - 1].
    You should build a set s[k] = {nums[k], nums[nums[k]], nums[nums[nums[k]]], ... } subjected to the following rule:

    The first element in s[k] starts with the selection of the element nums[k] of index = k.
    The next element in s[k] should be nums[nums[k]], and then nums[nums[nums[k]]], and so on.
    We stop adding right before a duplicate element occurs in s[k].

    Return the longest length of a set s[k].
 
    Example 1:

    Input: nums = [5,4,0,3,1,6,2]
    Output: 4
    Explanation: 
    nums[0] = 5, nums[1] = 4, nums[2] = 0, nums[3] = 3, nums[4] = 1, nums[5] = 6, nums[6] = 2.
    One of the longest sets s[k]:
    s[0] = {nums[0], nums[5], nums[6], nums[2]} = {5, 6, 2, 0}

    Example 2:

    Input: nums = [0,1,2]
    Output: 1

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] < nums.length
    All the values of nums are unique.

    """
    ### Canonical solution below ###
    n = len(nums)
    max_len = 0
    for i in range(n):
        if nums[i] != -1:
            start = nums[i]
            count = 0
            while nums[start] != -1:
                temp = start
                start = nums[start]
                count += 1
                nums[temp] = -1
            max_len = max(max_len, count)
    return max_len




### Unit tests below ###
def check(candidate):
	assert candidate([5,4,0,3,1,6,2]) == 4
	assert candidate([1,2,3,4,0]) == 5
	assert candidate([0,1,2,3,4]) == 1
	assert candidate([0,1,2,3,4,5,6,7,8,9]) == 1
	assert candidate([0,1,3,2]) == 2
	assert candidate([3,1,2,0]) == 2
	assert candidate([3,2,1,4,0,5]) == 3
	assert candidate([0]) == 1
	assert candidate([0,1,2]) == 1
def test_check():
	check(arrayNesting)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search
# Metadata Coverage: 100
