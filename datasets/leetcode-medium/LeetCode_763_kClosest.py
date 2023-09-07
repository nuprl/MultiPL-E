from typing import List


def kClosest(points: List[List[int]], k: int) -> List[List[int]]:
    """
    Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).
    The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).
    You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).
 
    Example 1:


    Input: points = [[1,3],[-2,2]], k = 1
    Output: [[-2,2]]
    Explanation:
    The distance between (1, 3) and the origin is sqrt(10).
    The distance between (-2, 2) and the origin is sqrt(8).
    Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
    We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].

    Example 2:

    Input: points = [[3,3],[5,-1],[-2,4]], k = 2
    Output: [[3,3],[-2,4]]
    Explanation: The answer [[-2,4],[3,3]] would also be accepted.

 
    Constraints:

    1 <= k <= points.length <= 104
    -104 <= xi, yi <= 104

    """
    ### Canonical solution below ###
    points.sort(key=lambda x: x[0] ** 2 + x[1] ** 2)
    return points[:k]




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], 2) == [[1,1],[2,2]]
	assert candidate([[1,1],[1,1],[1,1],[1,1],[1,1]], 2) == [[1,1],[1,1]]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], 3) == [[1,1],[2,2],[3,3]]
	assert candidate(
    [[1, 3], [-2, 2]], 1) == [[-2, 2]]
	assert candidate([[1,1]], 1) == [[1,1]]
	assert candidate(
    [[2,2],[4,4],[3,3],[1,1],[5,5]], 4) == [[1,1],[2,2],[3,3],[4,4]]
	assert candidate([[1,3],[3,3],[2,2],[1,1]], 2) == [[1,1],[2,2]]
	assert candidate([[1,3],[-2,2]], 1) == [[-2,2]]
	assert candidate([[1,1],[1,1],[1,1],[1,1],[1,1]], 5) == [[1,1],[1,1],[1,1],[1,1],[1,1]]
	assert candidate([[1,3],[3,3],[2,2],[1,1]], 4) == [[1,1],[2,2],[1,3],[3,3]]
	assert candidate([[1, 3], [-2, 2]], 2) == [[-2, 2], [1, 3]]
	assert candidate([[5,5],[4,4],[3,3],[2,2],[1,1]], 3) == [[1,1],[2,2],[3,3]]
	assert candidate([[4,4],[1,1],[3,3],[5,5],[2,2]], 4) == [[1,1],[2,2],[3,3],[4,4]]
	assert candidate(
    [[1, 3], [-2, 2]], 2) == [[-2, 2], [1, 3]]
	assert candidate([[1,3],[3,3],[2,2],[1,1]], 1) == [[1,1]]
	assert candidate([[2,2],[1,1]], 1) == [[1,1]]
	assert candidate(
    [[1, 3], [-2, 2]], 1
) == [[-2, 2]]
	assert candidate([[1,3],[2,2],[1,1]], 3) == [[1,1],[2,2],[1,3]]
	assert candidate([[5,5],[4,4],[3,3],[2,2],[1,1]], 5) == [[1,1],[2,2],[3,3],[4,4],[5,5]]
	assert candidate([[4,4],[1,1],[3,3],[5,5],[2,2]], 3) == [[1,1],[2,2],[3,3]]
def test_check():
	check(kClosest)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,divide-and-conquer,geometry,sorting,heap-priority-queue,quickselect
# Metadata Coverage: 100
