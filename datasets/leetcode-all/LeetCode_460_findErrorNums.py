from typing import List


def findErrorNums(nums: List[int]) -> List[int]:
    """
    You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.
    You are given an integer array nums representing the data status of this set after the error.
    Find the number that occurs twice and the number that is missing and return them in the form of an array.
 
    Example 1:
    Input: nums = [1,2,2,4]
    Output: [2,3]
    Example 2:
    Input: nums = [1,1]
    Output: [1,2]

 
    Constraints:

    2 <= nums.length <= 104
    1 <= nums[i] <= 104

    """
    ### Canonical solution below ###
    result = []
    for num in nums:
        index = abs(num) - 1
        if nums[index] > 0:
            nums[index] = -nums[index]
        else:
            result.append(index + 1)
    for i, num in enumerate(nums):
        if num > 0:
            result.append(i + 1)
            break
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([3, 1, 2, 5, 5]) == [5, 4]
	assert candidate([1, 1, 2, 3, 4, 5]) == [1, 6]
	assert candidate([1, 3, 3, 4]) == [3, 2]
	assert candidate([1, 1, 2, 3, 4, 5, 6]) == [1, 7]
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 13]) == [13, 12]
	assert candidate([1, 1]) == [1, 2]
	assert candidate([3, 1, 2, 3, 4, 5]) == [3, 6]
	assert candidate([10, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [10, 1]
	assert candidate([1, 2, 2, 4]) == [2, 3]
	assert candidate([1, 2, 3, 4, 5, 5, 7]) == [5, 6]
	assert candidate([5, 5, 1, 2, 3, 4]) == [5, 6]
	assert candidate([1, 2, 5, 5, 4]) == [5, 3]
	assert candidate([6, 2, 3, 4, 5, 6, 1]) == [6, 7]
	assert candidate([3, 2, 1, 5, 5, 4]) == [5, 6]
	assert candidate([2, 1, 2, 3, 4, 5]) == [2, 6]
	assert candidate([1, 2, 3, 4, 7, 7, 5, 6]) == [7, 8]
	assert candidate([2, 2]) == [2, 1]
	assert candidate([1, 2, 3, 4, 5, 5]) == [5, 6]
	assert candidate([4, 2, 4, 1]) == [4, 3]
	assert candidate([3, 2, 2, 1, 5]) == [2, 4]
	assert candidate([2, 1, 5, 4, 5]) == [5, 3]
	assert candidate([1, 2, 3, 4, 6, 6]) == [6, 5]
def test_check():
	check(findErrorNums)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,bit-manipulation,sorting
# Metadata Coverage: 100
