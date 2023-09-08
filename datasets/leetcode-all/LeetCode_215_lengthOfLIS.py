from typing import List


def lengthOfLIS(nums: List[int]) -> int:
    """
    Given an integer array nums, return the length of the longest strictly increasing subsequence.
 
    Example 1:

    Input: nums = [10,9,2,5,3,7,101,18]
    Output: 4
    Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

    Example 2:

    Input: nums = [0,1,0,3,2,3]
    Output: 4

    Example 3:

    Input: nums = [7,7,7,7,7,7,7]
    Output: 1

 
    Constraints:

    1 <= nums.length <= 2500
    -104 <= nums[i] <= 104

 
    Follow up: Can you come up with an algorithm that runs in O(n log(n)) time complexity?
    """
    ### Canonical solution below ###
    dp = [1] * len(nums)
    max_length = 1
    for i in range(1, len(nums)):
        for j in range(i):
            if nums[i] > nums[j]:
                dp[i] = max(dp[i], dp[j] + 1)
        max_length = max(max_length, dp[i])
    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 1
	assert candidate([2] + [1]*50) == 1
	assert candidate([100,0,1,2,101]) == 4
	assert candidate([1,2,3,2,5,4,1,7,6]) == 5
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2]) == 2
	assert candidate([10,9,2,5,3,4,7,101,18,20,100]) == 7
	assert candidate([0,1,0,3,2,3]) == 4
	assert candidate([2,1,0,8,4,5,6,0,100,100,100,100]) == 5
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2]) == 2
	assert candidate([1,2,3,4,5,6]) == 6
	assert candidate([1,1]) == 1
	assert candidate([1,3,2,4,5,6,7]) == 6
	assert candidate([4,2,4,5,3,7]) == 4
	assert candidate(list(range(10))) == 10
	assert candidate([1,3,2,0]) == 2
	assert candidate([10,22,9,33,21,50,41,60,80]) == 6
	assert candidate([10,9,2,5,3,4,7,101,18,20]) == 6
	assert candidate([1]*50 + [2]) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 10
	assert candidate([1,3,2,4,5,6]) == 5
	assert candidate(range(2500)) == 2500
	assert candidate([1,2,3,4,3,2,1]) == 4
	assert candidate([1,3,2,4,5,6,7,8,9,10]) == 9
	assert candidate([7,7,7,7,7,7,7]) == 1
	assert candidate([10,9,2,5,3,4,7,101,18]) == 5
	assert candidate([-2,-1,0,1,2,3]) == 6
	assert candidate([2,2,2,2,2,2,2,2,2,2]) == 1
	assert candidate([1,3,2,4,5,6,7,8,9]) == 8
	assert candidate([1,3,2,7,6,10,9,11]) == 5
	assert candidate([2,1]) == 1
	assert candidate([5,3,4,2,1,0]) == 2
	assert candidate([1,3,2,4,5,4,3,2,1]) == 4
	assert candidate([10,9,2,5,3,7,101,18]) == 4
	assert candidate([1,2,3,4,5,4,3,2,1]) == 5
	assert candidate([-3,-2,-1,0,1,2,3]) == 7
	assert candidate([5,4,3,2,1,2,3,4,5]) == 5
	assert candidate([2,1,0,8,4,5,6]) == 4
	assert candidate([1,3,2,4,5,6,7,8]) == 7
	assert candidate([0,1,0,3,2,3,1]) == 4
	assert candidate([10]*2500) == 1
	assert candidate(range(10, -1, -1)) == 1
def test_check():
	check(lengthOfLIS)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,dynamic-programming
# Metadata Coverage: 100
