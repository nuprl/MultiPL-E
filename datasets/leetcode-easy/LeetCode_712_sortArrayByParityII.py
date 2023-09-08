from typing import List


def sortArrayByParityII(nums: List[int]) -> List[int]:
    """
    Given an array of integers nums, half of the integers in nums are odd, and the other half are even.
    Sort the array so that whenever nums[i] is odd, i is odd, and whenever nums[i] is even, i is even.
    Return any answer array that satisfies this condition.
 
    Example 1:

    Input: nums = [4,2,5,7]
    Output: [4,5,2,7]
    Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.

    Example 2:

    Input: nums = [2,3]
    Output: [2,3]

 
    Constraints:

    2 <= nums.length <= 2 * 104
    nums.length is even.
    Half of the integers in nums are even.
    0 <= nums[i] <= 1000

 
    Follow Up: Could you solve it in-place?
    """
    ### Canonical solution below ###
    j = 1
    for i in range(0, len(nums), 2):
        if nums[i] % 2:
            while nums[j] % 2:
                j += 2
            nums[i], nums[j] = nums[j], nums[i]
    return nums




### Unit tests below ###
def check(candidate):
	assert candidate([2, 1, 4, 3, 6, 5, 8, 7]) == [2, 1, 4, 3, 6, 5, 8, 7]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8]) == [2, 1, 4, 3, 6, 5, 8, 7]
	assert candidate([2, 4, 6, 8]) == [2, 4, 6, 8]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [2, 1, 4, 3, 6, 5, 8, 7, 10, 9]
	assert candidate([2, 4, 7, 9]) == [2, 7, 4, 9]
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
	assert candidate([4, 2, 5, 7]) == [4, 5, 2, 7]
def test_check():
	check(sortArrayByParityII)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,sorting
# Metadata Coverage: 100
