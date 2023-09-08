from typing import List


def longestSubarray(nums: List[int], limit: int) -> int:
    """
    Given an array of integers nums and an integer limit, return the size of the longest non-empty subarray such that the absolute difference between any two elements of this subarray is less than or equal to limit.
 
    Example 1:

    Input: nums = [8,2,4,7], limit = 4
    Output: 2 
    Explanation: All subarrays are: 
    [8] with maximum absolute diff |8-8| = 0 <= 4.
    [8,2] with maximum absolute diff |8-2| = 6 > 4. 
    [8,2,4] with maximum absolute diff |8-2| = 6 > 4.
    [8,2,4,7] with maximum absolute diff |8-2| = 6 > 4.
    [2] with maximum absolute diff |2-2| = 0 <= 4.
    [2,4] with maximum absolute diff |2-4| = 2 <= 4.
    [2,4,7] with maximum absolute diff |2-7| = 5 > 4.
    [4] with maximum absolute diff |4-4| = 0 <= 4.
    [4,7] with maximum absolute diff |4-7| = 3 <= 4.
    [7] with maximum absolute diff |7-7| = 0 <= 4. 
    Therefore, the size of the longest subarray is 2.

    Example 2:

    Input: nums = [10,1,2,4,7,2], limit = 5
    Output: 4 
    Explanation: The subarray [2,4,7,2] is the longest since the maximum absolute diff is |2-7| = 5 <= 5.

    Example 3:

    Input: nums = [4,2,2,2,4,4,2,2], limit = 0
    Output: 3

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    0 <= limit <= 109

    """
    ### Canonical solution below ###
    from collections import deque
    max_deque = deque()
    min_deque = deque()
    left, right, longest = 0, 0, 0

    while right < len(nums):
        while max_deque and nums[right] > max_deque[-1]:
            max_deque.pop()
        while min_deque and nums[right] < min_deque[-1]:
            min_deque.pop()

        max_deque.append(nums[right])
        min_deque.append(nums[right])

        while max_deque[0] - min_deque[0] > limit:
            if max_deque[0] == nums[left]:
                max_deque.popleft()
            if min_deque[0] == nums[left]:
                min_deque.popleft()
            left += 1

        longest = max(longest, right - left + 1)
        right += 1

    return longest




### Unit tests below ###
def check(candidate):
	assert candidate([8,2,4,7], 4) == 2
	assert candidate([10,1,2,4,7,2], 5) == 4
	assert candidate([4,2,2,2,4,4,2,2], 0) == 3
	assert candidate([10,9,8,7,6,5,4,3,2,1], 0) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], 4) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == 6
	assert candidate([1,1,1,1,1], 0) == 5
	assert candidate([1,2,3,4,5], 1) == 2
	assert candidate([10,20,30,40,50], 10) == 2
	assert candidate([10,5,-1,0,0], 6) == 4
	assert candidate([2,4,6,8,10,12,14,16,18,20], 8) == 5
	assert candidate([2,1,4,3,6,5,8,7,10,9], 4) == 4
	assert candidate([1,1,1,1,1,1,1,1,1,1], 1) == 10
	assert candidate([1,2,3,4,5,6,7,8,9,10], 0) == 1
	assert candidate([5,5,5,5,5], 0) == 5
	assert candidate([2,1], 1) == 2
	assert candidate([5,4,3,2,1], 1) == 2
def test_check():
	check(longestSubarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,queue,sliding-window,heap-priority-queue,ordered-set,monotonic-queue
# Metadata Coverage: 100
