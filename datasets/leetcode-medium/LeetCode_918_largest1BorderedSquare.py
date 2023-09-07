from typing import List


def largest1BorderedSquare(grid: List[List[int]]) -> int:
    """
    Given a 2D grid of 0s and 1s, return the number of elements in the largest square subgrid that has all 1s on its border, or 0 if such a subgrid doesn't exist in the grid.
 
    Example 1:

    Input: grid = [[1,1,1],[1,0,1],[1,1,1]]
    Output: 9

    Example 2:

    Input: grid = [[1,1,0,0]]
    Output: 1

 
    Constraints:

    1 <= grid.length <= 100
    1 <= grid[0].length <= 100
    grid[i][j] is 0 or 1
    """
    ### Canonical solution below ###
    m, n = len(grid), len(grid[0])
    horizontal, vertical = [[0] * n for _ in range(m)], [[0] * n for _ in range(m)]

    max_square_size = 0

    for i in range(m):
        for j in range(n):
            if grid[i][j] == 1:
                horizontal[i][j] = 1 if j == 0 else horizontal[i][j - 1] + 1
                vertical[i][j] = 1 if i == 0 else vertical[i - 1][j] + 1

                min_size = min(horizontal[i][j], vertical[i][j])
                while min_size > max_square_size:
                    if (horizontal[i - min_size + 1][j] >= min_size and
                            vertical[i][j - min_size + 1] >= min_size):
                        max_square_size = min_size
                    min_size -= 1

    return max_square_size * max_square_size




### Unit tests below ###
def check(candidate):
	assert candidate([[1]]) == 1
	assert candidate([[1, 1, 1, 1, 1], [1, 0, 0, 0, 1], [1, 0, 1, 0, 1], [1, 0, 0, 0, 1], [1, 1, 1, 1, 1]]) == 25
	assert candidate([[1, 1, 1, 1], [1, 0, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]) == 16
	assert candidate([[1, 1, 1], [1, 0, 1], [1, 1, 1], [1, 0, 1], [1, 1, 1]]) == 9
	assert candidate([[1, 0, 0], [0, 1, 0], [0, 0, 1]]) == 1
	assert candidate(
    [[0, 0, 1, 0, 0, 0, 1, 0], [1, 1, 1, 1, 1, 1, 1, 0], [0, 0, 1, 1, 1, 1, 1, 0], [0, 1, 1, 1, 1, 1, 1, 1],
     [0, 1, 1, 1, 1, 0, 1, 1], [0, 1, 1, 0, 1, 1, 1, 1], [0, 1, 1, 1, 1, 1, 1, 1], [0, 0, 1, 1, 1, 1, 1, 0]]) == 25
	assert candidate([[1, 0, 1], [0, 1, 0], [1, 0, 1]]) == 1
	assert candidate([[1, 0, 1], [1, 1, 1], [1, 0, 1]]) == 1
	assert candidate([[1, 1, 1, 0, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]]) == 16
	assert candidate([[1, 1, 1], [1, 0, 1], [1, 1, 1]]) == 9
	assert candidate([[1, 1, 1, 1, 1], [1, 1, 0, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]]) == 25
	assert candidate([[0]]) == 0
	assert candidate([[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]) == 16
	assert candidate([[1, 1, 1, 1], [1, 0, 1, 0], [1, 1, 1, 1]]) == 9
	assert candidate([[1, 1, 0], [1, 0, 1], [1, 1, 1]]) == 1
	assert candidate(
    [[1, 0, 0, 0, 1, 0], [0, 1, 1, 1, 1, 0], [0, 1, 0, 1, 1, 0], [1, 1, 1, 1, 1, 1], [0, 0, 0, 1, 0, 1]]) == 9
def test_check():
	check(largest1BorderedSquare)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,matrix
# Metadata Coverage: 100
