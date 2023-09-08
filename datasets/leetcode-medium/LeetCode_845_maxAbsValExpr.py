from typing import List


def maxAbsValExpr(arr1: List[int], arr2: List[int]) -> int:
    """
    Given two arrays of integers with equal lengths, return the maximum value of:
    |arr1[i] - arr1[j]| + |arr2[i] - arr2[j]| + |i - j|
    where the maximum is taken over all 0 <= i, j < arr1.length.
 
    Example 1:

    Input: arr1 = [1,2,3,4], arr2 = [-1,4,5,6]
    Output: 13

    Example 2:

    Input: arr1 = [1,-2,-5,0,10], arr2 = [0,-2,-1,-7,-4]
    Output: 20

 
    Constraints:

    2 <= arr1.length == arr2.length <= 40000
    -10^6 <= arr1[i], arr2[i] <= 10^6

    """
    ### Canonical solution below ###
    result = 0
    max_sum = [float('-inf')] * 4

    for i in range(len(arr1)):
        max_sum[0] = max(max_sum[0], arr1[i] + arr2[i] + i)
        max_sum[1] = max(max_sum[1], arr1[i] - arr2[i] + i)
        max_sum[2] = max(max_sum[2], -arr1[i] + arr2[i] + i)
        max_sum[3] = max(max_sum[3], -arr1[i] - arr2[i] + i)

    for i in range(len(arr1)):
        result = max(result, max_sum[0] - arr1[i] - arr2[i] - i)
        result = max(result, max_sum[1] - arr1[i] + arr2[i] - i)
        result = max(result, max_sum[2] + arr1[i] - arr2[i] - i)
        result = max(result, max_sum[3] + arr1[i] + arr2[i] - i)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,-1], [0,1,-1]) == 5
	assert candidate([-1,-2,-3], [-3,-2,-1]) == 6
	assert candidate([1,-2,-5,0,10], [0,-2,-1,-7,-4]) == 20
	assert candidate([1,2,3,4], [-1,4,5,6]) == 13
	assert candidate([-1,0,1], [-1,0,1]) == 6
	assert candidate([1,2], [2,1]) == 3
	assert candidate([1,2,3], [3,2,1]) == 6
def test_check():
	check(maxAbsValExpr)
# Metadata Difficulty: Medium
# Metadata Topics: array,math
# Metadata Coverage: 100
