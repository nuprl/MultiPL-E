from typing import List


def findLength(nums1: List[int], nums2: List[int]) -> int:
    """
    Given two integer arrays nums1 and nums2, return the maximum length of a subarray that appears in both arrays.
 
    Example 1:

    Input: nums1 = [1,2,3,2,1], nums2 = [3,2,1,4,7]
    Output: 3
    Explanation: The repeated subarray with maximum length is [3,2,1].

    Example 2:

    Input: nums1 = [0,0,0,0,0], nums2 = [0,0,0,0,0]
    Output: 5
    Explanation: The repeated subarray with maximum length is [0,0,0,0,0].

 
    Constraints:

    1 <= nums1.length, nums2.length <= 1000
    0 <= nums1[i], nums2[i] <= 100

    """
    ### Canonical solution below ###
    m, n = len(nums1), len(nums2)
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    maxLength = 0

    for i in range(m - 1, -1, -1):
        for j in range(n - 1, -1, -1):
            if nums1[i] == nums2[j]:
                dp[i][j] = dp[i + 1][j + 1] + 1
                maxLength = max(maxLength, dp[i][j])

    return maxLength




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6], [7, 8, 9]) == 0
	assert candidate([1,2,3,2,1], [3,2,1,4,7,1,2,3]) == 3
	assert candidate([1], [1]) == 1
	assert candidate( [2,1,1,2,2], [2,1,2,1]) == 2
	assert candidate([1,2,3,4,5], [1,2,3,2,1]) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
                  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]) == 19
	assert candidate([1,2,3,4], [0,1,1,1]) == 1
	assert candidate([1,1,1,1,1], [1,1,1,1,1]) == 5
	assert candidate([1, 2, 3, 4, 5, 6], [6, 5, 4, 3, 2, 1, 7]) == 1
	assert candidate([1,2,3,4,5], []) == 0
	assert candidate([], []) == 0
	assert candidate([1,2,3,4,5], [5,4,3,2,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10]) == 10
	assert candidate([1, 2, 3], [4, 5, 6]) == 0
	assert candidate([0,0,0,0,0], [0,0,0,0,0]) == 5
	assert candidate([1] * 1000, [1] * 1000) == 1000
	assert candidate([1,2,3,2,1], [3,2,1,4,7,2,1]) == 3
	assert candidate([1,2,3,2,1], [2,1,2,1]) == 2
	assert candidate([1, 2, 3, 4, 5, 6], [6, 5, 4, 3, 2, 1]) == 1
	assert candidate([1,2,3,4,5], [1,2,3,4,5]) == 5
	assert candidate(range(1000), range(1000)) == 1000
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 20
	assert candidate([1]*20, [1]*20) == 20
	assert candidate([1,1,1,1,1], [2,2,2,2,2]) == 0
	assert candidate([1,2,3,2,1], [1,2,3,2,1]) == 5
	assert candidate([1,2,3,2,1], [3,2,1,4,7]) == 3
def test_check():
	check(findLength)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,dynamic-programming,sliding-window,rolling-hash,hash-function
# Metadata Coverage: 100
