from typing import List


def findTargetSumWays(nums: List[int], target: int) -> int:
    """
    You are given an integer array nums and an integer target.
    You want to build an expression out of nums by adding one of the symbols '+' and '-' before each integer in nums and then concatenate all the integers.

    For example, if nums = [2, 1], you can add a '+' before 2 and a '-' before 1 and concatenate them to build the expression "+2-1".

    Return the number of different expressions that you can build, which evaluates to target.
 
    Example 1:

    Input: nums = [1,1,1,1,1], target = 3
    Output: 5
    Explanation: There are 5 ways to assign symbols to make the sum of nums be target 3.
    -1 + 1 + 1 + 1 + 1 = 3
    +1 - 1 + 1 + 1 + 1 = 3
    +1 + 1 - 1 + 1 + 1 = 3
    +1 + 1 + 1 - 1 + 1 = 3
    +1 + 1 + 1 + 1 - 1 = 3

    Example 2:

    Input: nums = [1], target = 1
    Output: 1

 
    Constraints:

    1 <= nums.length <= 20
    0 <= nums[i] <= 1000
    0 <= sum(nums[i]) <= 1000
    -1000 <= target <= 1000

    """
    ### Canonical solution below ###
    total_sum = sum(nums)
    if total_sum < target or (total_sum + target) % 2 != 0:
        return 0
    target_sum = (total_sum + target) // 2
    dp = [0] * (target_sum + 1)
    dp[0] = 1
    for num in nums:
        for j in range(target_sum, num - 1, -1):
            dp[j] += dp[j - num]
    return dp[target_sum]




### Unit tests below ###
def check(candidate):
	assert candidate(
    [4,2,1,3,6], 15) == 0
	assert candidate([1,1,1,1,1], 5) == 1
	assert candidate([0,0,0,0,0,0,0,0,0,0,1], 2) == 0
	assert candidate([1], 1) == 1
	assert candidate(
    [26,39,51,15,34,27,33,18,10,37,21,32,35,44,4,2,38,40,29,3,9,25], 63) == 0
	assert candidate(
    [2,7,9,11,13,15,17,20,23,24,25,28,31,36,37,39,42,45,47,48,50,51], 103) == 0
	assert candidate([1,2,3], 6) == 1
	assert candidate([5,5,5,5,5], 25) == 1
	assert candidate([1,1,1,1,1], 3) == 5
	assert candidate([0,0,0,0,0,0,0,0,0,0,2], 5) == 0
	assert candidate([1,1,2,3], 1) == 3
	assert candidate([0,0,0,0,0,0,0,0,0,0,2], 4) == 0
def test_check():
	check(findTargetSumWays)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking
# Metadata Coverage: 100
