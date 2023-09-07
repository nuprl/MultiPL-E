from typing import List


def unique_occurrences(arr: List[int]) -> bool:
    """
    Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.
 
    Example 1:

    Input: arr = [1,2,2,1,1,3]
    Output: true
    Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
    Example 2:

    Input: arr = [1,2]
    Output: false

    Example 3:

    Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
    Output: true

 
    Constraints:

    1 <= arr.length <= 1000
    -1000 <= arr[i] <= 1000

    """
    ### Canonical solution below ###
    counts = {}
    for num in arr:
        counts[num] = counts.get(num, 0) + 1

    unique_counts = set()
    for count in counts.values():
        if count in unique_counts:
            return False
        unique_counts.add(count)

    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5]) == False
	assert candidate([1, 2, 2, 1, 1, 3]) == True
	assert candidate([1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9, 10]) == False
	assert candidate([1, 1, 2, 2, 2, 3, 3, 3, 3]) == True
	assert candidate([-3, 0, 1, -3, 1, 1, 1, -3, 10]) == False
	assert candidate([-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]) == True
	assert candidate(
    [1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 10, 20, 20, 20, 20, 20, 20]) == False
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7,
     7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 12]) == False
	assert candidate(
    [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]) == True
	assert candidate([1, 2]) == False
	assert candidate(
    [1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]) == False
	assert candidate(
    [0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9]) == False
	assert candidate([1]) == True
	assert candidate([1, 2, 3, 3, 4, 4, 4, 5, 5, 5, 5]) == False
	assert candidate([0, 1, 1, 0, 1, 1, 0, 1, 1, 0]) == True
	assert candidate([1, 1, 1, 2, 2, 2, 2, 2]) == True
	assert candidate([1, 2, 3, 4, 5, 5, 5, 6, 6, 6]) == False
def test_check():
	check(unique_occurrences)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
