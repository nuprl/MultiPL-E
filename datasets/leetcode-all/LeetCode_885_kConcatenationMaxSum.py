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
    mod = 10**9 + 7
    n = len(arr)
    max_sum, max_left, max_right = 0, 0, 0
    total_sum = sum(arr)
    temp_sum = 0

    for i in range(n):
        temp_sum += arr[i]
        max_sum = max(max_sum, temp_sum)
        temp_sum = max(0, temp_sum)
        max_left = max(max_left, temp_sum)

    temp = total_sum
    for i in range(n - 1, -1, -1):
        temp -= arr[i]
        max_right = max(max_right, temp)

    ans = max(max_sum, max_left + max_right + total_sum * (k - 2), 0)
    return ans % mod




### Unit tests below ###
def check(candidate):
	assert candidate([-1,-1,-1], 5) == 0
	assert candidate([-5,4,-3,2,-1], 2) == 4
	assert candidate([5,4,3,2,1], 1) == 15
	assert candidate([0,0,0], 100000) == 0
	assert candidate([-1,-2], 7) == 0
	assert candidate([1,2,3,4,5], 1) == 15
	assert candidate([-10000,10000,-10000,10000,-10000], 100000) == 10000
	assert candidate([5,-2,4,3], 1) == 10
	assert candidate([5, -3, 8], 1) == 10
	assert candidate([1,2], 1) == 3
	assert candidate([1,1,1], 1) == 3
	assert candidate([3,2,1], 1) == 6
	assert candidate([1,-2,1], 5) == 2
def test_check():
	check(kConcatenationMaxSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
