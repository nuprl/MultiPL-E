from typing import List


def minSubarray(nums: List[int], p: int) -> int:
    """
    Given an array of positive integers nums, remove the smallest subarray (possibly empty) such that the sum of the remaining elements is divisible by p. It is not allowed to remove the whole array.
    Return the length of the smallest subarray that you need to remove, or -1 if it's impossible.
    A subarray is defined as a contiguous block of elements in the array.
 
    Example 1:

    Input: nums = [3,1,4,2], p = 6
    Output: 1
    Explanation: The sum of the elements in nums is 10, which is not divisible by 6. We can remove the subarray [4], and the sum of the remaining elements is 6, which is divisible by 6.

    Example 2:

    Input: nums = [6,3,5,2], p = 9
    Output: 2
    Explanation: We cannot remove a single element to get a sum divisible by 9. The best way is to remove the subarray [5,2], leaving us with [6,3] with sum 9.

    Example 3:

    Input: nums = [1,2,3], p = 3
    Output: 0
    Explanation: Here the sum is 6. which is already divisible by 3. Thus we do not need to remove anything.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    1 <= p <= 109

    """
    ### Canonical solution below ###
    n, res, need, cur = len(nums), len(nums), 0, 0
    for num in nums:
        need = (need + num) % p
    if need == 0:
        return 0
    last_seen = {0: -1}
    for i, num in enumerate(nums):
        cur = (cur + num) % p
        last_seen[cur] = i
        res = min(res, i - last_seen.get((cur - need + p) % p, -n))
    return res if res < n else -1




### Unit tests below ###
def check(candidate):
	assert candidate([7,1,4,2], 6) == 1
	assert candidate([3,1,4,2], 6) == 1
	assert candidate(list(range(1, 100000)), 10) == 0
	assert candidate([1,2,3], 3) == 0
	assert candidate([2,6,8,5], 4) == 1
	assert candidate([2,3], 100) == -1
	assert candidate([10,15,20,25,30], 5) == 0
	assert candidate([2,4,6,8,10,12,14,16,18,20], 5) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,2], 3) == 1
	assert candidate([1,2,3,4,5,6,7,8,9], 10) == 1
	assert candidate([15,30,45,60,75,90], 15) == 0
	assert candidate([1,2,3,4,5,6,9,8,7], 10) == 1
	assert candidate([4,10,8,5,1,6], 13) == 1
	assert candidate([5,6,7,8,9,10,11,12,13,14], 7) == 1
	assert candidate([6,3,5,2], 9) == 2
	assert candidate([1,2,3,4,5,6], 100) == -1
def test_check():
	check(minSubarray)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
