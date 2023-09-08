from typing import List


def subsets(nums: List[int]) -> List[List[int]]:
    """
    Given an integer array nums of unique elements, return all possible subsets (the power set).
    The solution set must not contain duplicate subsets. Return the solution in any order.
 
    Example 1:

    Input: nums = [1,2,3]
    Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

    Example 2:

    Input: nums = [0]
    Output: [[],[0]]

 
    Constraints:

    1 <= nums.length <= 10
    -10 <= nums[i] <= 10
    All the numbers of nums are unique.

    """
    ### Canonical solution below ###
    n = len(nums)
    num_subsets = 1 << n
    result = []

    for i in range(num_subsets):
        subset = []
        for j in range(n):
            if i & (1 << j):
                subset.append(nums[j])
        result.append(subset)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([7, 8, 9, 10]) == [[], [7], [8], [7, 8], [9], [7, 9], [8, 9], [7, 8, 9], [10], [7, 10], [8, 10], [7, 8, 10], [9, 10], [7, 9, 10], [8, 9, 10], [7, 8, 9, 10]]
	assert candidate([0]) == [[], [0]]
	assert candidate(range(1, 5)) == [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3], [4], [1, 4], [2, 4], [1, 2, 4], [3, 4], [1, 3, 4], [2, 3, 4], [1, 2, 3, 4]]
	assert candidate([-1, 1]) == [[], [-1], [1], [-1, 1]]
	assert candidate([1, 2, 3]) == [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
	assert candidate([1]) == [[], [1]]
	assert candidate([5, -3, 0]) == [[], [5], [-3], [5, -3], [0], [5, 0], [-3, 0], [5, -3, 0]]
def test_check():
	check(subsets)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking,bit-manipulation
# Metadata Coverage: 100
