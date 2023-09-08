from typing import List


def longest_square_streak(nums: List[int]) -> int:
    """
    You are given an integer array nums. A subsequence of nums is called a square streak if:

    The length of the subsequence is at least 2, and
    after sorting the subsequence, each element (except the first element) is the square of the previous number.

    Return the length of the longest square streak in nums, or return -1 if there is no square streak.
    A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
 
    Example 1:

    Input: nums = [4,3,6,16,8,2]
    Output: 3
    Explanation: Choose the subsequence [4,16,2]. After sorting it, it becomes [2,4,16].
    - 4 = 2 * 2.
    - 16 = 4 * 4.
    Therefore, [4,16,2] is a square streak.
    It can be shown that every subsequence of length 4 is not a square streak.

    Example 2:

    Input: nums = [2,3,5,6,7]
    Output: -1
    Explanation: There is no square streak in nums so return -1.

 
    Constraints:

    2 <= nums.length <= 105
    2 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    num_set = set(nums)
    longest_streak = -1

    for num in num_set:
        streak = 1

        while int(num ** 0.5) in num_set:
            streak += 1
            num = int(num ** 0.5)

        longest_streak = max(longest_streak, streak)

    return longest_streak if longest_streak >= 2 else -1




### Unit tests below ###
def check(candidate):
	assert candidate([4, 3, 16, 8, 2]) == 3
	assert candidate([]) == -1
	assert candidate([4, 3, 6, 16, 8, 2]) == 3
	assert candidate([3,4,5,6,]) == -1
	assert candidate([3,4,5,6,7]) == -1
	assert candidate([4,3,6,16,8,2]) == 3
	assert candidate([2,7,49,343,2401]) == 4
def test_check():
	check(longest_square_streak)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,binary-search,dynamic-programming,sorting
# Metadata Coverage: 100
