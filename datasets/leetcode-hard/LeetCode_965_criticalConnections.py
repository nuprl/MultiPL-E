from typing import List


def criticalConnections(n: int, connections: List[List[int]]) -> List[List[int]]:
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
    graph = defaultdict(list)
    for u, v in connections:
        graph[u].append(v)
        graph[v].append(u)

    ans = []
    low, disc = [-1] * n, [-1] * n
    time = [0]

    def dfs(u, parent):
        low[u] = disc[u] = time[0]
        time[0] += 1
        for v in graph[u]:
            if v == parent:
                continue
            if disc[v] == -1:
                dfs(v, u)
                low[u] = min(low[u], low[v])
                if low[v] > disc[u]:
                    ans.append([u, v])
            else:
                low[u] = min(low[u], disc[v])

    dfs(0, -1)
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(3, [[0, 1], [1, 2], [2, 0]]) == []
	assert candidate(4, [[0, 1], [1, 2], [2, 0], [1, 3]]) == [[1, 3]]
	assert candidate(8, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 0]]) == []
	assert candidate(8, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 0], [1, 7]]) == []
	assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 0], [0, 3]]) == []
	assert candidate(4, [[0, 1], [1, 2], [2, 3], [3, 0], [2, 0]]) == []
	assert candidate(6, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 0]]) == []
	assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 0], [0, 4], [4, 1], [1, 4]]) == []
	assert candidate(7, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 0]]) == []
	assert candidate(5, [[0, 1], [1, 2], [2, 3], [3, 4], [4, 0]]) == []
def test_check():
	check(criticalConnections)
# Metadata Difficulty: Hard
# Metadata Topics: depth-first-search,graph,biconnected-component
# Metadata Coverage: 100
