from typing import List


def waysToSplit(nums: List[int]) -> int:
    """
    A split of an integer array is good if:

    The array is split into three non-empty contiguous subarrays - named left, mid, right respectively from left to right.
    The sum of the elements in left is less than or equal to the sum of the elements in mid, and the sum of the elements in mid is less than or equal to the sum of the elements in right.

    Given nums, an array of non-negative integers, return the number of good ways to split nums. As the number may be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: nums = [1,1,1]
    Output: 1
    Explanation: The only good way to split nums is [1] [1] [1].
    Example 2:

    Input: nums = [1,2,2,2,5,0]
    Output: 3
    Explanation: There are three good ways of splitting nums:
    [1] [2] [2,2,5,0]
    [1] [2,2] [2,5,0]
    [1,2] [2,2] [5,0]

    Example 3:

    Input: nums = [3,2,1]
    Output: 0
    Explanation: There is no good way to split nums.
 
    Constraints:

    3 <= nums.length <= 105
    0 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    MOD = 10**9 + 7
    n = len(nums)
    prefixSum = [0] * (n + 1)
    for i in range(n):
        prefixSum[i + 1] = prefixSum[i] + nums[i]

    ans = 0
    left, right = 0, 0
    for mid in range(1, n - 1):
        while left + 1 < mid and prefixSum[left + 1] * 2 <= prefixSum[mid]:
            left += 1
        while right < mid or (right + 1 < n and prefixSum[right + 1] - prefixSum[mid] <= prefixSum[n] - prefixSum[right + 1]):
            right += 1
        if right >= mid and prefixSum[mid] - prefixSum[left] <= prefixSum[right] - prefixSum[mid]:
            ans = (ans + right - mid + 1) % MOD

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([3,2,1]) == 0
	assert candidate( [1,1,1,1] ) == 4
	assert candidate([1,1,1,1]) == 4
	assert candidate( [1,1,5,1,1,1] ) == 2
	assert candidate(list(range(1, 5))) == 4
def test_check():
	check(waysToSplit)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,prefix-sum
# Metadata Coverage: 100
