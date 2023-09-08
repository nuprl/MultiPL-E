from typing import List


def min_sum_of_lengths(arr: List[int], target: int) -> int:
    """
    You are given an array of integers arr and an integer target.
    You have to find two non-overlapping sub-arrays of arr each with a sum equal target. There can be multiple answers so you have to find an answer where the sum of the lengths of the two sub-arrays is minimum.
    Return the minimum sum of the lengths of the two required sub-arrays, or return -1 if you cannot find such two sub-arrays.
 
    Example 1:

    Input: arr = [3,2,2,4,3], target = 3
    Output: 2
    Explanation: Only two sub-arrays have sum = 3 ([3] and [3]). The sum of their lengths is 2.

    Example 2:

    Input: arr = [7,3,4,7], target = 7
    Output: 2
    Explanation: Although we have three non-overlapping sub-arrays of sum = 7 ([7], [3,4] and [7]), but we will choose the first and third sub-arrays as the sum of their lengths is 2.

    Example 3:

    Input: arr = [4,3,2,6,2,3,4], target = 6
    Output: -1
    Explanation: We have only one sub-array of sum = 6.

 
    Constraints:

    1 <= arr.length <= 105
    1 <= arr[i] <= 1000
    1 <= target <= 108

    """
    ### Canonical solution below ###
    n = len(arr)
    sum_, min_len, result = 0, float('inf'), float('inf')
    mp = {0: -1}

    for i in range(n):
        sum_ += arr[i]
        if sum_ >= target and (sum_ - target) in mp:
            if mp[sum_ - target] > -1 and min_len != float('inf'):
                result = min(result, i - mp[sum_ - target] + min_len)
            min_len = min(min_len, i - mp[sum_ - target])
        mp[sum_] = i

    return result if result != float('inf') else -1




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], 15) == -1
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 93) == -1
	assert candidate(
    [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 93
) == -1
	assert candidate([10, 10, 10, 10, 10, 10], 29) == -1
	assert candidate([3, 2, 2, 4, 3], 3) == 2
	assert candidate([7, 3, 4, 7], 15) == -1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 42) == -1
	assert candidate([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 49) == -1
	assert candidate([4, 3, 2, 6, 2, 3, 4], 6) == -1
	assert candidate([7, 3, 4, 7], 7) == 2
def test_check():
	check(min_sum_of_lengths)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,binary-search,dynamic-programming,sliding-window
# Metadata Coverage: 100
