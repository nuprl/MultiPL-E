from typing import List


def findCenter(edges: List[List[int]]) -> int:
    """
    There is an undirected star graph consisting of n nodes labeled from 1 to n. A star graph is a graph where there is one center node and exactly n - 1 edges that connect the center node with every other node.
    You are given a 2D integer array edges where each edges[i] = [ui, vi] indicates that there is an edge between the nodes ui and vi. Return the center of the given star graph.
 
    Example 1:


    Input: edges = [[1,2],[2,3],[4,2]]
    Output: 2
    Explanation: As shown in the figure above, node 2 is connected to every other node, so 2 is the center.

    Example 2:

    Input: edges = [[1,2],[5,1],[1,3],[1,4]]
    Output: 1

 
    Constraints:

    3 <= n <= 105
    edges.length == n - 1
    edges[i].length == 2
    1 <= ui, vi <= n
    ui != vi
    The given edges represent a valid star graph.

    """
    ### Canonical solution below ###
    if edges[0][0] == edges[1][0] or edges[0][0] == edges[1][1]:
        return edges[0][0]
    return edges[0][1]




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0],[8,0],[9,0],[10,0],[11,0],[12,0]]) == 0
	assert candidate([[1,0],[2,0],[3,0],[4,0]]) == 0
	assert candidate([[2,1],[1,3]]) == 1
	assert candidate([[1,0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,0]]) == 0
	assert candidate([[1,0],[2,0],[3,1],[4,2],[5,3],[6,4]]) == 0
	assert candidate([[1,2],[2,3],[4,2]]) == 2
	assert candidate([[1,0],[2,1],[3,1],[4,2],[5,2],[6,3],[7,4]]) == 1
	assert candidate([[1,0],[2,1],[3,1],[4,2],[5,2],[6,4]]) == 1
	assert candidate([[-1,0],[1,0]]) == 0
	assert candidate([[1,0],[2,1],[3,2],[4,1]]) == 1
	assert candidate([[1,0],[2,1],[3,2],[4,3],[5,3]]) == 1
	assert candidate(
    [[1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [8, 0], [9, 0], [10, 0], [11, 0], [12, 0], [13, 0],
     [14, 0], [15, 0], [16, 0], [17, 0], [18, 0], [19, 0], [20, 0], [21, 0], [22, 0], [23, 0], [24, 0], [25, 0]]) == 0
	assert candidate([[1,0],[2,1],[3,1],[4,2],[5,2],[6,3],[7,3],[8,4],[9,4],[10,4],[11,5]]) == 1
	assert candidate([[1,2],[5,1],[1,3],[1,4]]) == 1
	assert candidate([[1,0],[2,1],[3,2],[4,3]]) == 1
	assert candidate(
    [[1, 0], [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1], [8, 1], [9, 1], [10, 1], [11, 1], [12, 1], [13, 1],
     [14, 1], [15, 1], [16, 1], [17, 1], [18, 1], [19, 1], [20, 1], [21, 1], [22, 1], [23, 1], [24, 1], [25, 1]]) == 1
	assert candidate([[1,0],[2,1],[3,2],[4,3],[5,4],[6,5]]) == 1
	assert candidate([[1,0],[2,1],[3,1],[4,3],[5,3],[6,5]]) == 1
	assert candidate([[1,0],[1,2]]) == 1
	assert candidate([[1,0],[2,0],[3,0],[4,0],[5,0],[6,0]]) == 0
	assert candidate([[1,0],[2,0],[3,0],[4,3],[5,4]]) == 0
def test_check():
	check(findCenter)
# Metadata Difficulty: Easy
# Metadata Topics: graph
# Metadata Coverage: 100
