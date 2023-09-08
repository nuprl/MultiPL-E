from typing import List


def maxScore(nums1: List[int], nums2: List[int], k: int) -> int:
    """
    You are given two 0-indexed integer arrays nums1 and nums2 of equal length n and a positive integer k. You must choose a subsequence of indices from nums1 of length k.
    For chosen indices i0, i1, ..., ik - 1, your score is defined as:

    The sum of the selected elements from nums1 multiplied with the minimum of the selected elements from nums2.
    It can defined simply as: (nums1[i0] + nums1[i1] +...+ nums1[ik - 1]) * min(nums2[i0] , nums2[i1], ... ,nums2[ik - 1]).

    Return the maximum possible score.
    A subsequence of indices of an array is a set that can be derived from the set {0, 1, ..., n-1} by deleting some or no elements.
 
    Example 1:

    Input: nums1 = [1,3,3,2], nums2 = [2,1,3,4], k = 3
    Output: 12
    Explanation: 
    The four possible subsequence scores are:
    - We choose the indices 0, 1, and 2 with score = (1+3+3) * min(2,1,3) = 7.
    - We choose the indices 0, 1, and 3 with score = (1+3+2) * min(2,1,4) = 6. 
    - We choose the indices 0, 2, and 3 with score = (1+3+2) * min(2,3,4) = 12. 
    - We choose the indices 1, 2, and 3 with score = (3+3+2) * min(1,3,4) = 8.
    Therefore, we return the max score, which is 12.

    Example 2:

    Input: nums1 = [4,2,3,1,1], nums2 = [7,5,10,9,6], k = 1
    Output: 30
    Explanation: 
    Choosing index 2 is optimal: nums1[2] * nums2[2] = 3 * 10 = 30 is the maximum possible score.

 
    Constraints:

    n == nums1.length == nums2.length
    1 <= n <= 105
    0 <= nums1[i], nums2[j] <= 105
    1 <= k <= n

    """
    ### Canonical solution below ###
    n = len(nums1)
    res = 0
    sum_n1 = 0
    min_n2 = nums2[0]
    i, j = 0, 0
    while j < n:
        sum_n1 += nums1[j]
        min_n2 = min(min_n2, nums2[j])
        if j - i + 1 > k:
            sum_n1 -= nums1[i]
            i += 1
        if j + 1 >= k:
            res = max(res, sum_n1 * min_n2)
        j += 1
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([9, 9, 9, 9, 9], [5, 5, 5, 5, 5], 4) == 180
	assert candidate([1], [1000000], 1) == 1000000
	assert candidate([1000000], [1], 1) == 1000000
	assert candidate([1, 2, 3, 4, 5], [5, 4, 3, 2, 1], 2) == 15
	assert candidate([77], [50], 1) == 3850
	assert candidate([10, 20, 30], [3, 2, 1], 2) == 60
	assert candidate([5, 4, 3, 2, 1], [1, 1, 1, 1, 1], 4) == 14
def test_check():
	check(maxScore)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
