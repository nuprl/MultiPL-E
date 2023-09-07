from typing import List


def build_array(nums: List[int]) -> List[int]:
    """
    Given a zero-based permutation nums (0-indexed), build an array ans of the same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length and return it.
    A zero-based permutation nums is an array of distinct integers from 0 to nums.length - 1 (inclusive).
 
    Example 1:

    Input: nums = [0,2,1,5,3,4]
    Output: [0,1,2,4,5,3]
    Explanation: The array ans is built as follows: 
    ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]], nums[nums[3]], nums[nums[4]], nums[nums[5]]]
        = [nums[0], nums[2], nums[1], nums[5], nums[3], nums[4]]
        = [0,1,2,4,5,3]
    Example 2:

    Input: nums = [5,0,1,2,3,4]
    Output: [4,5,0,1,2,3]
    Explanation: The array ans is built as follows:
    ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]], nums[nums[3]], nums[nums[4]], nums[nums[5]]]
        = [nums[5], nums[0], nums[1], nums[2], nums[3], nums[4]]
        = [4,5,0,1,2,3]
 
    Constraints:

    1 <= nums.length <= 1000
    0 <= nums[i] < nums.length
    The elements in nums are distinct.

 
    Follow-up: Can you solve it without using an extra space (i.e., O(1) memory)?
    """
    ### Canonical solution below ###
    ans = []
    for i in range(len(nums)):
        ans.append(nums[nums[i]])
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(
    [5, 0, 1, 2, 3, 4]) == [4, 5, 0, 1, 2, 3]
	assert candidate([5, 5, 5, 5, 5, 5]) == [5, 5, 5, 5, 5, 5]
	assert candidate(
    [4, 0, 1, 2, 3]) == [3, 4, 0, 1, 2]
	assert candidate([0, 1, 2, 3, 4, 5]) == [0, 1, 2, 3, 4, 5]
	assert candidate([1, 1, 1, 1, 1, 1]) == [1, 1, 1, 1, 1, 1]
	assert candidate([2, 2, 2, 2, 2, 2]) == [2, 2, 2, 2, 2, 2]
	assert candidate([5, 4, 3, 2, 1, 0]) == [0, 1, 2, 3, 4, 5]
	assert candidate([0, 0, 0, 0, 0, 0]) == [0, 0, 0, 0, 0, 0]
	assert candidate([3, 3, 3, 3, 3, 3]) == [3, 3, 3, 3, 3, 3]
	assert candidate([1, 0, 3, 4, 5, 2]) == [0, 1, 4, 5, 2, 3]
def test_check():
	check(build_array)
# Metadata Difficulty: Easy
# Metadata Topics: array,simulation
# Metadata Coverage: 100
