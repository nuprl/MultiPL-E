from typing import List


def is_covered(ranges: List[List[int]], left: int, right: int) -> bool:
    """
    You are given a 2D integer array ranges and two integers left and right. Each ranges[i] = [starti, endi] represents an inclusive interval between starti and endi.
    Return true if each integer in the inclusive range [left, right] is covered by at least one interval in ranges. Return false otherwise.
    An integer x is covered by an interval ranges[i] = [starti, endi] if starti <= x <= endi.
 
    Example 1:

    Input: ranges = [[1,2],[3,4],[5,6]], left = 2, right = 5
    Output: true
    Explanation: Every integer between 2 and 5 is covered:
    - 2 is covered by the first range.
    - 3 and 4 are covered by the second range.
    - 5 is covered by the third range.

    Example 2:

    Input: ranges = [[1,10],[10,20]], left = 21, right = 21
    Output: false
    Explanation: 21 is not covered by any range.

 
    Constraints:

    1 <= ranges.length <= 50
    1 <= starti <= endi <= 50
    1 <= left <= right <= 50

    """
    ### Canonical solution below ###
    for i in range(left, right + 1):
        is_covered = False
        for range_ in ranges:
            if i >= range_[0] and i <= range_[1]:
                is_covered = True
                break
        if not is_covered:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 5], [6, 10], [12, 15]], 1, 15) == False
	assert candidate([[1, 5], [6, 10], [12, 20]], 1, 20) == False
	assert candidate([[1, 10], [11, 20], [21, 30], [31, 40], [41, 50]], 1, 50) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 12, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 15]], 1, 15) == True
	assert candidate([[1, 3], [2, 4]], 1, 4) == True
	assert candidate([[1, 5], [6, 10], [11, 15]], 10, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 10, 21) == False
	assert candidate([[1, 10]], 5, 11) == False
	assert candidate([[1, 1]], 1, 2) == False
	assert candidate([[5, 10]], 1, 5) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 10, 25) == False
	assert candidate([[1, 3], [5, 7]], 5, 7) == True
	assert candidate([[1, 1]], 1, 1) == True
	assert candidate([[1, 10], [11, 20]], 1, 10) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 11, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 25, 30) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 11, 25) == False
	assert candidate([[5, 10]], 6, 10) == True
	assert candidate([[1, 3], [5, 7]], 1, 7) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 17, 21) == False
	assert candidate([[1, 10], [20, 30]], 1, 21) == False
	assert candidate([[1, 5], [6, 10]], 6, 10) == True
	assert candidate([[5, 10]], 1, 10) == False
	assert candidate([[1, 10], [11, 20]], 1, 1) == True
	assert candidate([[1, 10], [11, 20]], 1, 20) == True
	assert candidate([[1, 5], [7, 10]], 1, 10) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 1, 25) == False
	assert candidate([[5, 10]], 5, 10) == True
	assert candidate([[1, 10], [10, 20]], 1, 20) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 18, 21) == False
	assert candidate([[1, 5]], 1, 5) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 1, 20) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 25, 25) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 14, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 15, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 20, 21) == False
	assert candidate([[1, 5], [6, 10]], 1, 10) == True
	assert candidate([[1, 3], [5, 10], [11, 15]], 1, 15) == False
	assert candidate([[1, 10], [11, 20]], 1, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 10, 20) == True
	assert candidate([[1, 5]], 1, 6) == False
	assert candidate([[5, 10]], 6, 11) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 1, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 13, 21) == False
	assert candidate([[1, 10]], 5, 10) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 1, 5) == True
	assert candidate([[1, 5], [6, 10], [11, 20]], 16, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 19, 21) == False
	assert candidate([[1, 5], [6, 10], [11, 20]], 11, 15) == True
	assert candidate([[1, 5],[10,15]], 5, 10) == False
def test_check():
	check(is_covered)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,prefix-sum
# Metadata Coverage: 100
