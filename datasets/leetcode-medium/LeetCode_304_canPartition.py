from typing import List


def canPartition(nums: List[int]) -> bool:
    """
    Given an integer array nums, return true if you can partition the array into two subsets such that the sum of the elements in both subsets is equal or false otherwise.
 
    Example 1:

    Input: nums = [1,5,11,5]
    Output: true
    Explanation: The array can be partitioned as [1, 5, 5] and [11].

    Example 2:

    Input: nums = [1,2,3,5]
    Output: false
    Explanation: The array cannot be partitioned into equal sum subsets.

 
    Constraints:

    1 <= nums.length <= 200
    1 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    total_sum = sum(nums)
    if total_sum % 2 != 0:
        return False

    target = total_sum // 2
    dp = [False] * (target + 1)
    dp[0] = True

    for num in nums:
        for i in range(target, num - 1, -1):
            dp[i] = dp[i] or dp[i - num]

    return dp[target]




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10]) == True
	assert candidate([90, 10, 20, 80]) == True
	assert candidate([1, 1, 5, 5, 10, 10]) == True
	assert candidate(
    [40, 14, 31, 33, 8, 12, 40, 16, 23, 6, 26, 17, 33, 28, 13, 10, 40, 14, 31, 33, 8, 12, 40, 16, 23, 6, 26, 17,
     33, 28, 13, 10]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == False
	assert candidate([1, 5, 11, 5]) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11]) == False
	assert candidate([1, 2, 3, 6]) == True
	assert candidate(
    [530, 290, 610, 27, 220, 730, 650, 600, 320, 50, 140, 240, 600]) == False
	assert candidate([50, 50, 50, 50]) == True
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == True
	assert candidate(
    [130, 290, 820, 270, 150, 730, 650, 600, 320, 50, 140, 240, 600]) == False
	assert candidate([1, 2, 4, 8, 16, 32]) == False
	assert candidate([100, 50, 50, 2]) == False
	assert candidate([1, 3, 5, 7, 9]) == False
	assert candidate([30, 70, 60, 40]) == True
	assert candidate([1, 2, 3, 5]) == False
	assert candidate(
    [1, 2, 5, 10, 20, 40, 80, 160, 320, 640, 1280, 2560, 5120, 10240, 20480, 40960, 81920, 163840, 327680, 655360]) == False
	assert candidate(
    [40, 20, 80, 30, 60, 50, 10, 70, 30, 20, 10, 50, 40, 50, 50, 10, 10, 40, 10, 20, 20, 10, 50, 50, 20, 40, 40, 30,
     70, 10, 10]) == False
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 10, 10, 10]) == False
def test_check():
	check(canPartition)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
