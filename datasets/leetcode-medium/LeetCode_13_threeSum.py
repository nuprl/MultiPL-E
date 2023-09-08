from typing import List


def threeSum(nums: List[int]) -> List[List[int]]:
    """
    Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
    Notice that the solution set must not contain duplicate triplets.
 
    Example 1:

    Input: nums = [-1,0,1,2,-1,-4]
    Output: [[-1,-1,2],[-1,0,1]]
    Explanation: 
    nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
    nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
    nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
    The distinct triplets are [-1,0,1] and [-1,-1,2].
    Notice that the order of the output and the order of the triplets does not matter.

    Example 2:

    Input: nums = [0,1,1]
    Output: []
    Explanation: The only possible triplet does not sum up to 0.

    Example 3:

    Input: nums = [0,0,0]
    Output: [[0,0,0]]
    Explanation: The only possible triplet sums up to 0.

 
    Constraints:

    3 <= nums.length <= 3000
    -105 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    nums.sort()
    result = []

    for i in range(len(nums) - 2):
        if i == 0 or nums[i] != nums[i - 1]:
            j, k = i + 1, len(nums) - 1
            while j < k:
                s = nums[i] + nums[j] + nums[k]
                if s == 0:
                    result.append([nums[i], nums[j], nums[k]])
                    while j < k and nums[j] == nums[j + 1]:
                        j += 1
                    while j < k and nums[k] == nums[k - 1]:
                        k -= 1
                    j += 1
                    k -= 1
                elif s < 0:
                    j += 1
                else:
                    k -= 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0]) == [[0, 0, 0]]
	assert candidate([1,1,-2]) == [[-2,1,1]]
	assert candidate([0,0,0]) == [[0,0,0]]
	assert candidate(
    [0,0,0,0,0]) == [[0,0,0]]
	assert candidate([-1,-1,2,2]) == [[-1,-1,2]]
	assert candidate(
    [3,1,-4]) == [[-4,1,3]]
	assert candidate(
    [1,2,-3]) == [[-3,1,2]]
	assert candidate([3,0,-2,-1,1,2]) == [[-2,-1,3],[-2,0,2],[-1,0,1]]
	assert candidate(
    [0,1,1]) == []
	assert candidate([105,-105,0]) == [[-105,0,105]]
	assert candidate(
    [1,1,-2]) == [[-2,1,1]]
	assert candidate(
    [-1,-1,2,2]) == [[-1,-1,2]]
	assert candidate(
    [105,-105,0]) == [[-105,0,105]]
	assert candidate([1,2,-3]) == [[-3,1,2]]
	assert candidate([0,1,1]) == []
	assert candidate(
    [-1,0,1,2,-1,-4]) == [[-1,-1,2], [-1,0,1]]
	assert candidate([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
	assert candidate([3,1,-4]) == [[-4,1,3]]
	assert candidate([-1,1,0]) == [[-1,0,1]]
	assert candidate([-1,0,1,2,-1,-4]) == [[-1,-1,2],[-1,0,1]]
	assert candidate([-3,0,3]) == [[-3,0,3]]
	assert candidate([0,0,0,0]) == [[0,0,0]]
	assert candidate(
    [0,0,0]) == [[0,0,0]]
	assert candidate([0,0,0,0,0]) == [[0,0,0]]
	assert candidate(
    [-1,1,0]) == [[-1,0,1]]
	assert candidate([0,0,0,0,0,0,0,0]) == [[0,0,0]]
def test_check():
	check(threeSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,sorting
# Metadata Coverage: 100
