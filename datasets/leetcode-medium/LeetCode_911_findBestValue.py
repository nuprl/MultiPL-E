from typing import List


def findBestValue(arr: List[int], target: int) -> int:
    """
    Given an integer array arr and a target value target, return the integer value such that when we change all the integers larger than value in the given array to be equal to value, the sum of the array gets as close as possible (in absolute difference) to target.
    In case of a tie, return the minimum such integer.
    Notice that the answer is not neccesarilly a number from arr.
 
    Example 1:

    Input: arr = [4,9,3], target = 10
    Output: 3
    Explanation: When using 3 arr converts to [3, 3, 3] which sums 9 and that's the optimal answer.

    Example 2:

    Input: arr = [2,3,5], target = 10
    Output: 5

    Example 3:

    Input: arr = [60864,25176,27249,21296,20204], target = 56803
    Output: 11361

 
    Constraints:

    1 <= arr.length <= 104
    1 <= arr[i], target <= 105

    """
    ### Canonical solution below ###
    left = 0
    right = max(arr)
    result = -1
    min_diff = float('inf')

    while left <= right:
        mid = left + (right - left) // 2
        total_sum = sum(min(x, mid) for x in arr)
        if total_sum == target:
            return mid
        elif total_sum > target:
            right = mid - 1
        else:
            left = mid + 1

        if abs(target - total_sum) < min_diff or (
                abs(target - total_sum) == min_diff and mid < result):
            min_diff = abs(target - total_sum)
            result = mid

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1, 8, 5], 3) == 1
	assert candidate([2, 3, 5], 14) == 5
	assert candidate([60864, 25176, 27249, 21296, 20204], 56803) == 11361
	assert candidate([2, 3, 5], 12) == 5
	assert candidate([6], 10) == 6
	assert candidate([1547, 83230, 57084, 93444, 70879], 71237) == 17422
	assert candidate([2, 3, 5], 13) == 5
	assert candidate([4, 9, 3], 10) == 3
	assert candidate(
    [60864, 25176, 27249, 21296, 20204], 56803) == 11361
	assert candidate([4, 9, 3], 8) == 3
	assert candidate([2, 3, 5], 10) == 5
	assert candidate([2, 3, 5], 11) == 5
def test_check():
	check(findBestValue)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,sorting
# Metadata Coverage: 100
