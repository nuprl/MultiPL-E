from typing import List


def allCellsDistOrder(rows: int, cols: int, rCenter: int, cCenter: int) -> List[List[int]]:
    """
    You are given four integers row, cols, rCenter, and cCenter. There is a rows x cols matrix and you are on the cell with the coordinates (rCenter, cCenter).
    Return the coordinates of all cells in the matrix, sorted by their distance from (rCenter, cCenter) from the smallest distance to the largest distance. You may return the answer in any order that satisfies this condition.
    The distance between two cells (r1, c1) and (r2, c2) is |r1 - r2| + |c1 - c2|.
 
    Example 1:

    Input: rows = 1, cols = 2, rCenter = 0, cCenter = 0
    Output: [[0,0],[0,1]]
    Explanation: The distances from (0, 0) to other cells are: [0,1]

    Example 2:

    Input: rows = 2, cols = 2, rCenter = 0, cCenter = 1
    Output: [[0,1],[0,0],[1,1],[1,0]]
    Explanation: The distances from (0, 1) to other cells are: [0,1,1,2]
    The answer [[0,1],[1,1],[0,0],[1,0]] would also be accepted as correct.

    Example 3:

    Input: rows = 2, cols = 3, rCenter = 1, cCenter = 2
    Output: [[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]]
    Explanation: The distances from (1, 2) to other cells are: [0,1,1,2,2,3]
    There are other answers that would also be accepted as correct, such as [[1,2],[1,1],[0,2],[1,0],[0,1],[0,0]].

 
    Constraints:

    1 <= rows, cols <= 100
    0 <= rCenter < rows
    0 <= cCenter < cols

    """
    ### Canonical solution below ###
    coordinates = [[i, j] for i in range(rows) for j in range(cols)]

    coordinates.sort(key=lambda x: abs(x[0] - rCenter) + abs(x[1] - cCenter))

    return coordinates




### Unit tests below ###
def check(candidate):
	assert candidate(2, 2, 0, 0) == [[0, 0], [0, 1], [1, 0], [1, 1]]
	assert candidate(1, 2, 0, 0) == [[0, 0], [0, 1]]
	assert candidate(1, 1, 0, 0) == [[0, 0]]
	assert candidate(2, 1, 0, 0) == [[0, 0], [1, 0]]
	assert candidate(3, 3, 1, 1) == [[1, 1], [0, 1], [1, 0], [1, 2], [2, 1], [0, 0], [0, 2], [2, 0], [2, 2]]
	assert candidate(2, 3, 1, 2) == [[1, 2], [0, 2], [1, 1], [0, 1], [1, 0], [0, 0]]
	assert candidate(3, 3, 0, 0) == [[0, 0], [0, 1], [1, 0], [0, 2], [1, 1], [2, 0], [1, 2], [2, 1], [2, 2]]
	assert candidate(2, 3, 0, 1) == [[0, 1], [0, 0], [0, 2], [1, 1], [1, 0], [1, 2]]
def test_check():
	check(allCellsDistOrder)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,geometry,sorting,matrix
# Metadata Coverage: 100
