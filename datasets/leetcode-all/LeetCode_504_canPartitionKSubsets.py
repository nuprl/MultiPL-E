from typing import List


def canPartitionKSubsets(nums: List[int], k: int) -> bool:
    """
    Given an integer array nums and an integer k, return true if it is possible to divide this array into k non-empty subsets whose sums are all equal.
 
    Example 1:

    Input: nums = [4,3,2,3,5,2,1], k = 4
    Output: true
    Explanation: It is possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.

    Example 2:

    Input: nums = [1,2,3,4], k = 3
    Output: false

 
    Constraints:

    1 <= k <= nums.length <= 16
    1 <= nums[i] <= 104
    The frequency of each element is in the range [1, 4].

    """
    ### Canonical solution below ###
    def dfs(nums, visited, start, target, curr_sum, k):
        if k == 1:
            return True
        if curr_sum == target:
            return dfs(nums, visited, 0, target, 0, k - 1)
        for i in range(start, len(nums)):
            if not visited[i] and curr_sum + nums[i] <= target:
                visited[i] = True
                if dfs(nums, visited, i + 1, target, curr_sum + nums[i], k):
                    return True
                visited[i] = False
        return False
    total_sum = sum(nums)
    if total_sum % k != 0:
        return False
    target = total_sum // k
    visited = [False] * len(nums)
    return dfs(nums, visited, 0, target, 0, k)




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 5) == False
	assert candidate(
    [4, 3, 2, 3, 5, 2, 1], 4) == True
	assert candidate([1,2,3,4], 3) == False
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 11) == False
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 2) == True
	assert candidate([1,1,1,1], 4) == True
	assert candidate(
    [9,8,7,6,5,4,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
    14
) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1], 5) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 10) == True
	assert candidate([1,2,3,4], 2) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10], 3) == False
	assert candidate([2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], 8) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 4) == True
	assert candidate([4,3,2,3,5,2,1], 4) == True
def test_check():
	check(canPartitionKSubsets)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking,bit-manipulation,memoization,bitmask
# Metadata Coverage: 100
