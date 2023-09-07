from typing import List


def findCircleNum(isConnected: List[List[int]]) -> int:
    """
    There are n cities. Some of them are connected, while some are not. If city a is connected directly with city b, and city b is connected directly with city c, then city a is connected indirectly with city c.
    A province is a group of directly or indirectly connected cities and no other cities outside of the group.
    You are given an n x n matrix isConnected where isConnected[i][j] = 1 if the ith city and the jth city are directly connected, and isConnected[i][j] = 0 otherwise.
    Return the total number of provinces.
 
    Example 1:


    Input: isConnected = [[1,1,0],[1,1,0],[0,0,1]]
    Output: 2

    Example 2:


    Input: isConnected = [[1,0,0],[0,1,0],[0,0,1]]
    Output: 3

 
    Constraints:

    1 <= n <= 200
    n == isConnected.length
    n == isConnected[i].length
    isConnected[i][j] is 1 or 0.
    isConnected[i][i] == 1
    isConnected[i][j] == isConnected[j][i]

    """
    ### Canonical solution below ###
    def dfs(isConnected, visited, i):
        visited[i] = True
        for j in range(len(isConnected)):
            if isConnected[i][j] == 1 and not visited[j]:
                dfs(isConnected, visited, j)

    provinces = 0
    visited = [False] * len(isConnected)
    for i in range(len(isConnected)):
        if not visited[i]:
            dfs(isConnected, visited, i)
            provinces += 1
    return provinces




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0,0,0,0,0],[0,1,0,0,0,0],[0,0,1,0,0,0],[0,0,0,1,0,0],[0,0,0,0,1,0],[0,0,0,0,0,1]]) == 6
	assert candidate([[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1]]) == 1
	assert candidate(
    [[1,0,0,0],[0,1,0,0],[0,0,1,1],[0,0,1,1]]) == 3
	assert candidate([[1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1],
                      [1,1,1,1,1,1,1,1]]) == 1
	assert candidate(
    [[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]) == 4
	assert candidate([[1,1,1,0],[1,1,1,0],[1,1,1,0],[0,0,0,1]]) == 2
	assert candidate([[1,1,0,0,0],[1,1,0,0,0],[0,0,1,1,0],[0,0,1,1,0],[0,0,0,0,1]]) == 3
	assert candidate(
    [[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 1
	assert candidate(
    [[1,0,0,0,0,0],
     [0,1,0,0,0,0],
     [0,0,1,0,0,0],
     [0,0,0,1,0,0],
     [0,0,0,0,1,0],
     [0,0,0,0,0,1]]) == 6
	assert candidate(
    [[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1],[1,1,1,1,1,1]]) == 1
	assert candidate([[1,1,0,0],[1,1,0,0],[0,0,1,1],[0,0,1,1]]) == 2
	assert candidate([[1,1,1],[1,1,1],[1,1,1]]) == 1
	assert candidate(
    [[1,1,1,0,0,0],[1,1,1,0,0,0],[1,1,1,0,0,0],[0,0,0,1,1,1],[0,0,0,1,1,1],[0,0,0,1,1,1]]) == 2
	assert candidate([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]) == 4
	assert candidate([[1,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1]]) == 5
	assert candidate(
    [[1,0,0,0,0,0],[0,1,0,0,0,0],[0,0,1,0,0,0],[0,0,0,1,0,0],[0,0,0,0,1,0],[0,0,0,0,0,1]]) == 6
	assert candidate([[1,0,1,0,1],[0,1,0,1,0],[1,0,1,0,1],[0,1,0,1,0],[1,0,1,0,1]]) == 2
	assert candidate([[1,0,0],[0,1,0],[0,0,1]]) == 3
	assert candidate([[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]) == 1
	assert candidate([[1,1,0],[1,1,0],[0,0,1]]) == 2
def test_check():
	check(findCircleNum)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,union-find,graph
# Metadata Coverage: 100
