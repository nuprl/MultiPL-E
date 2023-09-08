from typing import List


def maxAlternatingSum(nums: List[int]) -> int:
    """
    The alternating sum of a 0-indexed array is defined as the sum of the elements at even indices minus the sum of the elements at odd indices.

    For example, the alternating sum of [4,2,5,3] is (4 + 5) - (2 + 3) = 4.

    Given an array nums, return the maximum alternating sum of any subsequence of nums (after reindexing the elements of the subsequence).


    A subsequence of an array is a new array generated from the original array by deleting some elements (possibly none) without changing the remaining elements' relative order. For example, [2,7,4] is a subsequence of [4,2,3,7,2,1,4] (the underlined elements), while [2,4,2] is not.
 
    Example 1:

    Input: nums = [4,2,5,3]
    Output: 7
    Explanation: It is optimal to choose the subsequence [4,2,5] with alternating sum (4 + 5) - 2 = 7.

    Example 2:

    Input: nums = [5,6,7,8]
    Output: 8
    Explanation: It is optimal to choose the subsequence [8] with alternating sum 8.

    Example 3:

    Input: nums = [6,2,1,2,4,5]
    Output: 10
    Explanation: It is optimal to choose the subsequence [6,1,5] with alternating sum (6 + 5) - 1 = 10.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 105
    """
    ### Canonical solution below ###
    odd, even = 0, 0
    for num in nums:
        newOdd = max(even + num, odd)
        even = max(odd - num, even)
        odd = newOdd
    return odd




### Unit tests below ###
def check(candidate):
	assert candidate([1]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == 1
	assert candidate([4,2,5,3]) == 7
	assert candidate([0,0,0,0,0,0,0,0,0,0]) == 0
	assert candidate([2,2,2,2,2]) == 2
	assert candidate([5,6,7,8]) == 8
	assert candidate([10,8,5,3,2]) == 10
	assert candidate([1,1,1,1,1]) == 1
	assert candidate(
    [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]) == 100
	assert candidate([5,4,3,2,1]) == 5
	assert candidate([1,0,-1,0,1,0,-1,0,1,0]) == 5
	assert candidate([4, 2, 5, 3]) == 7
	assert candidate([6,2,1,2,4,5]) == 10
	assert candidate([50,40,30,20,10]) == 50
	assert candidate([0]) == 0
	assert candidate([5, 6, 7, 8]) == 8
	assert candidate([10,20,30,40,50]) == 50
	assert candidate([1,2,3,4,5]) == 5
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 20
	assert candidate(list(range(10000000,-1,-1))) == 10000000
	assert candidate([6, 2, 1, 2, 4, 5]) == 10
	assert candidate([10,30,50,20,10]) == 50
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 20
def test_check():
	check(maxAlternatingSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
