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

    for n in arr:
        if n in freq:
            freq[n] += 1
        else:
            freq[n] = 1

    lucky = -1
    for key, value in freq.items():
        if key == value:
            lucky = max(lucky, key)

    return lucky




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 2, 3, 3, 4, 4, 4, 4]) == 4
	assert candidate([4, 4, 4, 4, 5, 5, 5, 5, 5]) == 5
	assert candidate([2, 2, 2, 3, 3, 3]) == 3
	assert candidate([2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]) == 5
	assert candidate([1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4]) == 4
	assert candidate([1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]) == 5
	assert candidate([1, 1, 2, 2, 2, 3, 3, 3, 3, 3]) == -1
	assert candidate([1]) == 1
	assert candidate([1, 2, 2, 3, 3, 3]) == 3
	assert candidate([6, 6, 6, 6, 6, 6]) == 6
	assert candidate([7, 7, 7, 7, 7, 7, 7]) == 7
	assert candidate([1, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5]) == 5
	assert candidate([2, 2, 3, 3, 3, 4, 4, 4, 4]) == 4
	assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4]) == 4
	assert candidate([5, 5, 5, 5, 5]) == 5
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3]) == -1
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3]) == -1
	assert candidate([1, 1, 1, 2, 2, 2, 4, 4, 4, 4]) == 4
	assert candidate([1, 1, 2, 2, 2, 3, 3, 3, 3]) == -1
	assert candidate([1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4]) == 4
def test_check():
	check(find_lucky)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,counting
# Metadata Coverage: 100
