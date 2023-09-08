from typing import List


def get_concatenation(nums: List[int]) -> List[int]:
    """
    Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).
    Specifically, ans is the concatenation of two nums arrays.
    Return the array ans.
 
    Example 1:

    Input: nums = [1,2,1]
    Output: [1,2,1,1,2,1]
    Explanation: The array ans is formed as follows:
    - ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
    - ans = [1,2,1,1,2,1]
    Example 2:

    Input: nums = [1,3,2,1]
    Output: [1,3,2,1,1,3,2,1]
    Explanation: The array ans is formed as follows:
    - ans = [nums[0],nums[1],nums[2],nums[3],nums[0],nums[1],nums[2],nums[3]]
    - ans = [1,3,2,1,1,3,2,1]

 
    Constraints:

    n == nums.length
    1 <= n <= 1000
    1 <= nums[i] <= 1000

    """
    ### Canonical solution below ###
    n = len(nums)
    ans = [0] * (2 * n)
    for i in range(n):
        ans[i] = nums[i]
        ans[i + n] = nums[i]
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 2, 2, 2, 1]) == [2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1]
	assert candidate([1, 2]) == [1, 2, 1, 2]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	assert candidate([3, 2]) == [3, 2, 3, 2]
	assert candidate([4, 5, 4, 5, 4, 5, 4, 4, 5]) == [4, 5, 4, 5, 4, 5, 4, 4, 5, 4, 5, 4, 5, 4, 5, 4, 4, 5]
	assert candidate([1, 2, 1, 2, 1, 2]) == [1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2]
	assert candidate([5, 3, 1, 2, 5, 1, 2]) == [5, 3, 1, 2, 5, 1, 2, 5, 3, 1, 2, 5, 1, 2]
	assert candidate([1, 3, 2, 1]) == [1, 3, 2, 1, 1, 3, 2, 1]
	assert candidate([1, 1]) == [1, 1, 1, 1]
	assert candidate([2, 1, 2, 1, 1, 1, 2, 2, 2, 1]) == [2, 1, 2, 1, 1, 1, 2, 2, 2, 1, 2, 1, 2, 1, 1, 1, 2, 2, 2, 1]
	assert candidate([1, 3, 2, 2, 3, 2, 2, 2, 7]) == [1, 3, 2, 2, 3, 2, 2, 2, 7, 1, 3, 2, 2, 3, 2, 2, 2, 7]
	assert candidate([2, 2, 2, 2]) == [2, 2, 2, 2, 2, 2, 2, 2]
	assert candidate([1, 2, 3, 4]) == [1, 2, 3, 4, 1, 2, 3, 4]
	assert candidate([1, 1, 1, 1]) == [1, 1, 1, 1, 1, 1, 1, 1]
	assert candidate([2, 1]) == [2, 1, 2, 1]
	assert candidate([3, 2, 3]) == [3, 2, 3, 3, 2, 3]
	assert candidate([3, 1]) == [3, 1, 3, 1]
	assert candidate([1, 2, 1]) == [1, 2, 1, 1, 2, 1]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
	assert candidate([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
	assert candidate([3, 1, 3, 1]) == [3, 1, 3, 1, 3, 1, 3, 1]
	assert candidate([100, 200, 300, 400]) == [100, 200, 300, 400, 100, 200, 300, 400]
	assert candidate([1, 2, 3]) == [1, 2, 3, 1, 2, 3]
	assert candidate([1]) == [1, 1]
	assert candidate([]) == []
	assert candidate([1, 3, 2, 4]) == [1, 3, 2, 4, 1, 3, 2, 4]
	assert candidate([4, 3, 2, 1]) == [4, 3, 2, 1, 4, 3, 2, 1]
	assert candidate([1, 3, 1, 3, 1, 1]) == [1, 3, 1, 3, 1, 1, 1, 3, 1, 3, 1, 1]
	assert candidate([1, 2, 1, 1, 1, 3, 3, 2, 1]) == [1, 2, 1, 1, 1, 3, 3, 2, 1, 1, 2, 1, 1, 1, 3, 3, 2, 1]
def test_check():
	check(get_concatenation)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
