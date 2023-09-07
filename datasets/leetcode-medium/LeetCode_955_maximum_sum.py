from typing import List


def maximum_sum(arr: List[int]) -> int:
    """
    Given an array of integers, return the maximum sum for a non-empty subarray (contiguous elements) with at most one element deletion. In other words, you want to choose a subarray and optionally delete one element from it so that there is still at least one element left and the sum of the remaining elements is maximum possible.
    Note that the subarray needs to be non-empty after deleting one element.
 
    Example 1:

    Input: arr = [1,-2,0,3]
    Output: 4
    Explanation: Because we can choose [1, -2, 0, 3] and drop -2, thus the subarray [1, 0, 3] becomes the maximum value.
    Example 2:

    Input: arr = [1,-2,-2,3]
    Output: 3
    Explanation: We just choose [3] and it's the maximum sum.

    Example 3:

    Input: arr = [-1,-1,-1,-1]
    Output: -1
    Explanation: The final subarray needs to be non-empty. You can't choose [-1] and delete -1 from it, then get an empty subarray to make the sum equals to 0.

 
    Constraints:

    1 <= arr.length <= 105
    -104 <= arr[i] <= 104

    """
    ### Canonical solution below ###
    n = len(arr)
    sum_without_deletion = [0] * n
    sum_with_deletion = [0] * n
    sum_without_deletion[0] = arr[0]
    sum_with_deletion[0] = 0
    max_sum = arr[0]

    for i in range(1, n):
        sum_without_deletion[i] = max(arr[i], sum_without_deletion[i - 1] + arr[i])
        sum_with_deletion[i] = max(sum_with_deletion[i - 1] + arr[i], sum_without_deletion[i - 1])
        max_sum = max(max_sum, max(sum_without_deletion[i], sum_with_deletion[i]))
    return max_sum




### Unit tests below ###
def check(candidate):
	assert candidate([5, -3, 5]) == 10
	assert candidate([-1, 0, 1, 0, -1]) == 1
	assert candidate([1, 2, 3, 4, 5]) == 15
	assert candidate([1, 2, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10]) == 3
	assert candidate([-1, -2, -3, -4, -5]) == -1
	assert candidate([1, 1, 1, 1, -10]) == 4
	assert candidate([-100, -200, -300, -400, -500]) == -100
	assert candidate(
    [1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16, -17, -18, -19, -20, -21, -22, -23, -24, -25]) == 1
	assert candidate([0, 0, 0, 0, 0, 0]) == 0
	assert candidate([-1, -2, -3, -4, -5, 6]) == 6
	assert candidate([1, -2, -3, -4]) == 1
def test_check():
	check(maximum_sum)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
