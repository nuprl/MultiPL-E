from typing import List


def minPatches(nums: List[int], n: int) -> int:
    """
    Given a sorted integer array nums and an integer n, add/patch elements to the array such that any number in the range [1, n] inclusive can be formed by the sum of some elements in the array.
    Return the minimum number of patches required.
 
    Example 1:

    Input: nums = [1,3], n = 6
    Output: 1
    Explanation:
    Combinations of nums are [1], [3], [1,3], which form possible sums of: 1, 3, 4.
    Now if we add/patch 2 to nums, the combinations are: [1], [2], [3], [1,3], [2,3], [1,2,3].
    Possible sums are 1, 2, 3, 4, 5, 6, which now covers the range [1, 6].
    So we only need 1 patch.

    Example 2:

    Input: nums = [1,5,10], n = 20
    Output: 2
    Explanation: The two patches can be [2, 4].

    Example 3:

    Input: nums = [1,2,2], n = 5
    Output: 0

 
    Constraints:

    1 <= nums.length <= 1000
    1 <= nums[i] <= 104
    nums is sorted in ascending order.
    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    max_sum = 0
    patches = 0
    i = 0

    while max_sum < n:
        if i < len(nums) and nums[i] <= max_sum + 1:
            max_sum += nums[i]
            i += 1
        else:
            max_sum += max_sum + 1
            patches += 1

    return patches




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,4,8,16,32,64,128,256,512], 1023) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 50) == 0
	assert candidate([1,2,2], 5) == 0
	assert candidate(
    [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576],
    2047) == 0
	assert candidate([2,4,8,16,32], 64) == 2
	assert candidate([1,3,6,12], 24) == 1
	assert candidate(range(1, 513), 8181) == 0
	assert candidate([1,5,10], 20) == 2
	assert candidate([1,2,4,8], 15) == 0
	assert candidate([1,2,4,8,16], 31) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 55) == 0
	assert candidate([1,2,4,8,16,32], 63) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 37) == 0
	assert candidate([1,2,4], 7) == 0
	assert candidate(
    [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576],
    2048) == 0
	assert candidate([2,4,8,16,32], 1) == 1
	assert candidate([1,3,5,7], 12) == 1
	assert candidate([1,2,4,8,16,32,64,128,256,512], 1025) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], 56) == 1
	assert candidate([1,3], 6) == 1
	assert candidate([1,2,4,8,16,32], 65) == 1
	assert candidate([1,4,8,16], 20) == 1
def test_check():
	check(minPatches)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy
# Metadata Coverage: 100
