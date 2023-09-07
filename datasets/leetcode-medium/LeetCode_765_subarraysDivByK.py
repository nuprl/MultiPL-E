from typing import List


def subarraysDivByK(nums: List[int], k: int) -> int:
    """
    Given an integer array nums and an integer k, return the number of non-empty subarrays that have a sum divisible by k.
    A subarray is a contiguous part of an array.
 
    Example 1:

    Input: nums = [4,5,0,-2,-3,1], k = 5
    Output: 7
    Explanation: There are 7 subarrays with a sum divisible by k = 5:
    [4, 5, 0, -2, -3, 1], [5], [5, 0], [5, 0, -2, -3], [0], [0, -2, -3], [-2, -3]

    Example 2:

    Input: nums = [5], k = 9
    Output: 0

 
    Constraints:

    1 <= nums.length <= 3 * 104
    -104 <= nums[i] <= 104
    2 <= k <= 104

    """
    ### Canonical solution below ###
    counts = {0: 1}
    sum_, result = 0, 0

    for num in nums:
        sum_ += num
        mod = (sum_ % k + k) % k
        result += counts.get(mod, 0)
        counts[mod] = counts.get(mod, 0) + 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([-1,-2,-3,-4,-5], 1) == 15
	assert candidate([2, 3, 4, 5, 6, 7], 4) == 3
	assert candidate([1,2,3,4,5], 2) == 6
	assert candidate([4,5,0,-2,-3,1], 5) == 7
	assert candidate([2, 3, 4, 5, 6, 7], 1) == 21
	assert candidate([2, 3, 4, 5, 6, 7], 8) == 0
	assert candidate([], 100) == 0
	assert candidate([1,2,3,4,5], 6) == 2
	assert candidate([1,2,3,4,5], 10) == 1
	assert candidate([0], 100) == 1
	assert candidate([1, 2, 3, 4, 5, 6], 4) == 3
	assert candidate([-1, 1], 2) == 1
	assert candidate([0, 0], 2) == 3
	assert candidate([-1,-2,-3,-4,-5], 6) == 2
	assert candidate([1,2,3,4,5], 1) == 15
	assert candidate(
    [1000000000,1000000000,1000000000], 3) == 1, "This was a tough one"
	assert candidate(range(1, 100), 1) == 4950
	assert candidate([], 1) == 0
	assert candidate([1000000000,1000000000,1000000000], 3) == 1
	assert candidate([], 10) == 0
	assert candidate([-1,-2,-3,-4,-5], 2) == 6
	assert candidate([], 2) == 0
	assert candidate([-2, 3, 4], 2) == 2
	assert candidate([-2, -3, -4], 2) == 2
	assert candidate([1,2,3,4,5], 15) == 1
def test_check():
	check(subarraysDivByK)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
