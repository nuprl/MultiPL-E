from typing import List


def minimumHammingDistance(source: List[int], target: List[int], allowedSwaps: List[List[int]]) -> int:
    """
    You are given two integer arrays, source and target, both of length n. You are also given an array allowedSwaps where each allowedSwaps[i] = [ai, bi] indicates that you are allowed to swap the elements at index ai and index bi (0-indexed) of array source. Note that you can swap elements at a specific pair of indices multiple times and in any order.
    The Hamming distance of two arrays of the same length, source and target, is the number of positions where the elements are different. Formally, it is the number of indices i for 0 <= i <= n-1 where source[i] != target[i] (0-indexed).
    Return the minimum Hamming distance of source and target after performing any amount of swap operations on array source.
 
    Example 1:

    Input: source = [1,2,3,4], target = [2,1,4,5], allowedSwaps = [[0,1],[2,3]]
    Output: 1
    Explanation: source can be transformed the following way:
    - Swap indices 0 and 1: source = [2,1,3,4]
    - Swap indices 2 and 3: source = [2,1,4,3]
    The Hamming distance of source and target is 1 as they differ in 1 position: index 3.

    Example 2:

    Input: source = [1,2,3,4], target = [1,3,2,4], allowedSwaps = []
    Output: 2
    Explanation: There are no allowed swaps.
    The Hamming distance of source and target is 2 as they differ in 2 positions: index 1 and index 2.

    Example 3:

    Input: source = [5,1,2,4,3], target = [1,5,4,2,3], allowedSwaps = [[0,4],[4,2],[1,3],[1,4]]
    Output: 0

 
    Constraints:

    n == source.length == target.length
    1 <= n <= 105
    1 <= source[i], target[i] <= 105
    0 <= allowedSwaps.length <= 105
    allowedSwaps[i].length == 2
    0 <= ai, bi <= n - 1
    ai != bi

    """
    ### Canonical solution below ###
    from collections import defaultdict

    def dfs(node, visited, graph, group):
        if visited[node]:
            return
        visited[node] = 1
        group.append(node)
        for neighbor in graph[node]:
            dfs(neighbor, visited, graph, group)
    n = len(source)
    graph = defaultdict(list)
    for a, b in allowedSwaps:
        graph[a].append(b)
        graph[b].append(a)

    res = 0
    visited = [0] * n
    for i in range(n):
        if not visited[i]:
            group = []
            dfs(i, visited, graph, group)
            count = defaultdict(int)

            for node in group:
                count[source[node]] += 1
            for node in group:
                if count[target[node]] > 0:
                    res += 1
                    count[target[node]] -= 1

    return n - res




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1, 2, 3, 4, 5], [5, 4, 3, 2, 1], []) == 4
	assert candidate([1, 2, 3, 4], [1, 2, 3, 4], []) == 0
	assert candidate(
    [5, 1, 2, 4, 3], [1, 5, 4, 2, 3], [[0, 4], [4, 2], [1, 3], [1, 4]]) == 0
	assert candidate([1, 2, 3, 4], [2, 1, 4, 3], []) == 4
	assert candidate(
    [1, 2, 3, 4], [2, 1, 4, 3], []) == 4
	assert candidate([1, 2, 3, 4, 5], [5, 4, 3, 2, 1], [[0, 1]]) == 4
def test_check():
	check(minimumHammingDistance)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,union-find
# Metadata Coverage: 100
