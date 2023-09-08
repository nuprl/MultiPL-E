from typing import List


def maxFrequency(nums: List[int], k: int) -> int:
    """
    The frequency of an element is the number of times it occurs in an array.
    You are given an integer array nums and an integer k. In one operation, you can choose an index of nums and increment the element at that index by 1.
    Return the maximum possible frequency of an element after performing at most k operations.
 
    Example 1:

    Input: nums = [1,2,4], k = 5
    Output: 3
    Explanation: Increment the first element three times and the second element two times to make nums = [4,4,4].
    4 has a frequency of 3.
    Example 2:

    Input: nums = [1,4,8,13], k = 5
    Output: 2
    Explanation: There are multiple optimal solutions:
    - Increment the first element three times to make nums = [4,4,8,13]. 4 has a frequency of 2.
    - Increment the second element four times to make nums = [1,8,8,13]. 8 has a frequency of 2.
    - Increment the third element five times to make nums = [1,4,13,13]. 13 has a frequency of 2.

    Example 3:

    Input: nums = [3,9,6], k = 2
    Output: 1

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 105
    1 <= k <= 105

    """
    ### Canonical solution below ###
    nums.sort()
    max_freq, n, total = 1, len(nums), 0
    i = 0
    for j in range(n):
        total += nums[j]
        while total < nums[j] * (j - i + 1) - k:
            total -= nums[i]
            i += 1
        max_freq = max(max_freq, j - i + 1)
    return max_freq




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    15) == 10
	assert candidate([100,90,80,70,60,50,40,30,20,10], 350) == 8
	assert candidate([100,90,80,70,60,50,40,30,20,10], 450) == 10
	assert candidate([1,10,100,1000,10000,100000], 111110) == 5
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    14) == 10
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    11) == 10
	assert candidate([3, 9, 6], 2) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1], 30) == 20
	assert candidate([100,90,80,70,60,50,40,30,20,10], 400) == 9
	assert candidate([3,9,6], 2) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1], 0) == 10
	assert candidate([1, 2, 4], 5) == 3
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    16) == 10
	assert candidate([10,9,8,7,6,5,4,3,2,1], 45) == 10
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    10) == 10
	assert candidate([1, 4, 8, 13], 5) == 2
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    13) == 10
	assert candidate(
    [1,1,1,1,1,1,1,1,1,1],
    12) == 10
	assert candidate([7], 0) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], 45) == 10
def test_check():
	check(maxFrequency)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,greedy,sliding-window,sorting,prefix-sum
# Metadata Coverage: 100
