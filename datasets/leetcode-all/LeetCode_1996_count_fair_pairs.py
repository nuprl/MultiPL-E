from typing import List


def count_fair_pairs(nums: List[int], lower: int, upper: int) -> int:
    """
    Given a 0-indexed integer array nums of size n and two integers lower and upper, return the number of fair pairs.
    A pair (i, j) is fair if:

    0 <= i < j < n, and
    lower <= nums[i] + nums[j] <= upper

 
    Example 1:

    Input: nums = [0,1,7,4,4,5], lower = 3, upper = 6
    Output: 6
    Explanation: There are 6 fair pairs: (0,3), (0,4), (0,5), (1,3), (1,4), and (1,5).

    Example 2:

    Input: nums = [1,7,9,2,5], lower = 11, upper = 11
    Output: 1
    Explanation: There is a single fair pair: (2,3).

 
    Constraints:

    1 <= nums.length <= 105
    nums.length == n
    -109 <= nums[i] <= 109
    -109 <= lower <= upper <= 109

    """
    ### Canonical solution below ###
    n = len(nums)
    fair_pairs = 0
    for i in range(n):
        for j in range(i+1, n):
            if lower <= nums[i] + nums[j] <= upper:
                fair_pairs += 1
    return fair_pairs




### Unit tests below ###
def check(candidate):
	assert candidate([1,7,9,2,5], 11, 11) == 1
	assert candidate([1,2,3], 0, 6) == 3
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 0, 0) == 45
	assert candidate([5,5,5,5,5,5,5,5,5,5], 10, 10) == 45
	assert candidate([0,1,7,4,4,5], 3, 6) == 6
def test_check():
	check(count_fair_pairs)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100
