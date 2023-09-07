from typing import List


def generate(numRows: int) -> List[List[int]]:
    """
    Given an integer numRows, return the first numRows of Pascal's triangle.
    In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

 
    Example 1:
    Input: numRows = 5
    Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
    Example 2:
    Input: numRows = 1
    Output: [[1]]

 
    Constraints:

    1 <= numRows <= 30

    """
    ### Canonical solution below ###
    pascalsTriangle = []
    for i in range(numRows):
        row = [1]
        if i > 0:
            for j in range(1, i):
                row.append(pascalsTriangle[i-1][j-1] + pascalsTriangle[i-1][j])
            row.append(1)
        pascalsTriangle.append(row)
    return pascalsTriangle




### Unit tests below ###
def check(candidate):
	assert candidate(6) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1]]
	assert candidate(4) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
	assert candidate(1) == [[1]]
	assert candidate(2) == [[1], [1, 1]]
	assert candidate(3) == [[1], [1, 1], [1, 2, 1]]
	assert candidate(0) == []
	assert candidate(7) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1]]
	assert candidate(5) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
	assert candidate(8) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1]]
	assert candidate(9) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1], [1, 8, 28, 56, 70, 56, 28, 8, 1]]
def test_check():
	check(generate)
# Metadata Difficulty: Easy
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
