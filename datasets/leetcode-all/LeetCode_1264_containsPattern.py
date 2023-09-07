from typing import List


def containsPattern(arr: List[int], m: int, k: int) -> bool:
    """
    Given an array of positive integers arr, find a pattern of length m that is repeated k or more times.
    A pattern is a subarray (consecutive sub-sequence) that consists of one or more values, repeated multiple times consecutively without overlapping. A pattern is defined by its length and the number of repetitions.
    Return true if there exists a pattern of length m that is repeated k or more times, otherwise return false.
 
    Example 1:

    Input: arr = [1,2,4,4,4,4], m = 1, k = 3
    Output: true
    Explanation: The pattern (4) of length 1 is repeated 4 consecutive times. Notice that pattern can be repeated k or more times but not less.

    Example 2:

    Input: arr = [1,2,1,2,1,1,1,3], m = 2, k = 2
    Output: true
    Explanation: The pattern (1,2) of length 2 is repeated 2 consecutive times. Another valid pattern (2,1) is also repeated 2 times.

    Example 3:

    Input: arr = [1,2,1,2,1,3], m = 2, k = 3
    Output: false
    Explanation: The pattern (1,2) is of length 2 but is repeated only 2 times. There is no pattern of length 2 that is repeated 3 or more times.

 
    Constraints:

    2 <= arr.length <= 100
    1 <= arr[i] <= 100
    1 <= m <= 100
    2 <= k <= 100

    """
    ### Canonical solution below ###
    n = len(arr)
    if m * k > n:
        return False

    for i in range(n - m * k + 1):
        patternFound = True
        for j in range(m):
            for l in range(1, k):
                if arr[i + j] != arr[i + j + l * m]:
                    patternFound = False
                    break
            if not patternFound:
                break
        if patternFound:
            return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 1) == True
	assert candidate(
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 2) == True
	assert candidate([1, 2, 4, 4, 4, 4], 4, 2) == False
	assert candidate([1, 2, 3, 1, 2, 3, 1, 2, 3], 3, 3) == True
	assert candidate([1, 2, 3, 1, 2, 3, 1, 1, 1, 1], 3, 2) == True
	assert candidate([1, 2, 1, 2, 3, 2, 1, 2], 1, 6) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0], 10, 2) == True
	assert candidate([1, 2, 3, 1, 2], 2, 2) == False
	assert candidate([1, 2, 4, 4, 4, 4], 3, 2) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 10) == True
	assert candidate([1, 2, 4, 4, 4, 4], 1, 6) == False
	assert candidate([1, 2, 1, 2, 1, 2, 1, 2], 2, 4) == True
	assert candidate([1, 2, 1, 2, 1, 3, 2, 1, 2, 1, 2, 3, 2, 1], 2, 5) == False
	assert candidate(
    [1, 2, 3, 1, 1, 2, 3, 1, 1, 2, 3], 3, 4) == False
	assert candidate([1, 1, 2, 2, 3, 3, 1, 1, 2, 2], 2, 5) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], 11, 1) == False
	assert candidate([1, 2, 1, 2, 3, 2, 1, 2], 2, 4) == False
	assert candidate([1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3], 3, 4) == False
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], 10, 1) == True
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 11) == True
	assert candidate([1, 2, 3, 1, 2, 3, 1, 2], 3, 2) == True
	assert candidate([1, 2, 1, 2, 1, 3, 2, 1, 2, 4, 5, 6, 7, 8], 2, 4) == False
def test_check():
	check(containsPattern)
# Metadata Difficulty: Easy
# Metadata Topics: array,enumeration
# Metadata Coverage: 100
