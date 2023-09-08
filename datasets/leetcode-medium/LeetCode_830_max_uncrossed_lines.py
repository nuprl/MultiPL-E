from typing import List


def max_uncrossed_lines(nums1: List[int], nums2: List[int]) -> int:
    """
    You are given two integer arrays nums1 and nums2. We write the integers of nums1 and nums2 (in the order they are given) on two separate horizontal lines.
    We may draw connecting lines: a straight line connecting two numbers nums1[i] and nums2[j] such that:

    nums1[i] == nums2[j], and
    the line we draw does not intersect any other connecting (non-horizontal) line.

    Note that a connecting line cannot intersect even at the endpoints (i.e., each number can only belong to one connecting line).
    Return the maximum number of connecting lines we can draw in this way.
 
    Example 1:


    Input: nums1 = [1,4,2], nums2 = [1,2,4]
    Output: 2
    Explanation: We can draw 2 uncrossed lines as in the diagram.
    We cannot draw 3 uncrossed lines, because the line from nums1[1] = 4 to nums2[2] = 4 will intersect the line from nums1[2]=2 to nums2[1]=2.

    Example 2:

    Input: nums1 = [2,5,1,2,5], nums2 = [10,5,2,1,5,2]
    Output: 3

    Example 3:

    Input: nums1 = [1,3,7,1,7,5], nums2 = [1,9,2,5,1]
    Output: 2

 
    Constraints:

    1 <= nums1.length, nums2.length <= 500
    1 <= nums1[i], nums2[j] <= 2000

    """
    ### Canonical solution below ###
    m, n = len(nums1), len(nums2)
    dp = [[0] * (n + 1) for _ in range(m + 1)]

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if nums1[i - 1] == nums2[j - 1]:
                dp[i][j] = dp[i - 1][j - 1] + 1
            else:
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])

    return dp[m][n]




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4], [1, 1, 1, 1]) == 1
	assert candidate([2, 5, 1, 2, 5], [10, 5, 2, 1, 5, 2]) == 3
	assert candidate([1, 2, 3, 4, 5, 6], [3, 5, 1, 2, 5, 1]) == 3
	assert candidate([1, 2, 3, 4], [2, 1, 4, 3]) == 2
	assert candidate([1, 1, 2, 1, 2, 5], [1, 2, 4]) == 2
	assert candidate([1, 1, 2, 1, 2], [2, 2, 1, 1, 1]) == 3
	assert candidate([1, 1, 2, 1, 2], [2, 1, 1, 1, 2]) == 4
	assert candidate([1, 4, 2], [1, 2, 4]) == 2
	assert candidate([1, 2, 3, 4, 5, 6], [3, 5, 4, 1, 5, 3]) == 3
	assert candidate([1, 2, 3, 4], [1, 2, 3, 4]) == 4
	assert candidate([1, 2, 3, 4, 5], [5, 4, 3, 2, 1]) == 1
	assert candidate([1, 3, 7, 1, 7, 5], [1, 9, 2, 5, 1]) == 2
	assert candidate([1, 2, 3, 4, 5], [1, 2, 4, 4, 5]) == 4
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 1
	assert candidate([1, 1, 2, 1, 2], [1, 1, 1, 1, 1]) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7], [3, 5, 6, 8, 9, 10, 11]) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == 5
	assert candidate([1, 1, 1, 1], [1, 2, 3, 4]) == 1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 10
	assert candidate([1, 2, 3, 4, 5, 6, 7], [1, 2, 3, 4, 5, 6, 7]) == 7
	assert candidate([1, 1, 1, 1, 1], [1, 1, 2, 1, 2]) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]) == 12
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]) == 5
def test_check():
	check(max_uncrossed_lines)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
