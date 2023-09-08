from typing import List


def maxValueAfterReverse(nums: List[int]) -> int:
    """
    You are given an integer array nums. The value of this array is defined as the sum of |nums[i] - nums[i + 1]| for all 0 <= i < nums.length - 1.
    You are allowed to select any subarray of the given array and reverse it. You can perform this operation only once.
    Find maximum possible value of the final array.
 
    Example 1:

    Input: nums = [2,3,1,5,4]
    Output: 10
    Explanation: By reversing the subarray [3,1,5] the array becomes [2,5,1,3,4] whose value is 10.

    Example 2:

    Input: nums = [2,4,9,24,2,1,10]
    Output: 68

 
    Constraints:

    1 <= nums.length <= 3 * 104
    -105 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    total, diff = 0, 0
    min2, max2 = float('inf'), float('-inf')
    for i in range(len(nums) - 1):
        total += abs(nums[i] - nums[i + 1])
        min2 = min(min2, max(nums[i], nums[i + 1]))
        max2 = max(max2, min(nums[i], nums[i + 1]))
        diff = max(diff, abs(nums[i + 1] - nums[0]) - abs(nums[i + 1] - nums[i]))
        diff = max(diff, abs(nums[i] - nums[-1]) - abs(nums[i] - nums[i + 1]))
    return total + max(diff, 2 * (max2 - min2))




### Unit tests below ###
def check(candidate):
	assert candidate(
    [2, 4, 9, 24, 2, 1, 10]) == 68, 'This one took me a while to figure out'
	assert candidate([5, 5, 5, 5, 5]) == 0
	assert candidate([2, 4, 9, 24, 2, 1, 10]) == 68
	assert candidate([10, 20, 30, 40, 50]) == 80
	assert candidate([1, 1, 1, 1, 1]) == 0
	assert candidate([2, 3, 1, 5, 4]) == 10
def test_check():
	check(maxValueAfterReverse)
# Metadata Difficulty: Hard
# Metadata Topics: array,math,greedy
# Metadata Coverage: 100
