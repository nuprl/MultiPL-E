from typing import List

def minimumMoves(grid: List[List[int]]) -> int:
    """
    You are given a 0-indexed 2D integer matrix grid of size 3 * 3, representing the number of stones in each cell. The grid contains exactly 9 stones, and there can be multiple stones in a single cell.
    
    In one move, you can move a single stone from its current cell to any other cell if the two cells share a side.
    
    Return the minimum number of moves required to place one stone in each cell.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/08/23/example1-3.svg]
    
    Input: grid = [[1,1,0],[1,1,1],[1,2,1]]
    Output: 3
    Explanation: One possible sequence of moves to place one stone in each cell is:
    1- Move one stone from cell (2,1) to cell (2,2).
    2- Move one stone from cell (2,2) to cell (1,2).
    3- Move one stone from cell (1,2) to cell (0,2).
    In total, it takes 3 moves to place one stone in each cell of the grid.
    It can be shown that 3 is the minimum number of moves required to place one stone in each cell.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/08/23/example2-2.svg]
    
    Input: grid = [[1,3,0],[1,0,0],[1,0,3]]
    Output: 4
    Explanation: One possible sequence of moves to place one stone in each cell is:
    1- Move one stone from cell (0,1) to cell (0,2).
    2- Move one stone from cell (0,1) to cell (1,1).
    3- Move one stone from cell (2,2) to cell (1,2).
    4- Move one stone from cell (2,2) to cell (2,1).
    In total, it takes 4 moves to place one stone in each cell of the grid.
    It can be shown that 4 is the minimum number of moves required to place one stone in each cell.
    
    
    Constraints:
    
     * grid.length == grid[i].length == 3
     * 0 <= grid[i][j] <= 9
     * Sum of grid is equal to 9.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 1, 0], [1, 1, 1], [1, 2, 1]]) == 3
    assert candidate([[1, 3, 0], [1, 0, 0], [1, 0, 3]]) == 4
    assert candidate([[1, 2, 2], [1, 1, 0], [0, 1, 1]]) == 4
    assert candidate([[1, 3, 3], [1, 0, 0], [0, 1, 0]]) == 7
    assert candidate([[3, 2, 0], [0, 1, 0], [0, 3, 0]]) == 7
    assert candidate([[1, 0, 4], [2, 0, 0], [2, 0, 0]]) == 6
    assert candidate([[0, 1, 3], [3, 1, 0], [0, 1, 0]]) == 5
    assert candidate([[3, 0, 0], [0, 2, 1], [1, 0, 2]]) == 5
    assert candidate([[1, 0, 0], [4, 1, 1], [0, 2, 0]]) == 7
    assert candidate([[0, 2, 3], [2, 0, 1], [0, 1, 0]]) == 6
    assert candidate([[4, 0, 0], [0, 0, 2], [3, 0, 0]]) == 8
    assert candidate([[3, 0, 0], [4, 1, 0], [1, 0, 0]]) == 10
    assert candidate([[0, 2, 1], [1, 2, 0], [3, 0, 0]]) == 5
    assert candidate([[1, 3, 0], [0, 0, 1], [2, 1, 1]]) == 3
    assert candidate([[3, 0, 0], [1, 0, 1], [0, 2, 2]]) == 6
    assert candidate([[4, 2, 2], [0, 1, 0], [0, 0, 0]]) == 10
    assert candidate([[3, 2, 1], [1, 1, 0], [1, 0, 0]]) == 9
    assert candidate([[0, 3, 0], [2, 0, 0], [1, 3, 0]]) == 6
    assert candidate([[0, 0, 0], [3, 0, 0], [4, 2, 0]]) == 13
    assert candidate([[1, 1, 2], [0, 0, 0], [0, 4, 1]]) == 5
    assert candidate([[4, 0, 0], [0, 0, 0], [1, 2, 2]]) == 6
    assert candidate([[1, 3, 1], [0, 0, 0], [1, 2, 1]]) == 5
    assert candidate([[3, 1, 0], [1, 2, 2], [0, 0, 0]]) == 6
    assert candidate([[2, 3, 2], [0, 1, 0], [0, 0, 1]]) == 7
    assert candidate([[0, 1, 4], [0, 3, 0], [0, 1, 0]]) == 8
    assert candidate([[0, 1, 0], [1, 4, 0], [0, 3, 0]]) == 7
    assert candidate([[0, 0, 1], [0, 0, 3], [2, 2, 1]]) == 7
    assert candidate([[1, 0, 1], [1, 2, 0], [1, 0, 3]]) == 3
    assert candidate([[0, 0, 0], [4, 1, 2], [1, 1, 0]]) == 7
    assert candidate([[2, 2, 1], [0, 2, 1], [0, 1, 0]]) == 6
    assert candidate([[1, 0, 0], [0, 2, 0], [4, 2, 0]]) == 10
    assert candidate([[2, 0, 1], [4, 0, 0], [0, 2, 0]]) == 6
    assert candidate([[0, 0, 3], [0, 2, 0], [1, 3, 0]]) == 7
    assert candidate([[2, 0, 1], [1, 0, 0], [4, 0, 1]]) == 7
    assert candidate([[0, 1, 0], [1, 0, 3], [0, 3, 1]]) == 6
    assert candidate([[0, 3, 1], [0, 0, 0], [3, 1, 1]]) == 6
    assert candidate([[3, 0, 1], [0, 3, 1], [0, 0, 1]]) == 5
    assert candidate([[0, 4, 0], [1, 0, 0], [0, 2, 2]]) == 5
    assert candidate([[4, 2, 0], [0, 0, 0], [1, 1, 1]]) == 7
    assert candidate([[0, 2, 0], [2, 1, 2], [0, 2, 0]]) == 4
    assert candidate([[0, 1, 0], [2, 1, 1], [4, 0, 0]]) == 8
    assert candidate([[0, 4, 1], [1, 0, 1], [0, 0, 2]]) == 6
    assert candidate([[1, 0, 0], [0, 0, 0], [1, 3, 4]]) == 9
    assert candidate([[0, 7, 1], [0, 1, 0], [0, 0, 0]]) == 13
    assert candidate([[0, 1, 1], [0, 2, 1], [2, 0, 2]]) == 4
    assert candidate([[0, 2, 0], [3, 0, 0], [3, 1, 0]]) == 8
    assert candidate([[0, 0, 0], [2, 0, 2], [0, 2, 3]]) == 8
    assert candidate([[0, 3, 4], [0, 1, 0], [1, 0, 0]]) == 9
    assert candidate([[1, 0, 0], [0, 0, 1], [7, 0, 0]]) == 13
    assert candidate([[0, 0, 2], [2, 0, 0], [1, 4, 0]]) == 6
    assert candidate([[2, 0, 1], [1, 3, 0], [0, 2, 0]]) == 5
    assert candidate([[1, 0, 2], [2, 3, 0], [1, 0, 0]]) == 6
    assert candidate([[1, 1, 2], [0, 0, 0], [3, 1, 1]]) == 4
    assert candidate([[0, 2, 0], [0, 1, 0], [0, 0, 6]]) == 10
    assert candidate([[1, 1, 1], [3, 0, 0], [2, 1, 0]]) == 5
    assert candidate([[2, 0, 0], [2, 0, 1], [3, 1, 0]]) == 8
    assert candidate([[1, 1, 0], [0, 2, 2], [0, 3, 0]]) == 4
    assert candidate([[1, 0, 3], [1, 1, 0], [1, 0, 2]]) == 3
    assert candidate([[1, 3, 0], [2, 0, 0], [3, 0, 0]]) == 7
    assert candidate([[1, 0, 1], [0, 0, 1], [0, 1, 5]]) == 10
    assert candidate([[2, 0, 0], [0, 2, 1], [1, 1, 2]]) == 4
    assert candidate([[1, 2, 3], [1, 0, 1], [0, 0, 1]]) == 8
    assert candidate([[0, 2, 3], [1, 0, 0], [0, 1, 2]]) == 6
    assert candidate([[4, 1, 0], [0, 1, 1], [2, 0, 0]]) == 8
    assert candidate([[2, 0, 1], [1, 0, 1], [1, 2, 1]]) == 2
    assert candidate([[3, 0, 3], [0, 0, 0], [1, 1, 1]]) == 5
    assert candidate([[0, 0, 0], [3, 4, 2], [0, 0, 0]]) == 7
    assert candidate([[2, 1, 2], [0, 0, 1], [3, 0, 0]]) == 6
    assert candidate([[1, 0, 0], [0, 3, 3], [0, 0, 2]]) == 7
    assert candidate([[0, 2, 0], [1, 0, 1], [1, 3, 1]]) == 5
    assert candidate([[0, 1, 0], [2, 0, 4], [1, 0, 1]]) == 5
    assert candidate([[1, 0, 3], [0, 0, 2], [0, 1, 2]]) == 7
    assert candidate([[2, 1, 1], [0, 0, 0], [0, 1, 4]]) == 6
    assert candidate([[2, 0, 1], [0, 2, 0], [1, 3, 0]]) == 5
    assert candidate([[2, 0, 2], [0, 0, 2], [0, 0, 3]]) == 6
    assert candidate([[0, 2, 2], [2, 0, 1], [1, 1, 0]]) == 4
    assert candidate([[0, 0, 1], [2, 3, 2], [1, 0, 0]]) == 4
    assert candidate([[1, 1, 0], [3, 0, 4], [0, 0, 0]]) == 6
    assert candidate([[1, 0, 0], [0, 0, 0], [5, 1, 2]]) == 11
    assert candidate([[1, 0, 0], [3, 5, 0], [0, 0, 0]]) == 9
    assert candidate([[3, 1, 1], [1, 1, 0], [2, 0, 0]]) == 8
    assert candidate([[0, 1, 3], [0, 0, 1], [1, 2, 1]]) == 6
    assert candidate([[0, 0, 0], [1, 2, 0], [3, 0, 3]]) == 7
    assert candidate([[0, 0, 0], [1, 2, 2], [2, 0, 2]]) == 5
    assert candidate([[4, 0, 0], [2, 3, 0], [0, 0, 0]]) == 10
    assert candidate([[1, 1, 0], [1, 0, 1], [4, 1, 0]]) == 8
    assert candidate([[0, 0, 1], [0, 1, 2], [1, 0, 4]]) == 10
    assert candidate([[0, 1, 3], [2, 0, 0], [0, 3, 0]]) == 6
    assert candidate([[0, 0, 0], [5, 0, 1], [1, 1, 1]]) == 7
    assert candidate([[0, 1, 1], [0, 0, 3], [2, 1, 1]]) == 5
    assert candidate([[2, 0, 1], [0, 0, 1], [2, 2, 1]]) == 3
    assert candidate([[3, 0, 2], [2, 1, 0], [0, 0, 1]]) == 6
    assert candidate([[0, 0, 2], [0, 0, 2], [4, 0, 1]]) == 6
    assert candidate([[3, 0, 0], [0, 2, 0], [0, 0, 4]]) == 8
    assert candidate([[0, 1, 3], [1, 0, 0], [0, 4, 0]]) == 6
    assert candidate([[2, 1, 2], [0, 2, 1], [1, 0, 0]]) == 4
    assert candidate([[0, 0, 2], [1, 0, 3], [1, 0, 2]]) == 6
    assert candidate([[0, 2, 2], [0, 1, 4], [0, 0, 0]]) == 10
    assert candidate([[1, 0, 1], [0, 0, 5], [1, 1, 0]]) == 6
    assert candidate([[3, 1, 0], [0, 0, 0], [0, 1, 4]]) == 8


def test_check():
    check(minimumMoves)


### Metadata below ###
# question_id = 3092
# question_title = Minimum Moves to Spread Stones Over Grid
# question_title_slug = minimum-moves-to-spread-stones-over-grid
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 419
# question_dislikes = 43