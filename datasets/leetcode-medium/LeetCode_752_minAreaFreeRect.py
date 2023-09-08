from typing import List


def minAreaFreeRect(points: List[List[int]]) -> int:
    """
    You are given an array of points in the X-Y plane points where points[i] = [xi, yi].
    Return the minimum area of any rectangle formed from these points, with sides not necessarily parallel to the X and Y axes. If there is not any such rectangle, return 0.
    Answers within 10-5 of the actual answer will be accepted.
 
    Example 1:


    Input: points = [[1,2],[2,1],[1,0],[0,1]]
    Output: 2.00000
    Explanation: The minimum area rectangle occurs at [1,2],[2,1],[1,0],[0,1], with an area of 2.

    Example 2:


    Input: points = [[0,1],[2,1],[1,1],[1,0],[2,0]]
    Output: 1.00000
    Explanation: The minimum area rectangle occurs at [1,0],[1,1],[2,1],[2,0], with an area of 1.

    Example 3:


    Input: points = [[0,3],[1,2],[3,1],[1,3],[2,1]]
    Output: 0
    Explanation: There is no possible rectangle to form from these points.

 
    Constraints:

    1 <= points.length <= 50
    points[i].length == 2
    0 <= xi, yi <= 4 * 104
    All the given points are unique.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    from math import sqrt, inf
    minArea = inf
    xGroups = defaultdict(set)

    for x, y in points:
        xGroups[x].add(y)

    for x1, ys1 in xGroups.items():
        for x2, ys2 in xGroups.items():
            if x1 == x2:
                continue

            for y1 in ys1:
                for y2 in ys2:
                    if y2 in ys1 and y1 in ys2:
                        area = sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2) * sqrt((x1 - x2) ** 2 + (y1 - y1) ** 2)
                        minArea = min(minArea, area)

    return minArea if minArea != inf else 0




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[0,5],[5,0],[5,5]]) == 25
	assert candidate([[0,0],[0,9],[9,0],[9,9]]) == 81
	assert candidate([[0,0],[0,100],[100,0],[100,100]]) == 10000
	assert candidate([[0,0],[0,1]]) == 0
	assert candidate([[1,1],[1,3],[3,1],[3,3],[6,6],[6,9],[9,6],[9,9]]) == 4
	assert candidate([[0,0],[0,10],[10,10],[10,0]]) == 100
	assert candidate([[1,1],[1,3],[3,1],[3,3],[6,6],[6,9],[9,6],[9,9],[12,12],[12,15],[15,12],[15,15]]) == 4
	assert candidate([[0,0],[0,10],[10,0],[10,10]]) == 100
	assert candidate([[1,1],[2,2],[4,3]]) == 0
	assert candidate([[0,0],[0,1],[1,0],[1,1]]) == 1
	assert candidate([[1,1],[1,3],[3,1],[3,3],[4,4],[4,6],[6,4],[6,6]]) == 4
	assert candidate([[0,0],[0,8],[8,0],[8,8]]) == 64
	assert candidate([[1,1],[5,5],[7,7]]) == 0
	assert candidate([[0,0],[0,2],[1,0],[1,1],[1,2],[2,0],[2,2]]) == 1
	assert candidate([[1,1],[1,3],[3,1],[3,3]]) == 4
	assert candidate([[0,0],[0,2],[2,0],[2,2]]) == 4
	assert candidate([[0,0],[0,7],[7,0],[7,7]]) == 49
	assert candidate([[0,0],[0,10],[10,0],[10,10],[2,2],[2,4],[4,2],[4,4]]) == 4
	assert candidate([[0,0],[0,3],[3,0],[3,3]]) == 9
	assert candidate([[0,0]]) == 0
	assert candidate([[1,1],[1,3],[3,1],[3,3],[5,5],[7,7],[7,9],[9,7]]) == 4
	assert candidate([[0,0],[0,4],[4,0],[4,4]]) == 16
	assert candidate([[1,1],[1,3],[3,1],[3,3],[4,4]]) == 4
	assert candidate([[1,1],[1,3],[3,1],[3,3],[6,6]]) == 4
	assert candidate([[0,0],[0,100],[100,0],[100,100],[100,50],[150,150],[200,0],[200,200]]) == 10000
	assert candidate([[1,1],[1,3],[3,1],[3,3],[5,5]]) == 4
	assert candidate([[0,0],[0,6],[6,0],[6,6]]) == 36
	assert candidate([[1,1],[1,3],[3,1],[3,3],[5,2],[5,4]]) == 4
def test_check():
	check(minAreaFreeRect)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,geometry
# Metadata Coverage: 100
