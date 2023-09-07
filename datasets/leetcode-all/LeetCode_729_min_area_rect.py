from typing import List, Tuple


def min_area_rect(points: List[Tuple[int, int]]) -> int:
    """
    You are given an array of points in the X-Y plane points where points[i] = [xi, yi].
    Return the minimum area of a rectangle formed from these points, with sides parallel to the X and Y axes. If there is not any such rectangle, return 0.
 
    Example 1:


    Input: points = [[1,1],[1,3],[3,1],[3,3],[2,2]]
    Output: 4

    Example 2:


    Input: points = [[1,1],[1,3],[3,1],[3,3],[4,1],[4,3]]
    Output: 2

 
    Constraints:

    1 <= points.length <= 500
    points[i].length == 2
    0 <= xi, yi <= 4 * 104
    All the given points are unique.

    """
    ### Canonical solution below ###
    point_set = {(x, y) for x, y in points}
    min_area = float('inf')

    for p1 in point_set:
        for p2 in point_set:
            if p1[0] != p2[0] and p1[1] != p2[1]:
                if (p1[0], p2[1]) in point_set and (p2[0], p1[1]) in point_set:
                    min_area = min(min_area, abs((p1[0] - p2[0]) * (p1[1] - p2[1])))

    return min_area if min_area != float('inf') else 0




### Unit tests below ###
def check(candidate):
	assert candidate([(2,2), (2,8), (8,2), (8,8)]) == 36
	assert candidate([(1,1), (1,3), (3,1), (3,3)]) == 4
	assert candidate([(1,1), (1,5), (5,1), (5,5)]) == 16
	assert candidate([(0,0), (0,1), (1,0), (1,1)]) == 1
	assert candidate([(3,3), (3,9), (9,3), (9,9)]) == 36
	assert candidate([(1,1), (2,2), (3,3), (4,4)]) == 0
	assert candidate([(3, 1), (6, 2), (9, 3), (6, 5), (2, 5), (1, 4), (2, 7), (1, 1)]) == 0
	assert candidate([(2,2), (2,7), (7,2), (7,7)]) == 25
	assert candidate([(1,1), (1,3), (3,1)]) == 0
	assert candidate([(0,0), (0,10), (10,0), (10,10)]) == 100
	assert candidate([(0,0), (0,4), (4,0), (4,4)]) == 16
	assert candidate([(1,1)]) == 0
	assert candidate([(0,0), (0,3), (3,0), (3,3)]) == 9
	assert candidate([(1, 1), (3, 3), (5, 5), (7, 7), (9, 9)]) == 0
	assert candidate([(0,0), (0,2), (2,0), (2,2)]) == 4
	assert candidate([(1, 1), (1, 3), (3, 1), (3, 3)]) == 4
	assert candidate([(0,0), (0,5), (5,0), (5,5)]) == 25
	assert candidate([(5,5), (5,10), (10,5), (10,10)]) == 25
def test_check():
	check(min_area_rect)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,geometry,sorting
# Metadata Coverage: 100
