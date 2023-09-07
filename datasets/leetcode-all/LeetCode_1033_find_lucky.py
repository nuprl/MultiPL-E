from typing import List


def find_lucky(arr: List[int]) -> int:
    """
    Given an array of integers arr, a lucky integer is an integer that has a frequency in the array equal to its value.
    Return the largest lucky integer in the array. If there is no lucky integer return -1.
 
    Example 1:

    Input: arr = [2,2,3,4]
    Output: 2
    Explanation: The only lucky number in the array is 2 because frequency[2] == 2.

    Example 2:

    Input: arr = [1,2,2,3,3,3]
    Output: 3
    Explanation: 1, 2 and 3 are all lucky numbers, return the largest of them.

    Example 3:

    Input: arr = [2,2,2,3,3]
    Output: -1
    Explanation: There are no lucky numbers in the array.

 
    Constraints:

    1 <= arr.length <= 500
    1 <= arr[i] <= 500

    """
    ### Canonical solution below ###
    freq = {}
    for num in arr:
        freq[num] = freq.get(num, 0) + 1
    max_lucky = -1
    for num, count in freq.items():
        if num == count:
            max_lucky = max(max_lucky, num)
    return max_lucky




### Unit tests below ###
def check(candidate):
	assert candidate([9,9,9,9,9,9,9,9,9]) == 9
	assert candidate([2,2,3,4]) == 2
	assert candidate([8,8,8,8,8,8,8,8]) == 8
	assert candidate(range(1, 115)) == 1
	assert candidate(range(1, 109)) == 1
	assert candidate(range(1, 111)) == 1
	assert candidate(range(1, 117)) == 1
	assert candidate([6,6,6,6,6,6]) == 6
	assert candidate(range(1, 118)) == 1
	assert candidate([7,7,7,7,7,7,7]) == 7
	assert candidate(range(1000)) == 1
	assert candidate(range(1, 116)) == 1
	assert candidate(range(1, 200)) == 1
	assert candidate([1,2,2,3,3,3]) == 3
	assert candidate(range(1, 105)) == 1
	assert candidate([1,1,1,2,2,2,2,3,3,3,3,3]) == -1
	assert candidate(range(10000)) == 1
	assert candidate(range(1, 112)) == 1
	assert candidate(range(1, 100)) == 1
	assert candidate(range(1, 104)) == 1
	assert candidate([1]) == 1
	assert candidate(range(1, 103)) == 1
	assert candidate([2]) == -1
	assert candidate(range(1, 107)) == 1
	assert candidate([1,2,3,4,5,6]) == 1
	assert candidate(range(1, 11)) == 1
	assert candidate(range(1, 114)) == 1
	assert candidate(range(1, 106)) == 1
	assert candidate(range(1, 110)) == 1
	assert candidate([500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,501]) == -1
	assert candidate([2,2,2,3,3]) == -1
	assert candidate(range(1, 102)) == 1
	assert candidate(range(1, 113)) == 1
	assert candidate(range(1, 108)) == 1
	assert candidate([2,2,3,3,4,4,4,4]) == 4
	assert candidate([10,10,10,10,10,10,10,10,10,10]) == 10
	assert candidate([1,1,2,2,2,3,3,3,3,4,4,4,4,4]) == -1
	assert candidate(range(1, 119)) == 1
	assert candidate([500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500]) == -1
	assert candidate([1,1,2,3,3,3]) == 3
def test_check():
	check(find_lucky)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,counting
# Metadata Coverage: 100
