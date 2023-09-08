from typing import List


def gardenNoAdj(n: int, paths: List[List[int]]) -> List[int]:
    """
    You have n gardens, labeled from 1 to n, and an array paths where paths[i] = [xi, yi] describes a bidirectional path between garden xi to garden yi. In each garden, you want to plant one of 4 types of flowers.
    All gardens have at most 3 paths coming into or leaving it.
    Your task is to choose a flower type for each garden such that, for any two gardens connected by a path, they have different types of flowers.
    Return any such a choice as an array answer, where answer[i] is the type of flower planted in the (i+1)th garden. The flower types are denoted 1, 2, 3, or 4. It is guaranteed an answer exists.
 
    Example 1:

    Input: n = 3, paths = [[1,2],[2,3],[3,1]]
    Output: [1,2,3]
    Explanation:
    Gardens 1 and 2 have different types.
    Gardens 2 and 3 have different types.
    Gardens 3 and 1 have different types.
    Hence, [1,2,3] is a valid answer. Other valid answers include [1,2,4], [1,4,2], and [3,2,1].

    Example 2:

    Input: n = 4, paths = [[1,2],[3,4]]
    Output: [1,2,1,2]

    Example 3:

    Input: n = 4, paths = [[1,2],[2,3],[3,4],[4,1],[1,3],[2,4]]
    Output: [1,2,3,4]

 
    Constraints:

    1 <= n <= 104
    0 <= paths.length <= 2 * 104
    paths[i].length == 2
    1 <= xi, yi <= n
    xi != yi
    Every garden has at most 3 paths coming into or leaving it.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    graph = defaultdict(set)
    for x, y in paths:
        graph[x - 1].add(y - 1)
        graph[y - 1].add(x - 1)

    result = [0] * n
    for i in range(n):
        used_flowers = {result[neighbor] for neighbor in graph[i]}
        for flower in range(1, 5):
            if flower not in used_flowers:
                result[i] = flower
                break
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(2, [[1,2],[1,2],[2,1]]) == [1, 2]
	assert candidate(3, [[1,2],[2,3],[3,1]]) == [1, 2, 3]
	assert candidate(3, [[2,3]]) == [1, 1, 2]
	assert candidate(2, [[1,2]]) == [1, 2]
	assert candidate(4, [[1,2],[1,3],[3,4]]) == [1, 2, 2, 1]
	assert candidate(6, [[1,2],[2,3],[3,1],[4,5],[5,6],[6,4]]) == [1, 2, 3, 1, 2, 3]
	assert candidate(4, [[1,2],[2,3],[3,4],[4,1],[1,3],[2,4]]) == [1, 2, 3, 4]
	assert candidate(3, [[1,2],[1,3],[2,3]]) == [1, 2, 3]
	assert candidate(4, [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]) == [1, 2, 3, 4]
	assert candidate(4, [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4],[3,2],[4,2]]) == [1, 2, 3, 4]
	assert candidate(3, [[1,2]]) == [1, 2, 1]
	assert candidate(4, [[1,2],[1,3],[2,3],[3,4]]) == [1, 2, 3, 1]
	assert candidate(4, [[1,2],[3,4]]) == [1, 2, 1, 2]
	assert candidate(1, []) == [1]
	assert candidate(4, [[1,2],[1,3],[2,3]]) == [1, 2, 3, 1]
def test_check():
	check(gardenNoAdj)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph
# Metadata Coverage: 100
