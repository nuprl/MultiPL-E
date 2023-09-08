from typing import List


def sumOfDistancesInTree(n: int, edges: List[List[int]]) -> List[int]:
    """
    There is an undirected connected tree with n nodes labeled from 0 to n - 1 and n - 1 edges.
    You are given the integer n and the array edges where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the tree.
    Return an array answer of length n where answer[i] is the sum of the distances between the ith node in the tree and all other nodes.
 
    Example 1:


    Input: n = 6, edges = [[0,1],[0,2],[2,3],[2,4],[2,5]]
    Output: [8,12,6,10,10,10]
    Explanation: The tree is shown above.
    We can see that dist(0,1) + dist(0,2) + dist(0,3) + dist(0,4) + dist(0,5)
    equals 1 + 1 + 2 + 2 + 2 = 8.
    Hence, answer[0] = 8, and so on.

    Example 2:


    Input: n = 1, edges = []
    Output: [0]

    Example 3:


    Input: n = 2, edges = [[1,0]]
    Output: [1,1]

 
    Constraints:

    1 <= n <= 3 * 104
    edges.length == n - 1
    edges[i].length == 2
    0 <= ai, bi < n
    ai != bi
    The given input represents a valid tree.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    tree = defaultdict(set)
    for u, v in edges:
        tree[u].add(v)
        tree[v].add(u)

    count = [1] * n
    res = [0] * n

    def dfs(node, parent):
        for child in tree[node]:
            if child != parent:
                dfs(child, node)
                count[node] += count[child]
                res[node] += res[child] + count[child]

    def dfs2(node, parent):
        for child in tree[node]:
            if child != parent:
                res[child] = res[node] - count[child] + n - count[child]
                dfs2(child, node)

    dfs(0, -1)
    dfs2(0, -1)

    return res




### Unit tests below ###
def check(candidate):
	assert candidate(3, [[0,1],[0,2]]) == [2, 3, 3]
	assert candidate(1, []) == [0]
	assert candidate(2, [[1,0]]) == [1, 1]
	assert candidate(6, [[0,1],[0,2],[2,3],[2,4],[2,5]]) == [8, 12, 6, 10, 10, 10]
def test_check():
	check(sumOfDistancesInTree)
# Metadata Difficulty: Hard
# Metadata Topics: dynamic-programming,tree,depth-first-search,graph
# Metadata Coverage: 100
