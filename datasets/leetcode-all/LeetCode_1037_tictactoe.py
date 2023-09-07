from typing import List


def tictactoe(moves: List[List[int]]) -> str:
    """
    Tic-tac-toe is played by two players A and B on a 3 x 3 grid. The rules of Tic-Tac-Toe are:

    Players take turns placing characters into empty squares ' '.
    The first player A always places 'X' characters, while the second player B always places 'O' characters.
    'X' and 'O' characters are always placed into empty squares, never on filled ones.
    The game ends when there are three of the same (non-empty) character filling any row, column, or diagonal.
    The game also ends if all squares are non-empty.
    No more moves can be played if the game is over.

    Given a 2D integer array moves where moves[i] = [rowi, coli] indicates that the ith move will be played on grid[rowi][coli]. return the winner of the game if it exists (A or B). In case the game ends in a draw return "Draw". If there are still movements to play return "Pending".
    You can assume that moves is valid (i.e., it follows the rules of Tic-Tac-Toe), the grid is initially empty, and A will play first.
 
    Example 1:


    Input: moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
    Output: "A"
    Explanation: A wins, they always play first.

    Example 2:


    Input: moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
    Output: "B"
    Explanation: B wins.

    Example 3:


    Input: moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
    Output: "Draw"
    Explanation: The game ends in a draw since there are no moves to make.

 
    Constraints:

    1 <= moves.length <= 9
    moves[i].length == 2
    0 <= rowi, coli <= 2
    There are no repeated elements on moves.
    moves follow the rules of tic tac toe.

    """
    ### Canonical solution below ###
    grid = [[0] * 3 for _ in range(3)]
    player = 1
    for move in moves:
        r, c = move
        grid[r][c] = player
        if (all(grid[i][c] == player for i in range(3)) or
            all(grid[r][i] == player for i in range(3)) or
            (r == c and all(grid[i][i] == player for i in range(3))) or
                (r + c == 2 and all(grid[i][2 - i] == player for i in range(3)))):
            return 'A' if player == 1 else 'B'
        player = 3 - player

    return 'Draw' if len(moves) == 9 else 'Pending'




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[1,1]]) == 'Pending'
	assert candidate([[0,0],[2,2],[1,1],[0,1],[0,2],[2,0],[1,2],[1,0],[1,1]]) == 'Draw'
	assert candidate(
    [[1, 1], [0, 2], [1, 2], [1, 0], [2, 2], [2, 0], [2, 1], [0, 0], [0, 1], [0, 2]]) == 'B'
	assert candidate([[0,0],[1,1],[2,0],[1,0],[1,2],[0,2],[2,1],[0,1],[2,2]]) == 'A'
	assert candidate([[0,0],[2,0],[1,1],[2,1],[2,2]]) == 'A'
	assert candidate([[0,0],[2,2],[1,1],[0,1],[0,2],[2,0],[1,2]]) == 'Pending'
	assert candidate([[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]) == 'B'
	assert candidate([[0,0],[1,1],[2,0],[0,1],[1,0],[2,2],[1,2],[2,1],[0,2]]) == 'A'
	assert candidate(
    [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]) == 'Draw'
	assert candidate([[0,0],[1,1],[0,1],[0,2],[1,0],[2,0],[1,2],[2,1],[2,2]]) == 'B'
	assert candidate([[0,0],[2,0],[1,1],[2,1],[2,2],[0,1],[1,0],[2,0]]) == 'A'
def test_check():
	check(tictactoe)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,matrix,simulation
# Metadata Coverage: 100
