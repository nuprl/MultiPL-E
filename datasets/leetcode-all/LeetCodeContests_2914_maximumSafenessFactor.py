from typing import List

def maximumSafenessFactor(grid: List[List[int]]) -> int:
    """
    You are given a 0-indexed 2D matrix grid of size n x n, where (r, c) represents:
    
     * A cell containing a thief if grid[r][c] = 1
     * An empty cell if grid[r][c] = 0
    
    You are initially positioned at cell (0, 0). In one move, you can move to any adjacent cell in the grid, including cells containing thieves.
    
    The safeness factor of a path on the grid is defined as the minimum manhattan distance from any cell in the path to any thief in the grid.
    
    Return the maximum safeness factor of all paths leading to cell (n - 1, n - 1).
    
    An adjacent cell of cell (r, c), is one of the cells (r, c + 1), (r, c - 1), (r + 1, c) and (r - 1, c) if it exists.
    
    The Manhattan distance between two cells (a, b) and (x, y) is equal to |a - x| + |b - y|, where |val| denotes the absolute value of val.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/07/02/example1.png]
    
    Input: grid = [[1,0,0],[0,0,0],[0,0,1]]
    Output: 0
    Explanation: All paths from (0, 0) to (n - 1, n - 1) go through the thieves in cells (0, 0) and (n - 1, n - 1).
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/07/02/example2.png]
    
    Input: grid = [[0,0,1],[0,0,0],[0,0,0]]
    Output: 2
    Explanation: The path depicted in the picture above has a safeness factor of 2 since:
    - The closest cell of the path to the thief at cell (0, 2) is cell (0, 0). The distance between them is | 0 - 0 | + | 0 - 2 | = 2.
    It can be shown that there are no other paths with a higher safeness factor.
    
    Example 3:
    
    [https://assets.leetcode.com/uploads/2023/07/02/example3.png]
    
    Input: grid = [[0,0,0,1],[0,0,0,0],[0,0,0,0],[1,0,0,0]]
    Output: 2
    Explanation: The path depicted in the picture above has a safeness factor of 2 since:
    - The closest cell of the path to the thief at cell (0, 3) is cell (1, 2). The distance between them is | 0 - 1 | + | 3 - 2 | = 2.
    - The closest cell of the path to the thief at cell (3, 0) is cell (3, 2). The distance between them is | 3 - 3 | + | 0 - 2 | = 2.
    It can be shown that there are no other paths with a higher safeness factor.
    
    
    Constraints:
    
     * 1 <= grid.length == n <= 400
     * grid[i].length == n
     * grid[i][j] is either 0 or 1.
     * There is at least one thief in the grid.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 0, 0], [0, 0, 0], [0, 0, 1]]) == 0
    assert candidate([[0, 0, 1], [0, 0, 0], [0, 0, 0]]) == 2
    assert candidate([[0, 0, 0, 1], [0, 0, 0, 0], [0, 0, 0, 0], [1, 0, 0, 0]]) == 2
    assert candidate([[1]]) == 0
    assert candidate([[1, 1], [1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 1, 0], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [1, 0, 0], [0, 0, 0]]) == 0
    assert candidate([[1, 1], [1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 1, 0], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 1], [0, 0, 0], [0, 0, 0]]) == 0
    assert candidate([[1, 1], [0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 1, 0], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [0, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [0, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [0, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 1], [0, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 0], [1, 1, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 0], [1, 1, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 0], [1, 0, 1]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 0], [1, 0, 0]]) == 0
    assert candidate([[1, 1, 0], [1, 0, 0], [0, 1, 1]]) == 0


def test_check():
    check(maximumSafenessFactor)


### Metadata below ###
# question_id = 2914
# question_title = Find the Safest Path in a Grid
# question_title_slug = find-the-safest-path-in-a-grid
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 706
# question_dislikes = 68