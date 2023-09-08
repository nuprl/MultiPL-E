from typing import List, Tuple


def criticalConnections(n: int, connections: List[List[int]]) -> List[Tuple[int, int]]:
    """
    There are n servers numbered from 0 to n - 1 connected by undirected server-to-server connections forming a network where connections[i] = [ai, bi] represents a connection between servers ai and bi. Any server can reach other servers directly or indirectly through the network.
    A critical connection is a connection that, if removed, will make some servers unable to reach some other server.
    Return all critical connections in the network in any order.
 
    Example 1:


    Input: n = 4, connections = [[0,1],[1,2],[2,0],[1,3]]
    Output: [[1,3]]
    Explanation: [[3,1]] is also accepted.

    Example 2:

    Input: n = 2, connections = [[0,1]]
    Output: [[0,1]]

 
    Constraints:

    2 <= n <= 105
    n - 1 <= connections.length <= 105
    0 <= ai, bi <= n - 1
    ai != bi
    There are no repeated connections.

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(node, parent, depth, rank, graph, result):
        rank[node] = depth
        for neighbor in graph[node]:
            if neighbor == parent:
                continue
            if rank[neighbor] == -1:
                dfs(neighbor, node, depth + 1, rank, graph, result)
            rank[node] = min(rank[node], rank[neighbor])
            if rank[neighbor] == depth + 1:
                result.append((node, neighbor))

    graph = defaultdict(list)
    for fr, to in connections:
        graph[fr].append(to)
        graph[to].append(fr)

    rank = [-1] * n
    result = []
    dfs(0, -1, 0, rank, graph, result)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(4, [[0,1],[1,2],[2,3],[3,0]]) == []
	assert candidate(2, [[0,1]]) == [(0, 1)]
	assert candidate(3, [[0,1],[1,2],[2,0]]) == []
	assert candidate(6, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,0]]) == []
	assert candidate(6, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,0],[0,3],[1,4],[3,2]]) == []
	assert candidate(4, [[0,1],[1,2],[2,0],[1,3]]) == [(1, 3)]
	assert candidate(1, []) == []
def test_check():
	check(criticalConnections)
# Metadata Difficulty: Hard
# Metadata Topics: depth-first-search,graph,biconnected-component
# Metadata Coverage: 100
