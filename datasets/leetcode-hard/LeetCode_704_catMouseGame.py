from typing import List


def catMouseGame(graph: List[List[int]]) -> int:
    """
    A game on an undirected graph is played by two players, Mouse and Cat, who alternate turns.
    The graph is given as follows: graph[a] is a list of all nodes b such that ab is an edge of the graph.
    The mouse starts at node 1 and goes first, the cat starts at node 2 and goes second, and there is a hole at node 0.
    During each player's turn, they must travel along one edge of the graph that meets where they are.  For example, if the Mouse is at node 1, it must travel to any node in graph[1].
    Additionally, it is not allowed for the Cat to travel to the Hole (node 0.)
    Then, the game can end in three ways:

    If ever the Cat occupies the same node as the Mouse, the Cat wins.
    If ever the Mouse reaches the Hole, the Mouse wins.
    If ever a position is repeated (i.e., the players are in the same position as a previous turn, and it is the same player's turn to move), the game is a draw.

    Given a graph, and assuming both players play optimally, return

    1 if the mouse wins the game,
    2 if the cat wins the game, or
    0 if the game is a draw.

 
    Example 1:


    Input: graph = [[2,5],[3],[0,4,5],[1,4,5],[2,3],[0,2,3]]
    Output: 0

    Example 2:


    Input: graph = [[1,3],[0],[3],[0,2]]
    Output: 1

 
    Constraints:

    3 <= graph.length <= 50
    1 <= graph[i].length < graph.length
    0 <= graph[i][j] < graph.length
    graph[i][j] != i
    graph[i] is unique.
    The mouse and the cat can always move. 

    """
    ### Canonical solution below ###
    from collections import deque
    n = len(graph)
    status = [[[0]*3 for _ in range(n)] for _ in range(n)]

    for i in range(1, n):
        status[i][i][1] = 2
        status[i][i][2] = 2
    queue = deque([(i, i, t, 2) for i in range(1, n) for t in (1, 2)])

    while queue:
        pos_m, pos_c, t_type, t_result = queue.popleft()

        for prev in graph[pos_m if t_type == 1 else pos_c]:
            if (t_type == 2 and prev == 0) or (t_result == 2 and status[prev][pos_c][3 - t_type]):
                continue
            if status[prev][pos_c][3 - t_type]:
                continue
            queue.append((pos_c, prev, 3 - t_type, 3 - t_result))
            status[prev][pos_c][3 - t_type] = 3 - t_result

    return status[1][2][1]




### Unit tests below ###
def check(candidate):
	assert candidate([[2,5],[3],[0,4,5],[1,4,5],[2,3],[0,2,3]]) == 0
	assert candidate([[1,2,3,4,5],[0,2,3,4],[0,1,3,4],[0,1,2,4,5],[0,1,2,3],[0,3]]) == 1
	assert candidate([[2,5],[3],[0,4,5],[1,4,5],[2,3],[0,2,3],[0]]) == 0
	assert candidate([[1,2,3],[0,2,4],[0,1,3,4],[0,2],[1,2]]) == 1
	assert candidate([[1,2],[3,4],[3,4,5],[4],[0],[2,3,4,5],[2,3],[2,3,4],[2,5],[3],[3,4]]) == 0
	assert candidate([[1,2,3],[0,2,4],[0,1,3,4],[0,2],[1,2,4],[1,3]]) == 1
	assert candidate([[1,3],[0,2],[2],[2,3],[0,2,3]]) == 0
	assert candidate([[1,2,3,4],[0,2,3,4,5],[0,1,3,4],[0,1,2,4,5],[0,1,2,3,5],[1,2,3,4]]) == 1
	assert candidate([[1,2,3,4,5],[0],[0,2,3,4],[0,1,3,4,5],[0,1,2,4,5],[0,1,2,3,5],[1,2,3,4]]) == 0
	assert candidate([[1,2,3,4],[0,2,3,4,5],[0,1,3,4,5],[0,1,2,4,5],[0,1,2,3,5],[1,2,3,4]]) == 1
def test_check():
	check(catMouseGame)
# Metadata Difficulty: Hard
# Metadata Topics: math,dynamic-programming,graph,topological-sort,memoization,game-theory
# Metadata Coverage: 100
