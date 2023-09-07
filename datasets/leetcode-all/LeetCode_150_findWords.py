from typing import List


def findWords(board: List[List[str]], words: List[str]) -> List[str]:
    """
    Given an m x n board of characters and a list of strings words, return all words on the board.
    Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.
 
    Example 1:


    Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
    Output: ["eat","oath"]

    Example 2:


    Input: board = [["a","b"],["c","d"]], words = ["abcb"]
    Output: []

 
    Constraints:

    m == board.length
    n == board[i].length
    1 <= m, n <= 12
    board[i][j] is a lowercase English letter.
    1 <= words.length <= 3 * 104
    1 <= words[i].length <= 10
    words[i] consists of lowercase English letters.
    All the strings of words are unique.

    """
    ### Canonical solution below ###
    def dfs(board, word, index, i, j, visited):
        if index == len(word):
            return True
        if i < 0 or j < 0 or i >= len(board) or j >= len(board[0]) or visited[i][j] or board[i][j] != word[index]:
            return False
        visited[i][j] = True
        found = dfs(board, word, index + 1, i - 1, j, visited) or \
            dfs(board, word, index + 1, i + 1, j, visited) or \
            dfs(board, word, index + 1, i, j - 1, visited) or \
            dfs(board, word, index + 1, i, j + 1, visited)
        visited[i][j] = False
        return found

    res = []
    for word in words:
        if any(dfs(board, word, 0, i, j, [[False] * len(board[0]) for _ in range(len(board))])
               for i in range(len(board)) for j in range(len(board[0]))):
            res.append(word)
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([["a", "b"], ["c", "d"]], ["ac", "bd"]) == ["ac", "bd"]
	assert candidate([["a", "b"], ["c", "d"]], ["abcd"]) == []
	assert candidate(
    [["o", "a", "b", "n"], ["o", "t", "a", "e"], ["a", "h", "k", "r"], ["a", "f", "l", "v"]], ["oa", "oaa"]
) == ["oa", "oaa"]
	assert candidate([["a"]], ["a"]) == ["a"]
	assert candidate([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]], ["aei", "bdf", "cgh"]) == []
	assert candidate([["a", "a", "a"], ["a", "a", "a"], ["a", "a", "a"]], ["aaa", "aaaa", "aaaaa"]) == ["aaa", "aaaa", "aaaaa"]
	assert candidate([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]], ["a", "e", "i"]) == ["a", "e", "i"]
	assert candidate([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]], ["adg", "beh", "cfi"]) == ["adg", "beh", "cfi"]
	assert candidate([["a", "b"], ["c", "d"]], ["abcb"]) == []
def test_check():
	check(findWords)
# Metadata Difficulty: Hard
# Metadata Topics: array,string,backtracking,trie,matrix
# Metadata Coverage: 100
