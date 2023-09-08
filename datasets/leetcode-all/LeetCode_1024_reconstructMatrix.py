from typing import List


def reconstructMatrix(upper: int, lower: int, colsum: List[int]) -> List[List[int]]:
    """
    Given the following details of a matrix with n columns and 2 rows :

    The matrix is a binary matrix, which means each element in the matrix can be 0 or 1.
    The sum of elements of the 0-th(upper) row is given as upper.
    The sum of elements of the 1-st(lower) row is given as lower.
    The sum of elements in the i-th column(0-indexed) is colsum[i], where colsum is given as an integer array with length n.

    Your task is to reconstruct the matrix with upper, lower and colsum.
    Return it as a 2-D integer array.
    If there are more than one valid solution, any of them will be accepted.
    If no valid solution exists, return an empty 2-D array.
 
    Example 1:

    Input: upper = 2, lower = 1, colsum = [1,1,1]
    Output: [[1,1,0],[0,0,1]]
    Explanation: [[1,0,1],[0,1,0]], and [[0,1,1],[1,0,0]] are also correct answers.

    Example 2:

    Input: upper = 2, lower = 3, colsum = [2,2,1,1]
    Output: []

    Example 3:

    Input: upper = 5, lower = 5, colsum = [2,1,2,0,1,0,1,2,0,1]
    Output: [[1,1,1,0,1,0,0,1,0,0],[1,0,1,0,0,0,1,1,0,1]]

 
    Constraints:

    1 <= colsum.length <= 10^5
    0 <= upper, lower <= colsum.length
    0 <= colsum[i] <= 2

    """
    ### Canonical solution below ###
    result = [[0] * len(colsum) for _ in range(2)]

    for i in range(len(colsum)):
        if colsum[i] == 2:
            result[0][i] = 1
            result[1][i] = 1
            upper -= 1
            lower -= 1
        elif colsum[i] == 1:
            if upper > lower:
                result[0][i] = 1
                upper -= 1
            else:
                result[1][i] = 1
                lower -= 1

        if upper < 0 or lower < 0:
            return []

    if upper > 0 or lower > 0:
        return []

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(4, 4, [2, 2, 2, 2]) == [[1, 1, 1, 1], [1, 1, 1, 1]]
	assert candidate(3, 4, [1, 1, 1, 1, 1]) == []
	assert candidate(2, 2, [1, 1, 0]) == []
	assert candidate(1, 3, [0, 2, 1]) == []
	assert candidate(0, 3, [1, 1, 1, 1]) == []
	assert candidate(0, 2, [0, 0, 0]) == []
	assert candidate(3, 4, [4, 0, 0]) == []
	assert candidate(3, 4, [2, 2, 2, 2]) == []
	assert candidate(0, 2, [0]) == []
	assert candidate(4, 0, [2, 2, 2, 2]) == []
	assert candidate(5, 0, [2, 2, 2, 2, 2]) == []
	assert candidate(2, 5, [1, 1, 0]) == []
	assert candidate(2, 2, [1, 1, 1]) == []
	assert candidate(2, 4, [1, 1, 1, 1, 1]) == []
	assert candidate(2, 1, [2]) == []
	assert candidate(5, 4, [3, 2, 2, 2]) == []
	assert candidate(1, 3, [2, 1, 1]) == [[1, 0, 0], [1, 1, 1]]
	assert candidate(2, 0, [1, 1, 1]) == []
	assert candidate(1, 2, [0, 1]) == []
	assert candidate(2, 3, [1, 0, 1]) == []
	assert candidate(0, 0, [0, 0]) == [[0, 0], [0, 0]]
	assert candidate(2, 3, [2, 2, 1]) == [[1, 1, 0], [1, 1, 1]]
	assert candidate(0, 2, [0, 0]) == []
	assert candidate(2, 1, [2, 1]) == [[1, 1], [1, 0]]
	assert candidate(1, 0, [0]) == []
	assert candidate(2, 2, [2, 2]) == [[1, 1], [1, 1]]
	assert candidate(2, 2, [2, 0, 2]) == [[1, 0, 1], [1, 0, 1]]
	assert candidate(3, 4, [2, 1, 1, 1]) == []
	assert candidate(0, 0, [0, 0, 0, 0]) == [[0, 0, 0, 0], [0, 0, 0, 0]]
	assert candidate(3, 1, [2, 1, 1]) == [[1, 1, 1], [1, 0, 0]]
	assert candidate(3, 2, [2, 1, 1]) == []
	assert candidate(3, 1, [1, 0, 1]) == []
	assert candidate(3, 2, [2, 0, 2]) == []
	assert candidate(3, 3, [3, 3, 3]) == []
	assert candidate(3, 3, [2, 1, 1]) == []
def test_check():
	check(reconstructMatrix)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,matrix
# Metadata Coverage: 100
