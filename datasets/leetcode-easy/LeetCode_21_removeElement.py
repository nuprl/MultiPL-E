from typing import List


def removeElement(nums: List[int], val: int) -> int:
    """
    Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
    Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:

    Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
    Return k.

    Custom Judge:
    The judge will test your solution with the following code:

    int[] nums = [...]; // Input array
    int val = ...; // Value to remove
    int[] expectedNums = [...]; // The expected answer with correct length.
                                // It is sorted with no values equaling val.

    int k = removeElement(nums, val); // Calls your implementation

    assert k == expectedNums.length;
    sort(nums, 0, k); // Sort the first k elements of nums
    for (int i = 0; i < actualLength; i++) {
        assert nums[i] == expectedNums[i];
    }

    If all assertions pass, then your solution will be accepted.
 
    Example 1:

    Input: nums = [3,2,2,3], val = 3
    Output: 2, nums = [2,2,_,_]
    Explanation: Your function should return k = 2, with the first two elements of nums being 2.
    It does not matter what you leave beyond the returned k (hence they are underscores).

    Example 2:

    Input: nums = [0,1,2,2,3,0,4,2], val = 2
    Output: 5, nums = [0,1,4,0,3,_,_,_]
    Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
    Note that the five elements can be returned in any order.
    It does not matter what you leave beyond the returned k (hence they are underscores).

 
    Constraints:

    0 <= nums.length <= 100
    0 <= nums[i] <= 50
    0 <= val <= 100

    """
    ### Canonical solution below ###
    i = 0
    for j in range(len(nums)):
        if nums[j] != val:
            nums[i] = nums[j]
            i += 1
    return i




### Unit tests below ###
def check(candidate):
	assert candidate([10,9,8,7,6,5,4,3,2,1], 10) == 9
	assert candidate([], 2) == 0
	assert candidate([1,2,3,4,5,6,7,8], 1) == 7
	assert candidate(list(range(50, 0, -1)), 50) == 49
	assert candidate([1,2,3,4,5,6,7,8,9,10], 1) == 9
	assert candidate(list(range(50, 100)), 51) == 49
	assert candidate([1]*50 + [2]*50, 3) == 100
	assert candidate([1,1,1,1,1], 1) == 0
	assert candidate(list(range(100, 0, -1)), 99) == 99
	assert candidate(list(range(1, 51)) + [0, 0], 1) == 51
	assert candidate([1,2,3,4,5,6,7,8], 8) == 7
	assert candidate(list(range(50)), 0) == 49
	assert candidate([1,2,3,4,5,6,7,8], 7) == 7
	assert candidate([1,1,1,2,2,2,3,3,3], 2) == 6
	assert candidate([1,2,3,4,5,6,7,8], 5) == 7
	assert candidate(list(range(50)), 50) == 50
	assert candidate(list(range(50, 100)), 75) == 49
	assert candidate(list(range(1, 51)), 51) == 50
	assert candidate(list(range(100, 50, -1)), 75) == 49
	assert candidate(list(range(50, 0, -1)), 1) == 49
	assert candidate([1], 1) == 0
	assert candidate([1,2,3,4,5,6,7,8], 6) == 7
	assert candidate([0,1,2,2,3,0,4,2], 2) == 5
	assert candidate([1,1,1,2,2,2,3,3,3], 3) == 6
	assert candidate(list(range(50, 100)), 100) == 50
	assert candidate(list(range(50, 100)), 50) == 49
	assert candidate(list(range(100)), 99) == 99
	assert candidate(list(range(50, 0, -1)), 25) == 49
	assert candidate(list(range(100, 0, -1)), 49) == 99
	assert candidate(list(range(1, 51)), 0) == 50
	assert candidate([1,2,3,4,5,6,7,8], 3) == 7
	assert candidate(list(range(1, 100)), 100) == 99
	assert candidate([1]*50 + [2]*50, 2) == 50
	assert candidate(list(range(100)), 0) == 99
	assert candidate(list(range(100, 0, -1)), 52) == 99
	assert candidate(list(range(50)), 25) == 49
	assert candidate([1,2,3,4,5,6,7,8], 4) == 7
	assert candidate(list(range(1, 51)) + [0], 51) == 51
	assert candidate([3,2,2,3], 3) == 2
	assert candidate(list(range(50)), 49) == 49
	assert candidate(list(range(1, 51)) + [0, 0], 50) == 51
	assert candidate(list(range(100, 0, -1)), 100) == 99
	assert candidate([0,1,2,2,3,0,4,2], 0) == 6
	assert candidate([1]*50 + [2]*50, 1) == 50
	assert candidate(list(range(50, 0, -1)), 49) == 49
	assert candidate([], 1) == 0
	assert candidate([1]*100, 1) == 0
	assert candidate([1,2,3,4,5], 6) == 5
	assert candidate(list(range(100, 0, -1)), 98) == 99
	assert candidate(list(range(100, 0, -1)), 50) == 99
	assert candidate(list(range(100, 0, -1)), 51) == 99
	assert candidate([1,1,1,2,2,2,3,3,3], 1) == 6
	assert candidate(list(range(100, 0, -1)), 1) == 99
def test_check():
	check(removeElement)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers
# Metadata Coverage: 100
