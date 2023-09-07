from typing import List


def exist(board: List[List[str]], word: str) -> bool:
    """
    Given an m x n grid of characters board and a string word, return true if word exists in the grid.
    The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.
 
    Example 1:


    Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
    Output: true

    Example 2:


    Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
    Output: true

    Example 3:


    Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
    Output: false

 
    Constraints:

    m == board.length
    n = board[i].length
    1 <= m, n <= 6
    1 <= word.length <= 15
    board and word consists of only lowercase and uppercase English letters.

 
    Follow up: Could you use search pruning to make your solution faster with a larger board?
    """
    ### Canonical solution below ###
    m, n = len(board), len(board[0])

    def dfs(i, j, k):
        if not 0 <= i < m or not 0 <= j < n or board[i][j] != word[k]:
            return False
        if k == len(word) - 1:
            return True

        tmp, board[i][j] = board[i][j], '/'
        res = dfs(i + 1, j, k + 1) or dfs(i - 1, j, k + 1) or dfs(i, j + 1, k + 1) or dfs(i, j - 1, k + 1)
        board[i][j] = tmp
        return res

    for i in range(m):
        for j in range(n):
            if dfs(i, j, 0):
                return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate([["A"]], "A") == True
	assert candidate(
    [
        ["A","B","C","E"],
        ["S","F","C","S"],
        ["A","D","E","E"]
    ], "ABCCED"
) == True
	assert candidate([["A", "B"], ["C", "D"]], "ABC") == False
	assert candidate(
    [["A", "B", "C", "E"], ["S", "F", "E", "S"], ["A", "D", "E", "E"]], "ABCESEEEFS"
) == True
	assert candidate([["a", "a"], ["a", "a"]], "aaaa") == True
	assert candidate([["a", "a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a"]], "aaaaaaaaaab") == False
	assert candidate([["A", "B", "C", "E"],["S", "F", "C", "S"],["A", "D", "E", "E"]], "ABCCED") == True
	assert candidate([["a"]], "b") == False
	assert candidate([["A", "B"], ["C", "D"]], "ACBD") == False
	assert candidate([["A", "B"]], "AB") == True
	assert candidate([["A"]], "B") == False
	assert candidate([["A", "B"], ["C", "D"]], "AC") == True
	assert candidate(
    [["a", "a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a"]], "aaaaaaaaaaaaa"
) == False
	assert candidate(
    [
        ["A","B","C","E"],
        ["S","F","C","S"],
        ["A","D","E","E"]
    ], "ABCB"
) == False
	assert candidate([["a", "b"], ["c", "d"]], "abdc") == True
	assert candidate([["a"]], "a") == True
	assert candidate(
    [["A", "B", "C", "E"], ["S", "F", "E", "S"], ["A", "D", "E", "E"]],
    "ABCESEEEFS"
) == True
	assert candidate([["A", "B", "C", "E"],["S", "F", "C", "S"],["A", "D", "E", "E"]], "ABCB") == False
	assert candidate([["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]], "AGI") == False
	assert candidate([["A", "A"], ["A", "A"]], "AAAA") == True
	assert candidate(
    [
        ["A", "B", "C", "E"],
        ["S", "F", "E", "S"],
        ["A", "D", "E", "E"],
        ["B", "C", "D", "E"],
    ],
    "ABCB",
) == False
	assert candidate([["A", "B"], ["C", "D"]], "AD") == False
	assert candidate([["A", "B"], ["C", "D"]], "CA") == True
	assert candidate([["a", "b"], ["c", "d"]], "abcd") == False
	assert candidate([["a", "b", "a", "b"], ["b", "a", "b", "a"], ["a", "b", "a", "b"]], "bbbbabaaaa") == False
	assert candidate([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], "ABCEFCSADEE") == False
	assert candidate([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], "SEE") == True
	assert candidate([["a", "a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a"], ["a", "a", "a", "a"]], "aaaaaaaaaa") == True
	assert candidate([["A", "A"]], "AA") == True
	assert candidate([["A", "B", "C", "E"],["S", "F", "C", "S"],["A", "D", "E", "E"]], "SEE") == True
	assert candidate([["A", "B", "C"], ["D", "E", "F"], ["G", "H", "I"]], "BEI") == False
	assert candidate(
    [["A", "B", "C", "E"],["S", "F", "E", "S"],["A", "D", "E", "E"]], "ABCESEEEFS"
) == True
def test_check():
	check(exist)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking,matrix
# Metadata Coverage: 100
