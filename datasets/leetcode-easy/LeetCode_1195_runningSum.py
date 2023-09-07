from typing import List


def runningSum(nums: List[int]) -> List[int]:
    """
    Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
    Return the running sum of nums.
 
    Example 1:

    Input: nums = [1,2,3,4]
    Output: [1,3,6,10]
    Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
    Example 2:

    Input: nums = [1,1,1,1,1]
    Output: [1,2,3,4,5]
    Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
    Example 3:

    Input: nums = [3,1,2,10,1]
    Output: [3,4,6,16,17]

 
    Constraints:

    1 <= nums.length <= 1000
    -10^6 <= nums[i] <= 10^6
    """
    ### Canonical solution below ###
    for i in range(1, len(nums)):
        nums[i] += nums[i - 1]
    return nums




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1]) == [1, 2, 3, 4, 5]
	assert candidate([-1, 1, -1, 1, -1, 1, -1, 1, -1, 1]) == [-1, 0, -1, 0, -1, 0, -1, 0, -1, 0]
	assert candidate([1]) == [1]
	assert candidate([-5, 10, -15, 20, -25]) == [-5, 5, -10, 10, -15]
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
	assert candidate([0, 0, 0, 0, 0]) == [0, 0, 0, 0, 0]
	assert candidate([100, 200, 300, 400, 500]) == [100, 300, 600, 1000, 1500]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
	assert candidate([2, -2, 3, -3, 4, -4, 5, -5, 6, -6]) == [2, 0, 3, 0, 4, 0, 5, 0, 6, 0]
	assert candidate([-10, 20, -30, 40, -50, 60, -70, 80, -90, 100]) == [-10, 10, -20, 20, -30, 30, -40, 40, -50, 50]
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10]) == [-1, -3, -6, -10, -15, -21, -28, -36, -45, -55]
	assert candidate(
    [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == [-1, -2, -3, -4, -5, -6, -7, -8, -9,
                                                                                         -10, -11, -12, -13, -14, -15, -16,
                                                                                         -17, -18, -19, -20]
	assert candidate(list(range(1000))) == [i * (i + 1) // 2 for i in range(1000)]
	assert candidate([-1, -2, -3, -4]) == [-1, -3, -6, -10]
	assert candidate([1, 2, 3, 4]) == [1, 3, 6, 10]
	assert candidate([3, 1, 2, 10, 1]) == [3, 4, 6, 16, 17]
	assert candidate([5, -3, 8, -2, 0]) == [5, 2, 10, 8, 8]
	assert candidate(list(range(1, 200))) == [i * (i + 1) // 2 for i in range(1, 200)]
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
	assert candidate([1, 0, -1]) == [1, 1, 0]
	assert candidate([-2, -2, -2, -2, -2, -2, -2, -2, -2, -2]) == [-2, -4, -6, -8, -10, -12, -14, -16, -18, -20]
	assert candidate([10, 20, 30, 40, 50]) == [10, 30, 60, 100, 150]
	assert candidate([1, 2]) == [1, 3]
def test_check():
	check(runningSum)
# Metadata Difficulty: Easy
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
