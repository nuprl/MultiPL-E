from typing import List


def nearestValidPoint(x: int, y: int, points: List[List[int]]) -> int:
    """
    You are given two integers, x and y, which represent your current location on a Cartesian grid: (x, y). You are also given an array points where each points[i] = [ai, bi] represents that a point exists at (ai, bi). A point is valid if it shares the same x-coordinate or the same y-coordinate as your location.
    Return the index (0-indexed) of the valid point with the smallest Manhattan distance from your current location. If there are multiple, return the valid point with the smallest index. If there are no valid points, return -1.
    The Manhattan distance between two points (x1, y1) and (x2, y2) is abs(x1 - x2) + abs(y1 - y2).
 
    Example 1:

    Input: x = 3, y = 4, points = [[1,2],[3,1],[2,4],[2,3],[4,4]]
    Output: 2
    Explanation: Of all the points, only [3,1], [2,4] and [4,4] are valid. Of the valid points, [2,4] and [4,4] have the smallest Manhattan distance from your current location, with a distance of 1. [2,4] has the smallest index, so return 2.
    Example 2:

    Input: x = 3, y = 4, points = [[3,4]]
    Output: 0
    Explanation: The answer is allowed to be on the same location as your current location.
    Example 3:

    Input: x = 3, y = 4, points = [[2,3]]
    Output: -1
    Explanation: There are no valid points.
 
    Constraints:

    1 <= points.length <= 104
    points[i].length == 2
    1 <= x, y, ai, bi <= 104

    """
    ### Canonical solution below ###
    min_distance = float('inf')
    min_index = -1

    for i, point in enumerate(points):
        if x == point[0] or y == point[1]:
            distance = abs(x - point[0]) + abs(y - point[1])
            if distance < min_distance:
                min_distance = distance
                min_index = i

    return min_index




### Unit tests below ###
def check(candidate):
	assert candidate(3, 4, [[2,3]]) == -1
	assert candidate(1, 1, [[5,5],[1,1],[2,2],[3,3],[4,4]]) == 1
	assert candidate(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4]]) == 2
	assert candidate(3, 4, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 2
	assert candidate(1, 1, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 0
	assert candidate(3, 3, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 2
	assert candidate(3, 3, [[3,3],[4,4],[5,5],[1,1],[2,2]]) == 0
	assert candidate(5, 5, [[5,5],[1,1],[2,2],[3,3],[4,4]]) == 0
	assert candidate(4, 4, [[-1,4],[-2,4],[3,4],[4,4]]) == 3
	assert candidate(2, 4, [[3,4],[1,4],[1,1],[2,3]]) == 0
	assert candidate(2, 0, [[2,0],[2,2],[2,4]]) == 0
	assert candidate(2, 2, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 1
	assert candidate(3, 4, [[1,2],[3,1],[2,3],[4,4]]) == 3
	assert candidate(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4],[5,5]]) == 2
	assert candidate(1, 2, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 0
	assert candidate(2, 2, [[1,1],[2,2],[3,3]]) == 1
	assert candidate(3, 3, [[1,1],[3,3],[5,5],[2,2],[4,4]]) == 1
	assert candidate(3, 4, [[1,2],[3,1],[2,4],[2,3]]) == 2
	assert candidate(5, 5, [[1,1],[2,2],[3,3],[4,4],[5,5]]) == 4
	assert candidate(3, 4, [[3,4]]) == 0
	assert candidate(3, 4, [[1,2],[3,4],[2,3],[4,4]]) == 1
	assert candidate(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4],[5,5],[4,4]]) == 2
	assert candidate(4, 4, [[1,4],[2,4],[3,4],[4,4]]) == 3
	assert candidate(4, 4, [[4,4],[5,5],[1,1],[2,2],[3,3]]) == 0
	assert candidate(4, 3, [[4,4],[5,5],[1,1],[2,2],[3,3]]) == 0
	assert candidate(2, 2, [[2,2],[3,3],[4,4],[5,5],[1,1]]) == 0
	assert candidate(3, 3, [[1,1],[3,3],[4,4],[5,5],[2,2]]) == 1
	assert candidate(3, 4, [[1,2],[3,1],[2,4],[2,3],[4,4],[5,5],[4,4],[3,3]]) == 2
	assert candidate(4, 1, [[3,4],[1,4],[1,1],[2,3]]) == 2
def test_check():
	check(nearestValidPoint)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
