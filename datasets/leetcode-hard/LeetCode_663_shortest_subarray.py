from typing import List


def shortest_subarray(nums: List[int], k: int) -> int:
    """
    Given an integer array nums and an integer k, return the length of the shortest non-empty subarray of nums with a sum of at least k. If there is no such subarray, return -1.
    A subarray is a contiguous part of an array.
 
    Example 1:
    Input: nums = [1], k = 1
    Output: 1
    Example 2:
    Input: nums = [1,2], k = 4
    Output: -1
    Example 3:
    Input: nums = [2,-1,2], k = 3
    Output: 3

 
    Constraints:

    1 <= nums.length <= 105
    -105 <= nums[i] <= 105
    1 <= k <= 109

    """
    ### Canonical solution below ###
    from collections import deque
    n = len(nums)
    prefix_sum = [0] * (n + 1)
    for i in range(n):
        prefix_sum[i + 1] = prefix_sum[i] + nums[i]

    res = n + 1
    dq = deque()
    for i in range(n + 1):
        while dq and prefix_sum[i] - prefix_sum[dq[0]] >= k:
            res = min(res, i - dq.popleft())
        while dq and prefix_sum[i] <= prefix_sum[dq[-1]]:
            dq.pop()
        dq.append(i)

    return res if res <= n else -1




### Unit tests below ###
def check(candidate):
	assert candidate([1], 5) == -1
	assert candidate([1, 2, 3, 4, 5], 50) == -1
	assert candidate([1, 2, 3, 4], 32) == -1
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1], 15) == 2
	assert candidate([1, 2, 3, 4], 29) == -1
	assert candidate([2, -1, 2], 3) == 3
	assert candidate([1, 2, 3, 4, 5], 11) == 3
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 10) == 10
	assert candidate([2, 4, 6, 8, 10, 12, 14, 16, 18, 20], 36) == 2
	assert candidate([1, 2, 3, 4, 5], 5) == 1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 50) == 50
	assert candidate([3, 6, 9, 12, 15, 18, 21, 24, 27, 30], 60) == 3
	assert candidate([1, 2, 3, 4], 31) == -1
	assert candidate([1, 2, 3, 4], 33) == -1
	assert candidate([1, 2, 3, 4, 5], 15) == 5
	assert candidate([1, 2, 3, 4], 30) == -1
	assert candidate([1, 1000000000], 1000000000) == 1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 50) == 50
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 41) == 3
	assert candidate([2, 3, 1, 2, 4, 3], 7) == 2
def test_check():
	check(shortest_subarray)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,queue,sliding-window,heap-priority-queue,prefix-sum,monotonic-queue
# Metadata Coverage: 100
