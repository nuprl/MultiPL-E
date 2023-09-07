from typing import List


def isRectangleCover(rectangles: List[List[int]]) -> bool:
    """
    Given an array rectangles where rectangles[i] = [xi, yi, ai, bi] represents an axis-aligned rectangle. The bottom-left point of the rectangle is (xi, yi) and the top-right point of it is (ai, bi).
    Return true if all the rectangles together form an exact cover of a rectangular region.
 
    Example 1:


    Input: rectangles = [[1,1,3,3],[3,1,4,2],[3,2,4,4],[1,3,2,4],[2,3,3,4]]
    Output: true
    Explanation: All 5 rectangles together form an exact cover of a rectangular region.

    Example 2:


    Input: rectangles = [[1,1,2,3],[1,3,2,4],[3,1,4,2],[3,2,4,4]]
    Output: false
    Explanation: Because there is a gap between the two rectangular regions.

    Example 3:


    Input: rectangles = [[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4]]
    Output: false
    Explanation: Because two of the rectangles overlap with each other.

 
    Constraints:

    1 <= rectangles.length <= 2 * 104
    rectangles[i].length == 4
    -105 <= xi, yi, ai, bi <= 105

    """
    ### Canonical solution below ###
    area = 0
    points = set()
    lx, ly, rx, ry = float('inf'), float('inf'), float('-inf'), float('-inf')

    for rect in rectangles:
        lx, ly = min(lx, rect[0]), min(ly, rect[1])
        rx, ry = max(rx, rect[2]), max(ry, rect[3])

        area += (rect[2] - rect[0]) * (rect[3] - rect[1])

        p1, p2, p3, p4 = (rect[0], rect[1]), (rect[0], rect[3]), (rect[2], rect[1]), (rect[2], rect[3])

        points ^= {p1, p2, p3, p4}

    return len(points) == 4 and area == (rx - lx) * (ry - ly) and (lx, ly) in points and \
        (lx, ry) in points and (rx, ly) in points and (rx, ry) in points




### Unit tests below ###
def check(candidate):
	assert candidate([[1,1,3,3],[3,3,4,4]]) == False
	assert candidate([[1,1,2,3],[1,3,2,4],[3,1,4,2],[3,2,4,4],[2,1,4,3]]) == False
	assert candidate([[1,1,2,3],[1,3,2,4],[3,1,4,2],[3,2,4,4]]) == False
	assert candidate([[0,0,1,1],[1,0,2,1],[0,1,1,2],[1,1,2,2]]) == True
	assert candidate([[1,2,2,3],[1,2,3,2],[2,2,3,3],[2,2,4,4]]) == False
	assert candidate([[1,1,2,3],[1,3,2,4],[3,1,4,2],[3,2,4,4],[3,1,3,3]]) == False
	assert candidate([[1,1,2,3],[2,2,3,3],[1,3,2,4],[2,3,3,4]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[1,1,4,2]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[3,2,4,4],[1,3,1,4],[1,3,2,3],[2,3,3,4]]) == False
	assert candidate([[1,1,2,3],[1,3,2,4],[2,2,4,4]]) == False
	assert candidate([[1,1,3,3]]) == True
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[2,1,3,3]]) == False
	assert candidate([[1,1,2,3],[1,3,2,4],[2,1,3,3]]) == False
	assert candidate([[1,1,2,2],[2,1,3,2],[3,1,4,2],[1,2,2,3],[2,2,3,3],[3,2,4,3]]) == True
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[4,1,4,4]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[3,1,3,3]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[3,2,4,4],[1,3,2,4],[2,3,3,4]]) == True
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,3]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[1,1,4,4]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[1,1,2,2]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,3,4],[2,2,4,4]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[2,2,4,4],[5,5,6,6]]) == False
	assert candidate([[1,1,2,2],[2,1,3,2],[3,1,4,2],[1,2,4,3]]) == True
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[3,2,4,4],[3,1,3,3]]) == False
	assert candidate([[1,1,3,3],[3,1,4,2],[1,3,2,4],[3,2,4,4]]) == False
def test_check():
	check(isRectangleCover)
# Metadata Difficulty: Hard
# Metadata Topics: array,line-sweep
# Metadata Coverage: 100
