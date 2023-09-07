from typing import List


def countPartitions(nums: List[int], k: int) -> int:
    """
    You are given an array nums consisting of positive integers and an integer k.
    Partition the array into two ordered groups such that each element is in exactly one group. A partition is called great if the sum of elements of each group is greater than or equal to k.
    Return the number of distinct great partitions. Since the answer may be too large, return it modulo 109 + 7.
    Two partitions are considered distinct if some element nums[i] is in different groups in the two partitions.
 
    Example 1:

    Input: nums = [1,2,3,4], k = 4
    Output: 6
    Explanation: The great partitions are: ([1,2,3], [4]), ([1,3], [2,4]), ([1,4], [2,3]), ([2,3], [1,4]), ([2,4], [1,3]) and ([4], [1,2,3]).

    Example 2:

    Input: nums = [3,3,3], k = 4
    Output: 0
    Explanation: There are no great partitions for this array.

    Example 3:

    Input: nums = [6,6], k = 2
    Output: 2
    Explanation: We can either put nums[0] in the first partition or in the second partition.
    The great partitions will be ([6], [6]) and ([6], [6]).

 
    Constraints:

    1 <= nums.length, k <= 1000
    1 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    total_sum = sum(nums)
    n = len(nums)
    mod = 1000000007

    if total_sum < k * 2:
        return 0

    dp = [1] * (n + 1)

    for i in range(1, k):
        for j in range(n - 1, 0, -1):
            dp[j] = (dp[j] * j + dp[j - 1]) % mod

    result = 0

    for i in range(n - 1):
        total_sum -= nums[i]
        if total_sum >= k:
            result = (result + dp[i + 1]) % mod

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(
    [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6], 4500) == 0
	assert candidate([10,20,30,40,50,60,70,80,90,100], 600) == 0
	assert candidate([100,200,300,400,500,600,700,800,900,1000], 5000) == 0
	assert candidate([3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3], 45) == 0
	assert candidate([100,200,300,400,500,600,700,800,900,1000], 3000) == 0
	assert candidate([100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100], 2000) == 0
	assert candidate([6,6], 2) == 2
	assert candidate([100,200,300,400,500,600,700,800,900,1000], 4000) == 0
	assert candidate([10,20,30,40,50,60,70,80,90,100], 550) == 0
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 5000) == 0
	assert candidate([100,200,300,400,500,600,700,800,900,1000], 4500) == 0
def test_check():
	check(countPartitions)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
