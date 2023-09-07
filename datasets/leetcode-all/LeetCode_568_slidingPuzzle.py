from typing import List


def slidingPuzzle(board: List[List[int]]) -> int:
    """
    On an 2 x 3 board, there are five tiles labeled from 1 to 5, and an empty square represented by 0. A move consists of choosing 0 and a 4-directionally adjacent number and swapping it.
    The state of the board is solved if and only if the board is [[1,2,3],[4,5,0]].
    Given the puzzle board board, return the least number of moves required so that the state of the board is solved. If it is impossible for the state of the board to be solved, return -1.
 
    Example 1:


    Input: board = [[1,2,3],[4,0,5]]
    Output: 1
    Explanation: Swap the 0 and the 5 in one move.

    Example 2:


    Input: board = [[1,2,3],[5,4,0]]
    Output: -1
    Explanation: No number of moves will make the board solved.

    Example 3:


    Input: board = [[4,1,2],[5,0,3]]
    Output: 5
    Explanation: 5 is the smallest number of moves that solves the board.
    An example path:
    After move 0: [[4,1,2],[5,0,3]]
    After move 1: [[4,1,2],[0,5,3]]
    After move 2: [[0,1,2],[4,5,3]]
    After move 3: [[1,0,2],[4,5,3]]
    After move 4: [[1,2,0],[4,5,3]]
    After move 5: [[1,2,3],[4,5,0]]

 
    Constraints:

    board.length == 2
    board[i].length == 3
    0 <= board[i][j] <= 5
    Each value board[i][j] is unique.

    """
    ### Canonical solution below ###
    from collections import deque
    m, n = 2, 3
    target = "123450"
    start = "".join(str(num) for row in board for num in row)
    dirs = [[1, 3], [0, 2, 4], [1, 5], [0, 4], [1, 3, 5], [2, 4]]
    q = deque([start])
    res = 0
    visited = {start}
    while q:
        for _ in range(len(q)):
            cur = q.popleft()
            if cur == target:
                return res
            zero_idx = cur.index("0")
            for dir in dirs[zero_idx]:
                neighbor = list(cur)
                neighbor[zero_idx], neighbor[dir] = neighbor[dir], neighbor[zero_idx]
                neighbor = "".join(neighbor)
                if neighbor not in visited:
                    visited.add(neighbor)
                    q.append(neighbor)
        res += 1
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(
    [[3,5,4], [2,1,0]]
) == 12
	assert candidate(
    [[5,4,0], [1,2,3]]
) == -1
	assert candidate([[4,1,2],[5,0,3]]) == 5
	assert candidate([[1,2,3],[5,4,0]]) == -1
	assert candidate([[3, 2, 1],[4, 0, 5]]) == -1
	assert candidate([[1,2,3],[4,0,5]]) == 1
	assert candidate([[3,2,4],[1,5,0]]) == 14
	assert candidate([[1, 2, 3],[4, 5, 0]]) == 0
	assert candidate(
    [[3,2,4], [1,5,0]]
) == 14
	assert candidate([[1,2,3],[4,5,0]]) == 0
def test_check():
	check(slidingPuzzle)
# Metadata Difficulty: Hard
# Metadata Topics: array,breadth-first-search,matrix
# Metadata Coverage: 100
