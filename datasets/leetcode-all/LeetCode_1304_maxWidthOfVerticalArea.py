from typing import List


def maxWidthOfVerticalArea(points: List[List[int]]) -> int:
    """
    Given n points on a 2D plane where points[i] = [xi, yi], Return the widest vertical area between two points such that no points are inside the area.
    A vertical area is an area of fixed-width extending infinitely along the y-axis (i.e., infinite height). The widest vertical area is the one with the maximum width.
    Note that points on the edge of a vertical area are not considered included in the area.
 
    Example 1:
    ​

    Input: points = [[8,7],[9,9],[7,4],[9,7]]
    Output: 1
    Explanation: Both the red and the blue area are optimal.

    Example 2:

    Input: points = [[3,1],[9,0],[1,0],[1,4],[5,3],[8,8]]
    Output: 3

 
    Constraints:

    n == points.length
    2 <= n <= 105
    points[i].length == 2
    0 <= xi, yi <= 109

    """
    ### Canonical solution below ###
    xs = sorted([point[0] for point in points])
    max_width = 0
    for i in range(1, len(xs)):
        max_width = max(max_width, xs[i] - xs[i - 1])
    return max_width




### Unit tests below ###
def check(candidate):
	assert candidate([[100,1], [200,1], [300,1], [400,1], [500,1]]) == 100
	assert candidate([[1,1], [3,1], [9,1], [27,1], [81,1]]) == 54
	assert candidate([[1,1], [2,1], [3,1]]) == 1
	assert candidate([[1,1], [5,1], [10,1]]) == 5
	assert candidate([[1,1], [2,1], [4,1], [8,1], [16,1]]) == 8
	assert candidate([[10,1], [20,1], [30,1], [40,1], [50,1]]) == 10
	assert candidate([[1,1], [2,1], [4,1], [8,1], [16,1], [32,1]]) == 16
	assert candidate([[1,1], [2,1], [3,1], [4,1], [5,1]]) == 1
	assert candidate([[1,1], [3,1], [9,1], [27,1], [81,1], [243,1]]) == 162
	assert candidate([[1,1], [3,1], [5,1], [7,1], [9,1]]) == 2
	assert candidate([[1,1], [1,1], [1,1], [1,1], [1,1]]) == 0
	assert candidate([[10,1], [15,1], [20,1], [25,1], [30,1]]) == 5
	assert candidate([[1,1]]) == 0
	assert candidate([[1,1], [100,1]]) == 99
def test_check():
	check(maxWidthOfVerticalArea)
# Metadata Difficulty: Medium
# Metadata Topics: array,sorting
# Metadata Coverage: 100
