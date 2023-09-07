from typing import List


def findPeakElement(nums: List[int]) -> int:
    """
    A peak element is an element that is strictly greater than its neighbors.
    Given a 0-indexed integer array nums, find a peak element, and return its index. If the array contains multiple peaks, return the index to any of the peaks.
    You may imagine that nums[-1] = nums[n] = -∞. In other words, an element is always considered to be strictly greater than a neighbor that is outside the array.
    You must write an algorithm that runs in O(log n) time.
 
    Example 1:

    Input: nums = [1,2,3,1]
    Output: 2
    Explanation: 3 is a peak element and your function should return the index number 2.
    Example 2:

    Input: nums = [1,2,1,3,5,6,4]
    Output: 5
    Explanation: Your function can return either index number 1 where the peak element is 2, or index number 5 where the peak element is 6.
 
    Constraints:

    1 <= nums.length <= 1000
    -231 <= nums[i] <= 231 - 1
    nums[i] != nums[i + 1] for all valid i.

    """
    ### Canonical solution below ###
    left, right = 0, len(nums) - 1
    while left < right:
        mid = left + (right - left) // 2
        if nums[mid] < nums[mid + 1]:
            left = mid + 1
        else:
            right = mid
    return left




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 3, 2, 1]) == 3
	assert candidate(
    [3, 2, 1]) == 0, "This was a tricky one"
	assert candidate([1, 3, 2, 1, 3, 2, 1]) == 4
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
	assert candidate([1, 3, 2, 2, 1]) == 1
	assert candidate([1, 2, 3, 1, 2, 1]) == 2
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 9
	assert candidate(
    [1, 6, 5, 4, 3, 2, 1]) == 1
	assert candidate([1, 6, 5, 4, 3, 2, 1]) == 1
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 0
	assert candidate([2, 1]) == 0
	assert candidate([1, 2, 1]) == 1
	assert candidate(range(10000)) == 9999
	assert candidate([1, 3, 1]) == 1
	assert candidate([1]) == 0
	assert candidate([1, 2]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 1]) == 5
	assert candidate([3, 2, 1]) == 0
	assert candidate([1, 2, 3, 3, 2, 1]) == 2
	assert candidate([1, 2, 3, 1]) == 2
	assert candidate([1, 3, 2, 1]) == 1
	assert candidate([1, 2, 3]) == 2
	assert candidate([1, 2, 1, 3, 5, 6, 4]) == 5
	assert candidate([1, 2, 3, 2, 1]) == 2
def test_check():
	check(findPeakElement)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
