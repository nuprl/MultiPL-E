from typing import List


def shortestAlternatingPaths(n: int, redEdges: List[List[int]], blueEdges: List[List[int]]) -> List[int]:
    """
    You are given an integer n, the number of nodes in a directed graph where the nodes are labeled from 0 to n - 1. Each edge is red or blue in this graph, and there could be self-edges and parallel edges.
    You are given two arrays redEdges and blueEdges where:

    redEdges[i] = [ai, bi] indicates that there is a directed red edge from node ai to node bi in the graph, and
    blueEdges[j] = [uj, vj] indicates that there is a directed blue edge from node uj to node vj in the graph.

    Return an array answer of length n, where each answer[x] is the length of the shortest path from node 0 to node x such that the edge colors alternate along the path, or -1 if such a path does not exist.
 
    Example 1:

    Input: n = 3, redEdges = [[0,1],[1,2]], blueEdges = []
    Output: [0,1,-1]

    Example 2:

    Input: n = 3, redEdges = [[0,1]], blueEdges = [[2,1]]
    Output: [0,1,-1]

 
    Constraints:

    1 <= n <= 100
    0 <= redEdges.length, blueEdges.length <= 400
    redEdges[i].length == blueEdges[j].length == 2
    0 <= ai, bi, uj, vj < n

    """
    ### Canonical solution below ###
    from collections import defaultdict, deque
    adj_list = defaultdict(lambda: defaultdict(set))

    for u, v in redEdges:
        adj_list[u][0].add(v)

    for u, v in blueEdges:
        adj_list[u][1].add(v)

    dist = [[-1] * 2 for _ in range(n)]
    dist[0] = [0, 0]

    q = deque([(0, 0), (0, 1)])

    while q:
        node, color = q.popleft()
        next_color = color ^ 1

        for neighbor in adj_list[node][next_color]:
            if dist[neighbor][next_color] == -1:
                dist[neighbor][next_color] = dist[node][color] + 1
                q.append((neighbor, next_color))

    result = []
    for a, b in dist:
        result.append(min(a, b) if a != -1 and b != -1 else max(a, b))

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]], [[0,2],[2,1],[1,3],[4,0],[4,1],[4,2],[4,3]]) == [0,1,1,2,3]
	assert candidate(3, [[0,1],[1,2],[2,0]], [[2,1]]) == [0,1,-1]
	assert candidate(2, [], []) == [0,-1]
	assert candidate(3, [[0,1],[0,2]], [[1,0]]) == [0,1,1]
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]], [[0,2],[2,1],[1,3],[3,4]]) == [0,1,1,2,3]
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]], [[0,2],[2,1],[1,3],[0,4],[2,4]]) == [0,1,1,2,1]
	assert candidate(4, [[0,1],[1,2],[2,3],[3,1],[1,0]], [[2,3],[2,1]]) == [0,1,-1,-1]
	assert candidate(3, [[0,1],[1,2]], [[0,2]]) == [0,1,1]
	assert candidate(1, [], []) == [0]
	assert candidate(2, [[0,1]], []) == [0,1]
	assert candidate(3, [[0,1]], [[2,1]]) == [0,1,-1]
	assert candidate(3, [[0,1],[1,2]], []) == [0,1,-1]
	assert candidate(3, [[0,1]], [[1,2]]) == [0,1,2]
	assert candidate(2, [[0,1],[0,1],[0,1],[1,0],[1,0],[1,0]], []) == [0,1]
	assert candidate(4, [[0,1],[1,2],[2,3]], [[0,2],[2,1],[1,3]]) == [0,1,1,2]
def test_check():
	check(shortestAlternatingPaths)
# Metadata Difficulty: Medium
# Metadata Topics: breadth-first-search,graph
# Metadata Coverage: 100
