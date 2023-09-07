from typing import List


def frogPosition(n: int, edges: List[List[int]], t: int, target: int) -> float:
    """
    Given an undirected tree consisting of n vertices numbered from 1 to n. A frog starts jumping from vertex 1. In one second, the frog jumps from its current vertex to another unvisited vertex if they are directly connected. The frog can not jump back to a visited vertex. In case the frog can jump to several vertices, it jumps randomly to one of them with the same probability. Otherwise, when the frog can not jump to any unvisited vertex, it jumps forever on the same vertex.
    The edges of the undirected tree are given in the array edges, where edges[i] = [ai, bi] means that exists an edge connecting the vertices ai and bi.
    Return the probability that after t seconds the frog is on the vertex target. Answers within 10-5 of the actual answer will be accepted.
 
    Example 1:


    Input: n = 7, edges = [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], t = 2, target = 4
    Output: 0.16666666666666666 
    Explanation: The figure above shows the given graph. The frog starts at vertex 1, jumping with 1/3 probability to the vertex 2 after second 1 and then jumping with 1/2 probability to vertex 4 after second 2. Thus the probability for the frog is on the vertex 4 after 2 seconds is 1/3 * 1/2 = 1/6 = 0.16666666666666666. 

    Example 2:


    Input: n = 7, edges = [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], t = 1, target = 7
    Output: 0.3333333333333333
    Explanation: The figure above shows the given graph. The frog starts at vertex 1, jumping with 1/3 = 0.3333333333333333 probability to the vertex 7 after second 1. 

 
    Constraints:

    1 <= n <= 100
    edges.length == n - 1
    edges[i].length == 2
    1 <= ai, bi <= n
    1 <= t <= 50
    1 <= target <= n

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(node, parent, t, target, graph, prob, ans):
        if t == 0:
            if node == target:
                ans[0] += prob
            return

        has_child = False
        for neighbor in graph[node]:
            if neighbor != parent:
                has_child = True
                dfs(neighbor, node, t - 1, target, graph, prob / (len(graph[node]) - (1 if node != 1 else 0)), ans)

        if not has_child and node == target:
            ans[0] += prob
    graph = defaultdict(list)
    for a, b in edges:
        graph[a].append(b)
        graph[b].append(a)

    ans = [0.0]
    dfs(1, -1, t, target, graph, 1.0, ans)
    return ans[0]




### Unit tests below ###
def check(candidate):
	assert candidate(7, [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], 2, 4) == 0.16666666666666666
	assert candidate(7, [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], 2, 3) == 0.0
	assert candidate(3, [], 3, 1) == 1.0
	assert candidate(3, [[1,2],[1,3]], 1, 3) == 0.5
	assert candidate(1, [], 1, 1) == 1.0
	assert candidate(7, [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], 1, 1) == 0.0
	assert candidate(3, [[1,2],[1,3]], 2, 2) == 0.5
	assert candidate(3, [[1,2],[1,3],[2,3]], 2, 2) == 0.5
	assert candidate(3, [[3,2],[3,1]], 1, 2) == 0.0
	assert candidate(7, [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], 0, 1) == 1.0
	assert candidate(7, [[1,2],[1,3],[1,7],[2,4],[2,6],[3,5]], 1, 7) == 0.3333333333333333
	assert candidate(1, [], 5, 1) == 1.0
	assert candidate(4, [[1,2],[1,3],[1,4]], 1, 4) == 0.3333333333333333
	assert candidate(2, [], 2, 1) == 1.0
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5]], 3, 5) == 0.0
	assert candidate(5, [[1,2],[2,3],[3,4],[4,5]], 4, 5) == 1.0
def test_check():
	check(frogPosition)
# Metadata Difficulty: Hard
# Metadata Topics: tree,depth-first-search,breadth-first-search,graph
# Metadata Coverage: 100
