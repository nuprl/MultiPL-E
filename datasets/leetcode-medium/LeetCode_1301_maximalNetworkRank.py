from typing import List


def maximalNetworkRank(n: int, roads: List[List[int]]) -> int:
    """
    There is an infrastructure of n cities with some number of roads connecting these cities. Each roads[i] = [ai, bi] indicates that there is a bidirectional road between cities ai and bi.
    The network rank of two different cities is defined as the total number of directly connected roads to either city. If a road is directly connected to both cities, it is only counted once.
    The maximal network rank of the infrastructure is the maximum network rank of all pairs of different cities.
    Given the integer n and the array roads, return the maximal network rank of the entire infrastructure.
 
    Example 1:


    Input: n = 4, roads = [[0,1],[0,3],[1,2],[1,3]]
    Output: 4
    Explanation: The network rank of cities 0 and 1 is 4 as there are 4 roads that are connected to either 0 or 1. The road between 0 and 1 is only counted once.

    Example 2:


    Input: n = 5, roads = [[0,1],[0,3],[1,2],[1,3],[2,3],[2,4]]
    Output: 5
    Explanation: There are 5 roads that are connected to cities 1 or 2.

    Example 3:

    Input: n = 8, roads = [[0,1],[1,2],[2,3],[2,4],[5,6],[5,7]]
    Output: 5
    Explanation: The network rank of 2 and 5 is 5. Notice that all the cities do not have to be connected.

 
    Constraints:

    2 <= n <= 100
    0 <= roads.length <= n * (n - 1) / 2
    roads[i].length == 2
    0 <= ai, bi <= n-1
    ai != bi
    Each pair of cities has at most one road connecting them.

    """
    ### Canonical solution below ###
    degree = [0] * n
    s = set()

    for road in roads:
        degree[road[0]] += 1
        degree[road[1]] += 1
        s.add(tuple(sorted(road)))

    ans = 0
    for i in range(n):
        for j in range(i + 1, n):
            ans = max(ans, degree[i] + degree[j] - (1 if (i, j) in s else 0))
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(3, [[0,1],[1,2]]) == 2
	assert candidate(5, [[0,1],[0,2],[1,2]]) == 3
	assert candidate(9, [[0,1],[0,2],[0,3],[1,4],[2,5],[3,6],[5,7]]) == 5
	assert candidate(9, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,8]]) == 4
	assert candidate(5, [[0,1],[1,2],[2,3],[3,4]]) == 4
	assert candidate(8, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]) == 4
	assert candidate(6, [[0,1],[0,2],[0,3],[2,4],[2,5]]) == 5
	assert candidate(5, [[0,1],[0,2],[0,3],[1,4],[2,3]]) == 4
	assert candidate(6, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,2]]) == 5
	assert candidate(2, [[0,1]]) == 1
	assert candidate(6, [[0,1],[0,2],[1,3],[2,4],[3,5]]) == 4
	assert candidate(4, [[0,1],[0,2],[1,2],[1,3]]) == 4
	assert candidate(10, [[0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,8],[0,9]]) == 9
	assert candidate(7, [[0,1],[0,2],[0,3],[0,4],[0,5],[0,6]]) == 6
	assert candidate(5, [[0,1],[0,2],[0,3],[0,4]]) == 4
	assert candidate(7, [[0,1],[1,2],[2,3],[3,4],[4,5],[5,6]]) == 4
	assert candidate(5, [[0,1],[0,2],[2,3],[2,4]]) == 4
	assert candidate(6, [[0,1],[0,2],[0,3],[3,4],[4,5]]) == 5
	assert candidate(4, [[0,1],[1,2],[1,3]]) == 3
	assert candidate(9, [[0,1],[0,2],[0,3],[1,4],[1,5],[2,6],[2,7],[3,8]]) == 6
	assert candidate(4, [[0,1],[1,2],[2,3]]) == 3
	assert candidate(6, [[0,1],[0,2],[1,2],[2,3],[3,4],[4,5]]) == 5
def test_check():
	check(maximalNetworkRank)
# Metadata Difficulty: Medium
# Metadata Topics: graph
# Metadata Coverage: 100
