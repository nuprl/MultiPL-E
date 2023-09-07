from typing import List


def check_arithmetic_subarrays(nums: List[int], l: List[int], r: List[int]) -> List[bool]:
    """
    A sequence of numbers is called arithmetic if it consists of at least two elements, and the difference between every two consecutive elements is the same. More formally, a sequence s is arithmetic if and only if s[i+1] - s[i] == s[1] - s[0] for all valid i.
    For example, these are arithmetic sequences:

    1, 3, 5, 7, 9
    7, 7, 7, 7
    3, -1, -5, -9
    The following sequence is not arithmetic:

    1, 1, 2, 5, 7
    You are given an array of n integers, nums, and two arrays of m integers each, l and r, representing the m range queries, where the ith query is the range [l[i], r[i]]. All the arrays are 0-indexed.
    Return a list of boolean elements answer, where answer[i] is true if the subarray nums[l[i]], nums[l[i]+1], ... , nums[r[i]] can be rearranged to form an arithmetic sequence, and false otherwise.
 
    Example 1:

    Input: nums = [4,6,5,9,3,7], l = [0,0,2], r = [2,3,5]
    Output: [true,false,true]
    Explanation:
    In the 0th query, the subarray is [4,6,5]. This can be rearranged as [6,5,4], which is an arithmetic sequence.
    In the 1st query, the subarray is [4,6,5,9]. This cannot be rearranged as an arithmetic sequence.
    In the 2nd query, the subarray is [5,9,3,7]. This can be rearranged as [3,5,7,9], which is an arithmetic sequence.
    Example 2:

    Input: nums = [-12,-9,-3,-12,-6,15,20,-25,-20,-15,-10], l = [0,1,6,4,8,7], r = [4,4,9,7,9,10]
    Output: [false,true,false,false,true,true]

 
    Constraints:

    n == nums.length
    m == l.length
    m == r.length
    2 <= n <= 500
    1 <= m <= 500
    0 <= l[i] < r[i] < n
    -105 <= nums[i] <= 105

    """
    ### Canonical solution below ###
    results = []
    for i in range(len(l)):
        subarray = sorted(nums[l[i]:r[i] + 1])
        is_arithmetic = True
        diff = subarray[1] - subarray[0]
        for j in range(1, len(subarray) - 1):
            if subarray[j + 1] - subarray[j] != diff:
                is_arithmetic = False
                break
        results.append(is_arithmetic)
    return results




### Unit tests below ###
def check(candidate):
	assert candidate([4,6,5,9,3,7], [0,0,2], [2,3,5]) == [True, False, True]
	assert candidate([1,2,3,4,5,6,7,8,9,10], [0, 1, 2, 3, 4, 5, 6, 7, 8], [1, 2, 3, 4, 5, 6, 7, 8, 9]) == [True, True, True, True, True, True, True, True, True]
	assert candidate([1,2,3,4], [0, 0], [1, 1]) == [True, True]
	assert candidate([4,6,5,9,3,7], [0, 0, 2], [2, 3, 5]) == [True, False, True]
	assert candidate([1,2,3,4,5,6], [0, 1, 2, 3, 4], [1, 2, 3, 4, 5]) == [True, True, True, True, True]
	assert candidate([1,2,3], [0], [2]) == [True]
	assert candidate([1,2,3,4], [0, 0], [1, 2]) == [True, True]
	assert candidate([3,4,5,1,2], [0, 1], [2, 4]) == [True, False]
	assert candidate([1,2,3,4], [0, 2], [1, 3]) == [True, True]
	assert candidate([7,6,5,4,3], [0], [4]) == [True]
	assert candidate([1,1,2,2,3,3], [0, 1, 2, 3, 4], [1, 2, 3, 4, 5]) == [True, True, True, True, True]
	assert candidate([-12,-9,-3,-12,-6,15,20,-25,-20,-15,-10], [0,1,6,4,8,7], [4,4,9,7,9,10]) == [False, True, False, False, True, True]
def test_check():
	check(check_arithmetic_subarrays)
# Metadata Difficulty: Medium
# Metadata Topics: array,sorting
# Metadata Coverage: 100
