from typing import List


def largestPathValue(colors: str, edges: List[List[int]]) -> int:
    """
    There is a directed graph of n colored nodes and m edges. The nodes are numbered from 0 to n - 1.
    You are given a string colors where colors[i] is a lowercase English letter representing the color of the ith node in this graph (0-indexed). You are also given a 2D array edges where edges[j] = [aj, bj] indicates that there is a directed edge from node aj to node bj.
    A valid path in the graph is a sequence of nodes x1 -> x2 -> x3 -> ... -> xk such that there is a directed edge from xi to xi+1 for every 1 <= i < k. The color value of the path is the number of nodes that are colored the most frequently occurring color along that path.
    Return the largest color value of any valid path in the given graph, or -1 if the graph contains a cycle.
 
    Example 1:


    Input: colors = "abaca", edges = [[0,1],[0,2],[2,3],[3,4]]
    Output: 3
    Explanation: The path 0 -> 2 -> 3 -> 4 contains 3 nodes that are colored "a" (red in the above image).

    Example 2:


    Input: colors = "a", edges = [[0,0]]
    Output: -1
    Explanation: There is a cycle from 0 to 0.

 
    Constraints:

    n == colors.length
    m == edges.length
    1 <= n <= 105
    0 <= m <= 105
    colors consists of lowercase English letters.
    0 <= aj, bj < n
    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(node):
        if not cache[node][ord(colors[node]) - ord('a')]:
            cache[node][ord(colors[node]) - ord('a')] = 1
            for neighbor in graph[node]:
                cache[node][ord(colors[node]) - ord('a')] = max(cache[node][ord(colors[node]) - ord('a')],
                                                                1 + dfs(neighbor))
        return cache[node][ord(colors[node]) - ord('a')]

    n = len(colors)
    graph = [set() for _ in range(n)]
    for a, b in edges:
        graph[a].add(b)

    cache = [[0] * 26 for _ in range(n)]
    in_degree = [0] * n
    for a, b in edges:
        in_degree[b] += 1
    res = -1
    for i in range(n):
        if in_degree[i] == 0:
            res = max(res, dfs(i))
    return res




### Unit tests below ###
def check(candidate):
	assert candidate("aababba", [[4, 0], [1, 0], [4, 3], [1, 4], [4, 2]]) == 3
	assert candidate(
    "aaa", [[1, 2], [0, 2], [2, 1], [2, 0], [1, 0]]
) == -1
	assert candidate("aaa", [[0, 1], [1, 2], [2, 0]]) == -1
	assert candidate("a", [[0, 0]]) == -1
	assert candidate("aaaa", [[3, 0], [0, 1], [2, 3], [2, 1]]) == 4
	assert candidate(
    "aababbaa", [[4, 0], [1, 0], [4, 3], [1, 4], [4, 2], [0, 2], [1, 2]]
) == 4
def test_check():
	check(largestPathValue)
# Metadata Difficulty: Hard
# Metadata Topics: hash-table,dynamic-programming,graph,topological-sort,memoization,counting
# Metadata Coverage: 100
