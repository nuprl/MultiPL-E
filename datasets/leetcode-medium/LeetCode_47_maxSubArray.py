from typing import List


def maxSubArray(nums: List[int]) -> int:
    """
    Given an integer array nums, find the subarray with the largest sum, and return its sum.
 
    Example 1:

    Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
    Output: 6
    Explanation: The subarray [4,-1,2,1] has the largest sum 6.

    Example 2:

    Input: nums = [1]
    Output: 1
    Explanation: The subarray [1] has the largest sum 1.

    Example 3:

    Input: nums = [5,4,-1,7,8]
    Output: 23
    Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

 
    Constraints:

    1 <= nums.length <= 105
    -104 <= nums[i] <= 104

 
    Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
    """
    ### Canonical solution below ###
    max_sum = current_sum = nums[0]

    for num in nums[1:]:
        current_sum = max(current_sum + num, num)
        max_sum = max(max_sum, current_sum)

    return max_sum




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5]) == 15
	assert candidate([1]) == 1
	assert candidate([31,-41,59,26,-53,58,97,-93,-23,84]) == 187
	assert candidate([-1, -1, -1, -1, -1]) == -1
	assert candidate([-2, -3, 4, -1, -2, -1, -5, -3]) == 4
	assert candidate([0, -1, -2, -3, -4]) == 0
	assert candidate(list(range(1000)) + [-1001]) == 499500
	assert candidate(list(range(1000)) + [-1, 0, 0, 0, 1]) == 499500
	assert candidate([-2,-3,4,-1,2,1,-5,4]) == 6
	assert candidate([-1, -2, -3, -4, -5]) == -1
	assert candidate(
    [-2147483647, -1, -2147483647, 2147483647, -2147483647, -2147483647]) == 2147483647
	assert candidate([-1, -1, -1, -1, 5]) == 5
	assert candidate([3, -2, 5, -1]) == 6
	assert candidate([1, -1, 1, -1, 1, -1, 1, -1]) == 1
	assert candidate(list(range(1000))) == 499500
	assert candidate([-2,1,-3,4,-1,2,1,-5,4]) == 6
	assert candidate([-2, 1, -3, 5, -2, 3]) == 6
	assert candidate([-1, -1, -1, -1, 0]) == 0
	assert candidate([3,-2,5,-1]) == 6
	assert candidate([0, 0, 0, 0, 0]) == 0
	assert candidate([4, -2, -8, 5, -2, 7, 7, 2, -6, 5]) == 19
	assert candidate([5,4,-1,7,8]) == 23
	assert candidate([-2,3,-2]) == 3
	assert candidate(
    [-2, -3, 4, -1, -2, -1, -5, -3]) == 4
	assert candidate([-1, 0, 1, -1, 0]) == 1
def test_check():
	check(maxSubArray)
# Metadata Difficulty: Medium
# Metadata Topics: array,divide-and-conquer,dynamic-programming
# Metadata Coverage: 100
