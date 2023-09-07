from typing import List


def mostCompetitive(nums: List[int], k: int) -> List[int]:
    """
    Given an integer array nums and a positive integer k, return the most competitive subsequence of nums of size k.
    An array's subsequence is a resulting sequence obtained by erasing some (possibly zero) elements from the array.
    We define that a subsequence a is more competitive than a subsequence b (of the same length) if in the first position where a and b differ, subsequence a has a number less than the corresponding number in b. For example, [1,3,4] is more competitive than [1,3,5] because the first position they differ is at the final number, and 4 is less than 5.
 
    Example 1:

    Input: nums = [3,5,2,6], k = 2
    Output: [2,6]
    Explanation: Among the set of every possible subsequence: {[3,5], [3,2], [3,6], [5,2], [5,6], [2,6]}, [2,6] is the most competitive.

    Example 2:

    Input: nums = [2,4,3,3,5,4,9,6], k = 4
    Output: [2,3,3,4]

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] <= 109
    1 <= k <= nums.length

    """
    ### Canonical solution below ###
    from collections import deque
    stack = deque()
    n = len(nums)
    for i in range(n):
        while stack and stack[-1] > nums[i] and len(stack) + n - i > k:
            stack.pop()
        if len(stack) < k:
            stack.append(nums[i])
    return list(stack)




### Unit tests below ###
def check(candidate):
	assert candidate([3,3,3,3], 3) == [3,3,3]
	assert candidate([3,5,2,6], 2) == [2,6]
	assert candidate([3, 1, 3, 4, 6, 5, 7, 9, 8], 5) == [1, 3, 4, 5, 7]
	assert candidate([2,4,3,3,5,4,9,6], 4) == [2,3,3,4]
	assert candidate([1, 3, 5, 7, 9, 2, 4, 6, 8, 10], 5) == [1, 2, 4, 6, 8]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == [1, 2, 3, 4, 5]
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3], 5) == [1, 1, 1, 2, 2]
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 5) == [1, 1, 1, 1, 1]
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 5) == [10, 10, 10, 10, 10]
	assert candidate(
    [2, 4, 3, 3, 5, 4, 9, 6, 2], 1
) == [2]
def test_check():
	check(mostCompetitive)
# Metadata Difficulty: Medium
# Metadata Topics: array,stack,greedy,monotonic-stack
# Metadata Coverage: 100
