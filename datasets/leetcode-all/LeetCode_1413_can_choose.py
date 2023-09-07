from typing import List


def can_choose(groups: List[List[int]], nums: List[int]) -> bool:
    """
    You are given a 2D integer array groups of length n. You are also given an integer array nums.
    You are asked if you can choose n disjoint subarrays from the array nums such that the ith subarray is equal to groups[i] (0-indexed), and if i > 0, the (i-1)th subarray appears before the ith subarray in nums (i.e. the subarrays must be in the same order as groups).
    Return true if you can do this task, and false otherwise.
    Note that the subarrays are disjoint if and only if there is no index k such that nums[k] belongs to more than one subarray. A subarray is a contiguous sequence of elements within an array.
 
    Example 1:

    Input: groups = [[1,-1,-1],[3,-2,0]], nums = [1,-1,0,1,-1,-1,3,-2,0]
    Output: true
    Explanation: You can choose the 0th subarray as [1,-1,0,1,-1,-1,3,-2,0] and the 1st one as [1,-1,0,1,-1,-1,3,-2,0].
    These subarrays are disjoint as they share no common nums[k] element.

    Example 2:

    Input: groups = [[10,-2],[1,2,3,4]], nums = [1,2,3,4,10,-2]
    Output: false
    Explanation: Note that choosing the subarrays [1,2,3,4,10,-2] and [1,2,3,4,10,-2] is incorrect because they are not in the same order as in groups.
    [10,-2] must come before [1,2,3,4].

    Example 3:

    Input: groups = [[1,2,3],[3,4]], nums = [7,7,1,2,3,4,7,7]
    Output: false
    Explanation: Note that choosing the subarrays [7,7,1,2,3,4,7,7] and [7,7,1,2,3,4,7,7] is invalid because they are not disjoint.
    They share a common elements nums[4] (0-indexed).

 
    Constraints:

    groups.length == n
    1 <= n <= 103
    1 <= groups[i].length, sum(groups[i].length) <= 103
    1 <= nums.length <= 103
    -107 <= groups[i][j], nums[k] <= 107

    """
    ### Canonical solution below ###
    g_i, n_i = 0, 0
    while g_i < len(groups) and n_i + len(groups[g_i]) <= len(nums):
        if nums[n_i: n_i + len(groups[g_i])] == groups[g_i]:
            n_i += len(groups[g_i])
            g_i += 1
        else:
            n_i += 1
    return g_i == len(groups)




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 2, 3], [4, 5]], [1, 2, 3, 4, 5]) == True
	assert candidate([[1, 2, 3], [4, 5]], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([[1, 2, 3, 4, 5]], [1, 2, 3, 4, 5]) == True
	assert candidate([[1, 2], [3, 4]], [1, 2, 3, 4]) == True
	assert candidate([[2, 1], [4, 3]], [2, 1, 5, 4, 3]) == True
	assert candidate([[1, 2, 3], [4, 5]], [1, 2, 4, 3, 5]) == False
	assert candidate([[2, 1], [4, 3]], [2, 1, 3, 4]) == False
	assert candidate([[1, 2, 3], [4, 5]], [4, 5, 1, 2, 3]) == False
	assert candidate([[1, 2], [3, 4]], [1, 2, 3, 4, 5]) == True
	assert candidate([[1, 2, 3], [4, 5]], [4, 1, 5, 2, 3]) == False
	assert candidate([[1, 2, 3], [3, 4]], [7, 7, 1, 2, 3, 4, 7, 7]) == False
	assert candidate([[1, 2], [3, 4, 5]], [1, 2, 3, 4, 5]) == True
	assert candidate([[1, 2], [3, 4]], [1, 3, 2, 4]) == False
	assert candidate([[1, 2, 3, 4]], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([[3, 4], [1, 2, 3]], [1, 2, 3, 4, 10, -2]) == False
	assert candidate([[1, -1, -1], [3, -2, 0]], [1, -1, 0, 1, -1, -1, 3, -2, 0]) == True
	assert candidate([[10, -2], [1, 2, 3, 4]], [7, 7, 1, 2, 3, 4, 10, -2, 7]) == False
	assert candidate([[10, -2], [1, 2, 3, 4]], [1, 2, 3, 4, 10, -2]) == False
	assert candidate([[2, 1], [4, 3]], [2, 1, 4, 3]) == True
	assert candidate([[1, 2, 3, 4, 5]], [5, 4, 3, 2, 1]) == False
	assert candidate([[1, 2, 3], [4, 5]], [1, 2, 4, 5, 3]) == False
	assert candidate([[1, 2, 3], [4, 5]], [1, 2, 3, 5, 4]) == False
	assert candidate([[10, -2], [1, 2, 3, 4]], [7, 7, 1, 2, 3, 4, 10, -2, 7, 7]) == False
	assert candidate([[2, 1], [4, 3]], [1, 2, 3, 4]) == False
	assert candidate([[5, 6, 7, 8]], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
def test_check():
	check(can_choose)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,string-matching
# Metadata Coverage: 100
