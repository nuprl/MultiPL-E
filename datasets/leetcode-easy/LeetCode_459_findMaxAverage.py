from typing import List


def findMaxAverage(nums: List[int], k: int) -> float:
    """
    You are given an integer array nums consisting of n elements, and an integer k.
    Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.
 
    Example 1:

    Input: nums = [1,12,-5,-6,50,3], k = 4
    Output: 12.75000
    Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75

    Example 2:

    Input: nums = [5], k = 1
    Output: 5.00000

 
    Constraints:

    n == nums.length
    1 <= k <= n <= 105
    -104 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    total = sum(nums[:k])
    max_avg = total / k
    for i in range(k, len(nums)):
        total += nums[i] - nums[i - k]
        max_avg = max(max_avg, total / k)
    return max_avg




### Unit tests below ###
def check(candidate):
	assert candidate([-5, -4, -3, -2, -1], 5) == -3.0
	assert candidate([-5, 3, 5, 9, 12, 15, 18, 20], 1) == 20.0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == 8.0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 10) == 5.5
	assert candidate([1, 12, -5, -6, 50, 3], 4) == 12.75
	assert candidate([0,0,0,0,0,0,0,0,0,0], 10) == 0.0
	assert candidate([0,0,0,0,0,0,0,0,0,0], 1) == 0.0
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    5) == 8.0
	assert candidate(
    [1, 12, -5, -6, 50, 3], 4
) == 12.75
	assert candidate([-5,-4,-3,-2,-1], 5) == -3.0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 3) == 9.0
	assert candidate(
    [10, 20, 30, 40, 50, 60, 70, 80, 90, 100],
    10) == 55.0
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2) == 9.5
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    10) == 5.5
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 10.0
	assert candidate([-5,3,5,9,12,15,18,20], 1) == 20.0
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 10) == 0.0
	assert candidate([10,20,30,40,50,60,70,80,90,100], 10) == 55.0
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100], 10) == 55.0
	assert candidate([10,20,30,40,50,60,70,80,90,100], 1) == 100.0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 2) == 9.5
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90, 100], 1) == 100.0
	assert candidate([5], 1) == 5.0
def test_check():
	check(findMaxAverage)
# Metadata Difficulty: Easy
# Metadata Topics: array,sliding-window
# Metadata Coverage: 100
