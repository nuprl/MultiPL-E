from typing import List


def numberOfSubarrays(nums: List[int], k: int) -> int:
    """
    Given an array of integers nums and an integer k. A continuous subarray is called nice if there are k odd numbers on it.
    Return the number of nice sub-arrays.
 
    Example 1:

    Input: nums = [1,1,2,1,1], k = 3
    Output: 2
    Explanation: The only sub-arrays with 3 odd numbers are [1,1,2,1] and [1,2,1,1].

    Example 2:

    Input: nums = [2,4,6], k = 1
    Output: 0
    Explanation: There is no odd numbers in the array.

    Example 3:

    Input: nums = [2,2,2,1,2,2,1,2,2,2], k = 2
    Output: 16

 
    Constraints:

    1 <= nums.length <= 50000
    1 <= nums[i] <= 10^5
    1 <= k <= nums.length
    """
    ### Canonical solution below ###
    n = len(nums)
    result = count = 0
    odd_count = [0] * (n + 1)

    odd_count[0] = 1
    for num in nums:
        count += num % 2
        if count >= k:
            result += odd_count[count - k]
        odd_count[count] += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1,1,1,1,1,1], 10) == 1
	assert candidate(list(range(20001)) + [1], 10003) == 0
	assert candidate([1,1,2,1,1], 0) == 1
	assert candidate([2,2,2,2,2,2,2,2,2,2], 1) == 0
	assert candidate(list(range(20001)) + [1], 10001) == 2
	assert candidate([2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2], 20) == 0
	assert candidate(list(range(20001)) + [1], 10002) == 0
	assert candidate(list(range(20000, 40000)) + [1], 10002) == 0
	assert candidate([2,4,6], 1) == 0
	assert candidate([1,1,2,1,1], 3) == 2
	assert candidate(list(range(20000)), 10001) == 0
	assert candidate([2,4,6,8,10,12,14,16,18,20], 1) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1], 6) == 5
	assert candidate([1,1,1,1,1,1,1,1,1,1], 5) == 6
	assert candidate([1,1,1,1,1,1,1,1,1,1], 4) == 7
	assert candidate([2,2,2,1,2,2,1,2,2,2], 2) == 16
	assert candidate([1,1,1,1,1,1,1,1,1,1], 1) == 10
	assert candidate([2,2,2,2,2,2,2,2,2,2], 5) == 0
def test_check():
	check(numberOfSubarrays)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,sliding-window
# Metadata Coverage: 100
