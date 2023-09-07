from typing import List


def isBipartite(graph: List[List[int]]) -> bool:
    """
    There is an undirected graph with n nodes, where each node is numbered between 0 and n - 1. You are given a 2D array graph, where graph[u] is an array of nodes that node u is adjacent to. More formally, for each v in graph[u], there is an undirected edge between node u and node v. The graph has the following properties:

    There are no self-edges (graph[u] does not contain u).
    There are no parallel edges (graph[u] does not contain duplicate values).
    If v is in graph[u], then u is in graph[v] (the graph is undirected).
    The graph may not be connected, meaning there may be two nodes u and v such that there is no path between them.

    A graph is bipartite if the nodes can be partitioned into two independent sets A and B such that every edge in the graph connects a node in set A and a node in set B.
    Return true if and only if it is bipartite.
 
    Example 1:


    Input: graph = [[1,2,3],[0,2],[0,1,3],[0,2]]
    Output: false
    Explanation: There is no way to partition the nodes into two independent sets such that every edge connects a node in one and a node in the other.
    Example 2:


    Input: graph = [[1,3],[0,2],[1,3],[0,2]]
    Output: true
    Explanation: We can partition the nodes into two sets: {0, 2} and {1, 3}.
 
    Constraints:

    graph.length == n
    1 <= n <= 100
    0 <= graph[u].length < n
    0 <= graph[u][i] <= n - 1
    graph[u] does not contain u.
    All the values of graph[u] are unique.
    If graph[u] contains v, then graph[v] contains u.

    """
    ### Canonical solution below ###
    from collections import deque
    colors = [0] * len(graph)
    for i in range(len(graph)):
        if colors[i] != 0:
            continue
        colors[i] = 1
        queue = deque([i])
        while queue:
            node = queue.popleft()
            for neighbor in graph[node]:
                if colors[neighbor] == 0:
                    colors[neighbor] = -colors[node]
                    queue.append(neighbor)
                elif colors[neighbor] == colors[node]:
                    return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2],[0,2],[0,1]]) == False
	assert candidate([[1,3],[0,3],[0,2,3,5],[1,3,5],[0,2,5],[0,2,5]]) == False
	assert candidate([[1,2,3],[0,2,3],[0,1],[3],[2]]) == False
	assert candidate(
    [[1,2,3,4,5],[0,2],[0,1,4,5],[0,2,3,4],[0,2,3],[2]]) == False
	assert candidate([[1],[0,2],[1,3],[0,1,3,4],[1,2,4],[2]]) == False
	assert candidate([[1],[0,2,3,4],[1,3],[0,2,3,4],[0,2,3,4]]) == False
	assert candidate([[1,2,3,4],[0,2],[0,1],[2,3,4],[1]]) == False
	assert candidate(
    [[1,3],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5]]) == False
	assert candidate([[1,2],[0,2,3,5],[4],[4,5],[0,1,3,5],[3],[3,4]]) == False
	assert candidate([[1],[0,2,3],[1,3],[1,2,4],[3,5],[4]]) == False
	assert candidate([[1],[0,3],[3],[1,2]]) == True
	assert candidate([[1,2,3],[0,2,3],[0,1,3],[0,1,2]]) == False
	assert candidate([[1,3],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5],[0,2,3,4,5,6],[3]]) == False
	assert candidate([[1,2,3,4],[0,2,3,4],[0,2,1],[0,1],[2,3,4],[3]]) == False
	assert candidate([[1,2,3],[0,2,3],[0,1,3],[0,1,2,4],[3]]) == False
	assert candidate([[1,3],[0,3,4,5],[1,3],[0,2,3,4],[0,2,3,4],[0,2,3,4,5],[2,5]]) == False
	assert candidate([[1,3],[0,2],[1,3],[0,2]]) == True
	assert candidate([[1,2,3,4,5],[0,3,4],[0,1,5],[0,2,4,5],[2],[1,5]]) == False
	assert candidate(
    [[1,2,3,4],[0,2],[0,1,3,4],[0,2,4],[0,1,3],[1,3],[3]]) == False
	assert candidate([[1,2],[0,2,3],[0,1,3],[1,2]]) == False
	assert candidate([[1,2,3],[0,2,3],[0,1],[1,3],[2]]) == False
	assert candidate([[1,2],[0,2],[0,1],[1,3],[2]]) == False
	assert candidate([[1,2,3,4,5],[0,2],[0,1],[3],[0,2],[3]]) == False
	assert candidate([[1,2],[0],[0,2]]) == False
	assert candidate([[1,2,3,4],[0,2,3,4],[0,2,1],[0,1],[2,3,4],[3,4]]) == False
	assert candidate([[1,2,3],[0,2],[0,1,3],[0,2]]) == False
	assert candidate([[1,2,3],[0,2,3],[0,1,3],[1,2]]) == False
	assert candidate([[1],[0,2],[1,3],[2]]) == True
	assert candidate([[1,2],[0,2],[0,1,3],[2]]) == False
	assert candidate([[1,2],[0,2,3],[1,3],[1,2,4,5],[0],[3,5],[2,5],[3]]) == False
	assert candidate([[1,2,3,4],[0,2,4],[0,1],[2],[1,3]]) == False
	assert candidate([[1,2,3],[0,2],[0,1,3],[1,3],[2]]) == False
	assert candidate(
    [[1,2,3],[0,2],[0,1,3],[0,2],[1,3],[2],[3],[4,6],[],[5,7,8,9],[2,5,7,9],[2,6,8,9],
     [3,5,7,8,9],[4,5,6,7,8,9],[2,4,5,6,7,8,9]]
) == False
	assert candidate([[1,2,3],[0,2],[0,1],[3],[0,2]]) == False
	assert candidate([[1,2,3,4],[0,2,3,4],[0,2,1],[0,1,3],[2,3,4],[1,3]]) == False
	assert candidate([[1,2],[0,2,3],[0,1,3],[0,2]]) == False
def test_check():
	check(isBipartite)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,union-find,graph
# Metadata Coverage: 100
