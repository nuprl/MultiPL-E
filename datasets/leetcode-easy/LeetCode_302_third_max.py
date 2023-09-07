from typing import List


def third_max(nums: List[int]) -> int:
    """
    Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.
 
    Example 1:

    Input: nums = [3,2,1]
    Output: 1
    Explanation:
    The first distinct maximum is 3.
    The second distinct maximum is 2.
    The third distinct maximum is 1.

    Example 2:

    Input: nums = [1,2]
    Output: 2
    Explanation:
    The first distinct maximum is 2.
    The second distinct maximum is 1.
    The third distinct maximum does not exist, so the maximum (2) is returned instead.

    Example 3:

    Input: nums = [2,2,3,1]
    Output: 1
    Explanation:
    The first distinct maximum is 3.
    The second distinct maximum is 2 (both 2's are counted together since they have the same value).
    The third distinct maximum is 1.

 
    Constraints:

    1 <= nums.length <= 104
    -231 <= nums[i] <= 231 - 1

 
    Follow up: Can you find an O(n) solution?"""
    ### Canonical solution below ###
    top3 = set()
    for num in nums:
        top3.add(num)
        if len(top3) > 3:
            top3.remove(min(top3))
    return min(top3) if len(top3) == 3 else max(top3)




### Unit tests below ###
def check(candidate):
	assert candidate([100, 200, 300, 400, 500]) == 300
	assert candidate([10, 20, 30, 30, 20, 10]) == 10
	assert candidate([-1, 0, 1]) == -1
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5]) == 3
	assert candidate([1, 2, 3, 4, 5, 6]) == 4
	assert candidate([1, 2, 3, 3, 2, 1]) == 1
	assert candidate([1, 1, 1, 1, 1, 1]) == 1
	assert candidate([3, 2, 1]) == 1
	assert candidate([10, 10, 10, 20, 20, 20, 30, 30, 30]) == 10
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10]) == 10
	assert candidate([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == 5
	assert candidate([-1, -1, -1, -2, -2, -2]) == -1
	assert candidate(
    [2, 3, 4, 4, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == 3
	assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]) == 4
	assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]) == 4
	assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]) == 4
	assert candidate([1, 2]) == 2
	assert candidate([2, 2, 3, 1]) == 1
	assert candidate([2, 2, 3, 3, 1, 1, 4]) == 2
	assert candidate([1, 2, 3, 4, 5, 6, 6, 6, 6, 6]) == 4
	assert candidate([1, 2, 3, 4, 5, 5, 5, 5, 5, 6]) == 4
	assert candidate([2, 2, 3, 3, 1, 1]) == 1
	assert candidate([1, 1, 1, 1, 1, 2]) == 2
	assert candidate([6, 5, 4, 3, 2, 1]) == 4
	assert candidate([1, 1, 1, 1, 1, 2, 2, 2, 2, 2]) == 2
	assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3]) == 4
	assert candidate([10, 20, 30, 40, 50]) == 30
def test_check():
	check(third_max)
# Metadata Difficulty: Easy
# Metadata Topics: array,sorting
# Metadata Coverage: 100
