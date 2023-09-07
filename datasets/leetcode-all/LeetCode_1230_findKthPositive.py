from typing import List


def findKthPositive(arr: List[int], k: int) -> int:
    """
    Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.
    Return the kth positive integer that is missing from this array.
 
    Example 1:

    Input: arr = [2,3,4,7,11], k = 5
    Output: 9
    Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.

    Example 2:

    Input: arr = [1,2,3,4], k = 2
    Output: 6
    Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.

 
    Constraints:

    1 <= arr.length <= 1000
    1 <= arr[i] <= 1000
    1 <= k <= 1000
    arr[i] < arr[j] for 1 <= i < j <= arr.length

 
    Follow up:
    Could you solve this problem in less than O(n) complexity?
    """
    ### Canonical solution below ###
    i, num = 0, 1
    while k > 0:
        if i < len(arr) and arr[i] == num:
            i += 1
        else:
            k -= 1
        num += 1
    return num - 1




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 5], 1) == 4
	assert candidate([2, 3, 4, 7, 11], 5) == 9
	assert candidate([1, 2, 4, 6, 10], 4) == 8
	assert candidate([3, 6, 9, 12], 9) == 13
	assert candidate([1, 2, 3, 4], 25) == 29
	assert candidate([2, 3, 4, 7, 11], 1) == 1
	assert candidate([1], 1) == 2
	assert candidate([1, 2, 4, 6, 10], 5) == 9
	assert candidate([1, 2, 4, 6, 10], 6) == 11
	assert candidate([1, 2, 5, 9, 11], 10) == 15
	assert candidate([1, 2, 3, 5], 20) == 24
	assert candidate([3, 6, 9, 12], 12) == 16
	assert candidate([1, 2, 4, 6, 10], 8) == 13
	assert candidate([1, 2, 3, 5], 30) == 34
	assert candidate([2, 4, 6, 8], 15) == 19
	assert candidate([2, 4, 6, 8], 35) == 39
	assert candidate([], 1) == 1
	assert candidate([2, 5, 8, 11], 6) == 9
	assert candidate([1, 2, 3, 5], 0) == 0
	assert candidate([1, 2], 1) == 3
	assert candidate([1, 2, 4, 6, 10], 7) == 12
	assert candidate([2, 5, 8, 11], 3) == 4
	assert candidate([1, 2, 3, 4], 2) == 6
	assert candidate([1, 2, 3, 4], 10) == 14
	assert candidate([2, 4, 6, 8], 2) == 3
def test_check():
	check(findKthPositive)
# Metadata Difficulty: Easy
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
