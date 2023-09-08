from typing import List


def minCostConnectPoints(points: List[List[int]]) -> int:
    """
    You are given an array points representing integer coordinates of some points on a 2D-plane, where points[i] = [xi, yi].
    The cost of connecting two points [xi, yi] and [xj, yj] is the manhattan distance between them: |xi - xj| + |yi - yj|, where |val| denotes the absolute value of val.
    Return the minimum cost to make all points connected. All points are connected if there is exactly one simple path between any two points.
 
    Example 1:


    Input: points = [[0,0],[2,2],[3,10],[5,2],[7,0]]
    Output: 20
    Explanation: 

    We can connect the points as shown above to get the minimum cost of 20.
    Notice that there is a unique path between every pair of points.

    Example 2:

    Input: points = [[3,12],[-2,5],[-4,1]]
    Output: 18

 
    Constraints:

    1 <= points.length <= 1000
    -106 <= xi, yi <= 106
    All pairs (xi, yi) are distinct.

    """
    ### Canonical solution below ###
    n = len(points)
    cost = [float('inf')] * n
    visited = [False] * n
    cost[0] = 0

    ans = 0

    for _ in range(n):
        min_cost = float('inf')
        cur_point = -1
        for j in range(n):
            if not visited[j] and cost[j] < min_cost:
                min_cost = cost[j]
                cur_point = j

        visited[cur_point] = True
        ans += min_cost

        for j in range(n):
            if not visited[j]:
                new_cost = abs(points[cur_point][0] - points[j][0]) + abs(points[cur_point][1] - points[j][1])
                cost[j] = min(cost[j], new_cost)

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([[10,5],[3,2],[5,5],[4,2],[2,3]]) == 12
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4]]) == 8
	assert candidate([[0,0]]) == 0
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]]) == 8
	assert candidate([[3,12],[-2,5],[-4,1]]) == 18
	assert candidate(
    [[-1000000,-1000000],[1000000,1000000]]) == 4000000
	assert candidate([[0,0],[2,2],[3,10],[5,2],[7,0]]) == 20
	assert candidate([[0,0],[0,1],[1,0],[1,1],[2,2],[2,3],[3,2],[3,3]]) == 8
def test_check():
	check(minCostConnectPoints)
# Metadata Difficulty: Medium
# Metadata Topics: array,union-find,graph,minimum-spanning-tree
# Metadata Coverage: 100
