from typing import List


def min_difference(nums: List[int]) -> int:
    """
    You are given an integer array nums.
    In one move, you can choose one element of nums and change it to any value.
    Return the minimum difference between the largest and smallest value of nums after performing at most three moves.
 
    Example 1:

    Input: nums = [5,3,2,4]
    Output: 0
    Explanation: We can make at most 3 moves.
    In the first move, change 2 to 3. nums becomes [5,3,3,4].
    In the second move, change 4 to 3. nums becomes [5,3,3,3].
    In the third move, change 5 to 3. nums becomes [3,3,3,3].
    After performing 3 moves, the difference between the minimum and maximum is 3 - 3 = 0.

    Example 2:

    Input: nums = [1,5,0,10,14]
    Output: 1
    Explanation: We can make at most 3 moves.
    In the first move, change 5 to 0. nums becomes [1,0,0,10,14].
    In the second move, change 10 to 0. nums becomes [1,0,0,0,14].
    In the third move, change 14 to 1. nums becomes [1,0,0,0,1].
    After performing 3 moves, the difference between the minimum and maximum is 1 - 0 = 1.
    It can be shown that there is no way to make the difference 0 in 3 moves.
    Example 3:

    Input: nums = [3,100,20]
    Output: 0
    Explanation: We can make at most 3 moves.
    In the first move, change 100 to 7. nums becomes [3,7,20].
    In the second move, change 20 to 7. nums becomes [3,7,7].
    In the third move, change 3 to 7. nums becomes [7,7,7].
    After performing 3 moves, the difference between the minimum and maximum is 7 - 7 = 0.

 
    Constraints:

    1 <= nums.length <= 105
    -109 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    size = len(nums)
    if size < 5:
        return 0

    nums.sort()

    return min(nums[-1] - nums[3], nums[-2] - nums[2], nums[-3] - nums[1], nums[-4] - nums[0])




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5]) == 1
	assert candidate([5, 3, 2, 4]) == 0
	assert candidate(
    [1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000]
) == 0
	assert candidate(
    [5, 3, 2, 4]) == 0
	assert candidate([3, 100, 20]) == 0
	assert candidate([100, 200, 300, 400, 500]) == 100
	assert candidate([10, 20, 30, 40, 50]) == 10
	assert candidate([1, 1, 1, 1, 1]) == 0
	assert candidate(
    [1, 5, 0, 10, 14]) == 1
	assert candidate(
    [3, 100, 20]) == 0
	assert candidate([5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == 0
	assert candidate([1, 5, 0, 10, 14]) == 1
	assert candidate([-10, -20, -30, -40, -50]) == 10
def test_check():
	check(min_difference)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting
# Metadata Coverage: 100
