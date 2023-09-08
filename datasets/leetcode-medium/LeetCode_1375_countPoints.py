from typing import List, Union


def countPoints(points: List[List[int]], queries: List[List[Union[int, float]]]) -> List[int]:
    """
    You are given an array points where points[i] = [xi, yi] is the coordinates of the ith point on a 2D plane. Multiple points can have the same coordinates.
    You are also given an array queries where queries[j] = [xj, yj, rj] describes a circle centered at (xj, yj) with a radius of rj.
    For each query queries[j], compute the number of points inside the jth circle. Points on the border of the circle are considered inside.
    Return an array answer, where answer[j] is the answer to the jth query.
 
    Example 1:


    Input: points = [[1,3],[3,3],[5,3],[2,2]], queries = [[2,3,1],[4,3,1],[1,1,2]]
    Output: [3,2,2]
    Explanation: The points and circles are shown above.
    queries[0] is the green circle, queries[1] is the red circle, and queries[2] is the blue circle.

    Example 2:


    Input: points = [[1,1],[2,2],[3,3],[4,4],[5,5]], queries = [[1,2,2],[2,2,2],[4,3,2],[4,3,3]]
    Output: [2,3,2,4]
    Explanation: The points and circles are shown above.
    queries[0] is green, queries[1] is red, queries[2] is blue, and queries[3] is purple.

 
    Constraints:

    1 <= points.length <= 500
    points[i].length == 2
    0 <= x​​​​​​i, y​​​​​​i <= 500
    1 <= queries.length <= 500
    queries[j].length == 3
    0 <= xj, yj <= 500
    1 <= rj <= 500
    All coordinates are integers.

 
    Follow up: Could you find the answer for each query in better complexity than O(n)?
    """
    ### Canonical solution below ###
    answer = []
    for query in queries:
        inside = 0
        for point in points:
            dx = point[0] - query[0]
            dy = point[1] - query[1]
            if dx * dx + dy * dy <= query[2] * query[2]:
                inside += 1
        answer.append(inside)
    return answer




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[0,0],[0,0],[0,0],[0,0]], [[0,0,0]]) == [5]
	assert candidate([[5,5]], [[1,1,1]]) == [0]
	assert candidate([[1,1]], [[1,1,1]]) == [1]
	assert candidate([[0,0],[0,0],[0,0],[0,0],[0,0]], [[0,0,1]]) == [5]
	assert candidate([[2,2],[5,5],[7,7],[8,8]], [[2,2,0],[5,5,0],[7,7,0],[8,8,0]]) == [1,1,1,1]
	assert candidate([[2,2],[5,5],[7,7],[8,8]], [[2,2,0]]) == [1]
	assert candidate([[2,2],[5,5],[7,7],[8,8]], [[1,1,0]]) == [0]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[1,1,0],[2,2,0],[3,3,0],[4,4,0],[5,5,0]]) == [1,1,1,1,1]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[2,2,2],[4,4,2],[6,6,2]]) == [3,3,1]
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]], [[4,4,2]]) == [3]
	assert candidate([[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]], [[0,0,1]]) == [10]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[4,3,3]]) == [4]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[1,2,2],[2,2,2],[4,3,2],[4,3,3]]) == [2,3,2,4]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[3,4,2]]) == [2]
	assert candidate([[500,500]], [[500,500,500]]) == [1]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[2,2,2]]) == [3]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[6,6,1]]) == [0]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[1,1,1],[2,2,1],[3,3,1],[4,4,1],[5,5,1]]) == [1,1,1,1,1]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], [[1,1,1.1],[2,2,1.1],[3,3,1.1],[4,4,1.1],[5,5,1.1]]) == [1,1,1,1,1]
	assert candidate([[1,3],[3,3],[5,3],[2,2]], [[2,3,1],[4,3,1],[1,1,2]]) == [3,2,2]
def test_check():
	check(countPoints)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,geometry
# Metadata Coverage: 100
