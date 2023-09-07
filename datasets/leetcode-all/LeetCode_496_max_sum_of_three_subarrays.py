from typing import List


def max_sum_of_three_subarrays(nums: List[int], k: int) -> List[int]:
    """
    Given an integer array nums and an integer k, find three non-overlapping subarrays of length k with maximum sum and return them.
    Return the result as a list of indices representing the starting position of each interval (0-indexed). If there are multiple answers, return the lexicographically smallest one.
 
    Example 1:

    Input: nums = [1,2,1,2,6,7,5,1], k = 2
    Output: [0,3,5]
    Explanation: Subarrays [1, 2], [2, 6], [7, 5] correspond to the starting indices [0, 3, 5].
    We could have also taken [2, 1], but an answer of [1, 3, 5] would be lexicographically larger.

    Example 2:

    Input: nums = [1,2,1,2,1,2,1,2,1], k = 2
    Output: [0,2,4]

 
    Constraints:

    1 <= nums.length <= 2 * 104
    1 <= nums[i] < 216
    1 <= k <= floor(nums.length / 3)

    """
    ### Canonical solution below ###
    n = len(nums)
    sums = [0] * (n - k + 1)
    left, right = [0] * n, [0] * n

    acc_sum = 0
    for i in range(n):
        acc_sum += nums[i]
        if i >= k:
            acc_sum -= nums[i - k]
        if i >= k - 1:
            sums[i - k + 1] = acc_sum

    left[0] = 0
    right[n - k] = n - k
    for i in range(1, n - k + 1):
        left[i] = i if sums[i] > sums[left[i - 1]] else left[i - 1]

    for i in range(n - k - 1, -1, -1):
        right[i] = i if sums[i] >= sums[right[i + 1]] else right[i + 1]

    max_sum, ans = 0, [0] * 3
    for i in range(k, n - 2 * k + 1):
        left_idx, right_idx = left[i - k], right[i + k]
        total_sum = sums[left_idx] + sums[i] + sums[right_idx]
        if total_sum > max_sum:
            max_sum = total_sum
            ans = [left_idx, i, right_idx]

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,1,2,1,2,1,2,1], 2) == [0,2,4]
	assert candidate([9,8,7,6,5,4,3,2,1], 2) == [0,2,4]
	assert candidate([1,1,1,1,1,1,1,1,1], 2) == [0,2,4]
	assert candidate([1,2,1,2,1,2,1,2,1,2,1,2,1], 2) == [0,2,4]
	assert candidate([1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1], 2) == [0,2,4]
	assert candidate([1,2,1,2,6,7,5,1], 2) == [0,3,5]
def test_check():
	check(max_sum_of_three_subarrays)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
