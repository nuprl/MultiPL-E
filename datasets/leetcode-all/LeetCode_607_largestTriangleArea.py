from typing import Union, List


def largestTriangleArea(points: List[Union[List[Union[int, float]], List[int], List[float]]]) -> float:
    """
    Given an array of points on the X-Y plane points where points[i] = [xi, yi], return the area of the largest triangle that can be formed by any three different points. Answers within 10-5 of the actual answer will be accepted.
 
    Example 1:


    Input: points = [[0,0],[0,1],[1,0],[0,2],[2,0]]
    Output: 2.00000
    Explanation: The five points are shown in the above figure. The red triangle is the largest.

    Example 2:

    Input: points = [[1,0],[0,0],[0,1]]
    Output: 0.50000

 
    Constraints:

    3 <= points.length <= 50
    -50 <= xi, yi <= 50
    All the given points are unique.

    """
    ### Canonical solution below ###
    from itertools import combinations
    return max(0.5 * abs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) for (x1, y1), (x2, y2), (x3, y3) in combinations(points, 3))




### Unit tests below ###
def check(candidate):
	assert candidate([[0, 0], [2, 0], [0, 2], [1, 0], [1, 5], [3, 0], [2, 5], [3, 2], [1, 2]]) == 7.5
	assert candidate([[0,0],[5,0],[0,5],[5,5],[2.5,2.5]]) == 12.5
	assert candidate([[0,0],[1,0],[0,1]]) == 0.5
	assert candidate([[0,0],[0,1],[1,0]]) == 0.5
	assert candidate([[0,0],[5,0],[0,5]]) == 12.5
	assert candidate([[1,1],[0,0],[-1,-1],[0,2],[-2,0]]) == 2.0
	assert candidate([[0,0],[0,5],[5,0]]) == 12.5
	assert candidate([[0,0],[5,0],[0,5],[5,5]]) == 12.5
	assert candidate([[1,1],[2,2],[3,3]]) == 0.0
	assert candidate(
    [[0, 0], [0, 1], [1, 1], [2, 2], [0, 2]]) == 2.0
	assert candidate([[0,0],[0,1],[1,1]]) == 0.5
	assert candidate([[0,0],[5,5],[10,0],[10,5],[5,2.5]]) == 25.0
	assert candidate([[0,0],[1,0],[1,1],[0,1]]) == 0.5
	assert candidate([[0,0],[1,0],[1,1]]) == 0.5
	assert candidate([[0,0],[0,5],[5,5]]) == 12.5
	assert candidate([[0,0],[0,5],[5,0],[5,5],[2.5,2.5]]) == 12.5
	assert candidate([[0,0],[5,5],[5,0]]) == 12.5
	assert candidate([[-1,-1],[1,1],[-1,1],[1,-1]]) == 2.0
	assert candidate([[0,0],[1,1],[1,0]]) == 0.5
	assert candidate([[-2,-2],[2,2],[-2,2],[2,-2]]) == 8.0
	assert candidate([[0,0],[5,0],[0,5],[5,5],[10,5]]) == 25.0
	assert candidate(
    [[1, 0], [0, 0], [0, 1], [0, 2], [2, 0]]) == 2.0
	assert candidate( [[0,0],[5,0],[5,5]]) == 12.5
	assert candidate([[0,0],[1,0],[1,1],[0,1],[0.5,0.5]]) == 0.5
	assert candidate([[-2,-2],[2,2],[-2,2],[2,-2],[0,0]]) == 8.0
	assert candidate([[0,0],[5,0],[5,5]]) == 12.5
	assert candidate([[0, 0], [1, 1], [1, 0]]) == 0.5
def test_check():
	check(largestTriangleArea)
# Metadata Difficulty: Easy
# Metadata Topics: array,math,geometry
# Metadata Coverage: 100
