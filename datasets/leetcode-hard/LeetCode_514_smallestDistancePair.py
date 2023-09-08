from typing import List


def smallestDistancePair(nums: List[int], k: int) -> int:
    """
    The distance of a pair of integers a and b is defined as the absolute difference between a and b.
    Given an integer array nums and an integer k, return the kth smallest distance among all the pairs nums[i] and nums[j] where 0 <= i < j < nums.length.
 
    Example 1:

    Input: nums = [1,3,1], k = 1
    Output: 0
    Explanation: Here are all the pairs:
    (1,3) -> 2
    (1,1) -> 0
    (3,1) -> 2
    Then the 1st smallest distance pair is (1,1), and its distance is 0.

    Example 2:

    Input: nums = [1,1,1], k = 2
    Output: 0

    Example 3:

    Input: nums = [1,6,1], k = 3
    Output: 5

 
    Constraints:

    n == nums.length
    2 <= n <= 104
    0 <= nums[i] <= 106
    1 <= k <= n * (n - 1) / 2

    """
    ### Canonical solution below ###
    nums.sort()
    low, high = 0, nums[-1] - nums[0]

    while low < high:
        mid = (low + high) // 2
        count, left = 0, 0

        for right in range(len(nums)):
            while nums[right] - nums[left] > mid:
                left += 1
            count += (right - left)

        if count < k:
            low = mid + 1
        else:
            high = mid

    return low




### Unit tests below ###
def check(candidate):
	assert candidate([3, 1, 3, 4], 1) == 0
	assert candidate([1,2,3,4,5,6,7], 5) == 1
	assert candidate([1,3,1], 1) == 0
	assert candidate([1,2,3,4,5], 4) == 1
	assert candidate([1,2,3,4,5,6,7], 4) == 1
	assert candidate([2, 1, 1], 1) == 0
	assert candidate([1,1,1,2,2,2], 3) == 0
	assert candidate([1], 1) == 0
	assert candidate([1,1,1,1,2], 4) == 0
	assert candidate([1,2,3,4,5], 6) == 2
	assert candidate([1,100000], 1) == 99999
	assert candidate([1,2], 1) == 1
	assert candidate([1,2,3,4,5,6], 5) == 1
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22], 10) == 1
	assert candidate([100,200,300,400,500,600], 15) == 500
	assert candidate([1,2,3], 2) == 1
	assert candidate([2,2,2,2,2], 5) == 0
	assert candidate([1,2,3], 1) == 1
	assert candidate([1000, 1000, 3, 2], 1) == 0
	assert candidate([1,1,1], 2) == 0
	assert candidate([1,2,3,4,5], 7) == 2
	assert candidate([1,2,3,4,5,6,7], 3) == 1
	assert candidate([2,2,2,2,2], 10) == 0
	assert candidate([1,2,3,4], 1) == 1
	assert candidate([1,2,3,4,5,6,7], 6) == 1
	assert candidate([1,2,3,4,5], 1) == 1
	assert candidate([1,10,20,30,40,50], 1) == 9
	assert candidate([6, 3, 7, 4, 1, 2], 4) == 1
	assert candidate([2, 2, 2, 3, 3, 3, 5, 5], 12) == 1
	assert candidate([1,6,1], 3) == 5
	assert candidate([1,2,3,4,5], 2) == 1
	assert candidate([1,2,3,4,5], 3) == 1
	assert candidate([1,2,3,4,5], 5) == 2
	assert candidate([100,200,300,400,500,600], 1) == 100
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1) == 1
def test_check():
	check(smallestDistancePair)
# Metadata Difficulty: Hard
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100
