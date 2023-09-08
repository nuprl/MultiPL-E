from typing import List


def maxCoins(nums: List[int]) -> int:
    """
    You are given n balloons, indexed from 0 to n - 1. Each balloon is painted with a number on it represented by an array nums. You are asked to burst all the balloons.
    If you burst the ith balloon, you will get nums[i - 1] * nums[i] * nums[i + 1] coins. If i - 1 or i + 1 goes out of bounds of the array, then treat it as if there is a balloon with a 1 painted on it.
    Return the maximum coins you can collect by bursting the balloons wisely.
 
    Example 1:

    Input: nums = [3,1,5,8]
    Output: 167
    Explanation:
    nums = [3,1,5,8] --> [3,5,8] --> [3,8] --> [8] --> []
    coins =  3*1*5    +   3*5*8   +  1*3*8  + 1*8*1 = 167
    Example 2:

    Input: nums = [1,5]
    Output: 10

 
    Constraints:

    n == nums.length
    1 <= n <= 300
    0 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    nums = [1] + nums + [1]
    n = len(nums)
    dp = [[0] * n for _ in range(n)]

    for length in range(1, n - 1):
        for left in range(1, n - length):
            right = left + length - 1
            for i in range(left, right + 1):
                dp[left][right] = max(dp[left][right], nums[left - 1] * nums[i] * nums[right + 1] + dp[left][i - 1] + dp[i + 1][right])

    return dp[1][n - 2]




### Unit tests below ###
def check(candidate):
	assert candidate([0]*300) == 0
	assert candidate([3,1,5,8]) == 167
	assert candidate([1,2,3,4,5]) == 110
	assert candidate([5,4,3,2,1]) == 110
	assert candidate([2]) == 2
	assert candidate([1,5]) == 10
	assert candidate([1]*300) == 300
def test_check():
	check(maxCoins)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
