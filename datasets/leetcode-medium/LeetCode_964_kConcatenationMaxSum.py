from typing import List


def kConcatenationMaxSum(arr: List[int], k: int) -> int:
    """
    Given an integer array arr and an integer k, modify the array by repeating it k times.
    For example, if arr = [1, 2] and k = 3 then the modified array will be [1, 2, 1, 2, 1, 2].
    Return the maximum sub-array sum in the modified array. Note that the length of the sub-array can be 0 and its sum in that case is 0.
    As the answer can be very large, return the answer modulo 109 + 7.
 
    Example 1:

    Input: arr = [1,2], k = 3
    Output: 9

    Example 2:

    Input: arr = [1,-2,1], k = 5
    Output: 2

    Example 3:

    Input: arr = [-1,-2], k = 7
    Output: 0

 
    Constraints:

    1 <= arr.length <= 105
    1 <= k <= 105
    -104 <= arr[i] <= 104

    """
    ### Canonical solution below ###
    M = 10**9 + 7
    s = sum(arr)
    max_sum = max_ending_here = 0
    for i in range(len(arr) * min(2, k)):
        max_ending_here = max(arr[i % len(arr)], max_ending_here + arr[i % len(arr)])
        max_sum = max(max_sum, max_ending_here)
    return 0 if k == 1 else (((max_sum - max_ending_here) % M) * (k - 2) % M + max_ending_here) % M




### Unit tests below ###
def check(candidate):
	assert candidate( [-2, -5], 3) == 0
	assert candidate([-1], 1) == 0
	assert candidate([1,-2,1], 3) == 2
	assert candidate( [0, -2, -5, 0], 3) == 0
	assert candidate([1,2,3,4,5,6,7,8,9,10], 2) == 110
	assert candidate([-100000], 3) == 0
	assert candidate([1,-1,-1], 3) == 1
	assert candidate( [-2, -5, 0], 3) == 0
	assert candidate( [1, 2, 3], 3) == 12
	assert candidate([-4, -2, 0, 1, 3, -2], 4) == 6
	assert candidate([-4, -2, 0, 1, 3, -2], 5) == 8
def test_check():
	check(kConcatenationMaxSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
