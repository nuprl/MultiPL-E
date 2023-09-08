from typing import List


def findTheCity(n: int, edges: List[List[int]], distanceThreshold: int) -> int:
    """
    There are n cities numbered from 0 to n-1. Given the array edges where edges[i] = [fromi, toi, weighti] represents a bidirectional and weighted edge between cities fromi and toi, and given the integer distanceThreshold.
    Return the city with the smallest number of cities that are reachable through some path and whose distance is at most distanceThreshold, If there are multiple such cities, return the city with the greatest number.
    Notice that the distance of a path connecting cities i and j is equal to the sum of the edges' weights along that path.
 
    Example 1:


    Input: n = 4, edges = [[0,1,3],[1,2,1],[1,3,4],[2,3,1]], distanceThreshold = 4
    Output: 3
    Explanation: The figure above describes the graph. 
    The neighboring cities at a distanceThreshold = 4 for each city are:
    City 0 -> [City 1, City 2] 
    City 1 -> [City 0, City 2, City 3] 
    City 2 -> [City 0, City 1, City 3] 
    City 3 -> [City 1, City 2] 
    Cities 0 and 3 have 2 neighboring cities at a distanceThreshold = 4, but we have to return city 3 since it has the greatest number.

    Example 2:


    Input: n = 5, edges = [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]], distanceThreshold = 2
    Output: 0
    Explanation: The figure above describes the graph. 
    The neighboring cities at a distanceThreshold = 2 for each city are:
    City 0 -> [City 1] 
    City 1 -> [City 0, City 4] 
    City 2 -> [City 3, City 4] 
    City 3 -> [City 2, City 4]
    City 4 -> [City 1, City 2, City 3] 
    The city 0 has 1 neighboring city at a distanceThreshold = 2.

 
    Constraints:

    2 <= n <= 100
    1 <= edges.length <= n * (n - 1) / 2
    edges[i].length == 3
    0 <= fromi < toi < n
    1 <= weighti, distanceThreshold <= 10^4
    All pairs (fromi, toi) are distinct.

    """
    ### Canonical solution below ###
    distance = [[1e5] * n for _ in range(n)]

    for edge in edges:
        distance[edge[0]][edge[1]] = edge[2]
        distance[edge[1]][edge[0]] = edge[2]

    for i in range(n):
        distance[i][i] = 0

    for k in range(n):
        for i in range(n):
            for j in range(n):
                distance[i][j] = min(distance[i][j], distance[i][k] + distance[k][j])

    res, minReachable = 0, n
    for i in range(n):
        reachable = sum(1 for j in range(n) if distance[i][j] <= distanceThreshold)
        if reachable <= minReachable:
            minReachable = reachable
            res = i
    return res




### Unit tests below ###
def check(candidate):
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 100) == 7
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 3) == 7
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 2) == 7
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 5) == 7
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 1) == 7
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1]], 4) == 7
	assert candidate(5, [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]], 2) == 0
	assert candidate(8, [[0,1,1],[1,2,1],[2,3,1],[3,4,1],[4,5,1],[5,6,1],[6,7,1],[7,0,1]], 2) == 7
	assert candidate(4, [[0,1,3],[1,2,1],[1,3,4],[2,3,1]], 4) == 3
	assert candidate(5, [[0,1,2],[0,4,8],[1,2,3],[1,4,2],[2,3,1],[3,4,1]], 3) == 0
	assert candidate(6, [[0,1,10],[1,2,10],[2,3,10],[3,4,10],[4,5,10]], 30) == 5
def test_check():
	check(findTheCity)
# Metadata Difficulty: Medium
# Metadata Topics: dynamic-programming,graph,shortest-path
# Metadata Coverage: 100
