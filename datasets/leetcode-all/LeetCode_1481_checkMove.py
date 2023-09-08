from typing import List


def checkMove(board: List[List[str]], rMove: int, cMove: int, color: str) -> bool:
    """
    You are given a 0-indexed 8 x 8 grid board, where board[r][c] represents the cell (r, c) on a game board. On the board, free cells are represented by '.', white cells are represented by 'W', and black cells are represented by 'B'.
    Each move in this game consists of choosing a free cell and changing it to the color you are playing as (either white or black). However, a move is only legal if, after changing it, the cell becomes the endpoint of a good line (horizontal, vertical, or diagonal).
    A good line is a line of three or more cells (including the endpoints) where the endpoints of the line are one color, and the remaining cells in the middle are the opposite color (no cells in the line are free). You can find examples for good lines in the figure below:

    Given two integers rMove and cMove and a character color representing the color you are playing as (white or black), return true if changing cell (rMove, cMove) to color color is a legal move, or false if it is not legal.
 
    Example 1:


    Input: board = [[".",".",".","B",".",".",".","."],[".",".",".","W",".",".",".","."],[".",".",".","W",".",".",".","."],[".",".",".","W",".",".",".","."],["W","B","B",".","W","W","W","B"],[".",".",".","B",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","W",".",".",".","."]], rMove = 4, cMove = 3, color = "B"
    Output: true
    Explanation: '.', 'W', and 'B' are represented by the colors blue, white, and black respectively, and cell (rMove, cMove) is marked with an 'X'.
    The two good lines with the chosen cell as an endpoint are annotated above with the red rectangles.

    Example 2:


    Input: board = [[".",".",".",".",".",".",".","."],[".","B",".",".","W",".",".","."],[".",".","W",".",".",".",".","."],[".",".",".","W","B",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".","B","W",".","."],[".",".",".",".",".",".","W","."],[".",".",".",".",".",".",".","B"]], rMove = 4, cMove = 4, color = "W"
    Output: false
    Explanation: While there are good lines with the chosen cell as a middle cell, there are no good lines with the chosen cell as an endpoint.

 
    Constraints:

    board.length == board[r].length == 8
    0 <= rMove, cMove < 8
    board[rMove][cMove] == '.'
    color is either 'B' or 'W'.

    """
    ### Canonical solution below ###
    directions = ((-1, 0), (1, 0), (0, -1), (0, 1), (-1, -1), (-1, 1), (1, -1), (1, 1))
    opposite_color = 'B' if color == 'W' else 'W'

    for d in directions:
        x, y = rMove + d[0], cMove + d[1]
        count = 0
        while 0 <= x < 8 and 0 <= y < 8 and board[x][y] == opposite_color:
            x += d[0]
            y += d[1]
            count += 1

        if count > 0 and 0 <= x < 8 and 0 <= y < 8 and board[x][y] == color:
            return True

    return False




### Unit tests below ###
def check(candidate):
	assert candidate([
    ["B", "W", "W", "W", "B", "W", "W", "B"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "W", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["W", "W", "W", "B", "W", "W", "W", "W"],
    ["W", "B", "B", "B", "B", "B", "W", "W"],
    ["W", "B", "W", "W", "W", "W", "W", "B"],
    ["W", "B", "W", "B", "B", "B", "B", "W"],
], 4, 4, "B") == True
	assert candidate([
    ["B", "W", "W", "W", "W", "W", "W", "B"],
    ["W", "B", "W", "B", "B", "W", "B", "B"],
    ["B", "W", "B", "W", "W", "B", "W", "W"],
    ["W", "W", "W", "B", "W", "B", "W", "B"],
    ["W", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B", "B", "B", "B"]
], 2, 3, "B") == True
	assert candidate([
    [".", ".", ".", "B", ".", ".", ".", "."],
    [".", ".", ".", "W", ".", ".", ".", "."],
    [".", ".", ".", "W", ".", ".", ".", "."],
    [".", ".", ".", "W", ".", ".", ".", "."],
    ["W", "B", "B", ".", "W", "W", "W", "B"],
    [".", ".", ".", "B", ".", ".", ".", "."],
    [".", ".", ".", "B", ".", ".", ".", "."],
    [".", ".", ".", "W", ".", ".", ".", "."]
], 4, 3, "B") == True
	assert candidate(
[
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", "B", ".", ".", "W", ".", ".", "."],
    [".", ".", "W", ".", ".", ".", ".", "."],
    [".", ".", ".", "W", "B", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", "B", "W", ".", "."],
    [".", ".", ".", ".", ".", ".", "W", "."],
    [".", ".", ".", ".", ".", ".", ".", "B"]
], 4, 4, "W") == False
	assert candidate([
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
], 4, 4, "B") == False
	assert candidate([
    ["W", "B", "B", "B", "B", "B", "B", "W"],
    ["B", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B", "B", "B", "B"],
    ["B", "B", "B", "W", "W", "W", "B", "B"],
    ["B", "B", "B", "W", "B", "W", "B", "B"],
    ["B", "B", "B", "W", "W", "B", "B", "B"],
    ["W", "B", "B", "B", "B", "B", "B", "W"]
], 4, 4, "W") == True
	assert candidate([
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."],
  [".", ".", ".", ".", ".", ".", ".", "."]
], 4, 3, "B") == False
	assert candidate([
  ["B", "W", "W", "B", "W", "W", "W", "B"],
  ["W", "B", "W", "B", "B", "W", "B", "W"],
  ["B", "B", "B", "B", "W", "B", "W", "W"],
  ["W", "W", "B", "W", "B", "W", "W", "W"],
  ["W", "W", "B", "B", "B", "B", "W", "B"],
  ["W", "W", "W", "W", "W", "W", "B", "W"],
  ["W", "W", "W", "B", "W", "B", "W", "W"],
  ["B", "B", "W", "W", "W", "B", "B", "B"]
], 3, 4, "W") == True
	assert candidate([
    ["B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B"],
    ["B", "B", "B", "B", "B"],
], 0, 2, "B") == False
	assert candidate([
    ["B", ".", "."],
    ["W", "W", "."],
    [".", "W", "."],
], 0, 0, "B") == False
def test_check():
	check(checkMove)
# Metadata Difficulty: Medium
# Metadata Topics: array,matrix,enumeration
# Metadata Coverage: 100
