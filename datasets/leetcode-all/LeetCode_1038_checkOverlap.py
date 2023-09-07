def checkOverlap(radius: int, xCenter: int, yCenter: int, x1: int, y1: int, x2: int, y2: int) -> bool:
    """
    You are given a circle represented as (radius, xCenter, yCenter) and an axis-aligned rectangle represented as (x1, y1, x2, y2), where (x1, y1) are the coordinates of the bottom-left corner, and (x2, y2) are the coordinates of the top-right corner of the rectangle.
    Return true if the circle and rectangle are overlapped otherwise return false. In other words, check if there is any point (xi, yi) that belongs to the circle and the rectangle at the same time.
 
    Example 1:


    Input: radius = 1, xCenter = 0, yCenter = 0, x1 = 1, y1 = -1, x2 = 3, y2 = 1
    Output: true
    Explanation: Circle and rectangle share the point (1,0).

    Example 2:

    Input: radius = 1, xCenter = 1, yCenter = 1, x1 = 1, y1 = -3, x2 = 2, y2 = -1
    Output: false

    Example 3:


    Input: radius = 1, xCenter = 0, yCenter = 0, x1 = -1, y1 = 0, x2 = 0, y2 = 1
    Output: true

 
    Constraints:

    1 <= radius <= 2000
    -104 <= xCenter, yCenter <= 104
    -104 <= x1 < x2 <= 104
    -104 <= y1 < y2 <= 104

    """
    ### Canonical solution below ###
    xClosest = max(x1, min(xCenter, x2))
    yClosest = max(y1, min(yCenter, y2))
    return (xCenter - xClosest) ** 2 + (yCenter - yClosest) ** 2 <= radius ** 2




### Unit tests below ###
def check(candidate):
	assert candidate(2, 0, 0, 3, 3, 4, 4) == False
	assert candidate(1, -104, -104, -105, -105, -103, -103) == True
	assert candidate(1, 0, 0, 1, -1, 2, 2) == True
	assert candidate(1, 0, 0, -1, 0, 0, 1) == True
	assert candidate(1, 0, 0, -1, 1, -1, 1) == False
	assert candidate(2000, 104, 104, -104, -104, 104, 104) == True
	assert candidate(1, 104, 104, 103, 103, 105, 105) == True
	assert candidate(1, 104, -104, 103, -105, 105, -103) == True
	assert candidate(3, -1, -1, -1, -1, 1, 1) == True
	assert candidate(2, -2, -2, -1, -1, 2, 2) == True
	assert candidate(1, 0, 0, 1, 1, 1, 1) == False
	assert candidate(1, 0, 0, 0, -1, 1, 1) == True
	assert candidate(2000, -104, -104, -104, -104, 104, 104) == True
	assert candidate(2, 0, 0, -1, -1, 1, 1) == True
	assert candidate(1, 0, 0, -1, 0, 1, 1) == True
	assert candidate(2, 0, 0, -2, -2, 2, 2) == True
	assert candidate(3, 0, 0, -2, -2, 2, 2) == True
	assert candidate(1, 104, 104, 106, 106, 108, 108) == False
	assert candidate(1, -104, -104, -106, -106, -104, -104) == True
	assert candidate(2000, 104, 104, -105, -105, 105, 105) == True
	assert candidate(2000, 0, 0, -104, -104, 104, 104) == True
	assert candidate(3, 1, 1, -2, -2, -1, -1) == True
	assert candidate(1, 0, 0, -2, -2, -1, -1) == False
	assert candidate(1, 0, 0, -2, -2, 2, 2) == True
	assert candidate(1, 1, 1, 1, -3, 2, -1) == False
	assert candidate(3, 0, 0, -1, -1, 2, 2) == True
	assert candidate(1, -104, 104, -105, 103, -103, 105) == True
	assert candidate(1, 0, 0, -1, -1, 1, 1) == True
	assert candidate(2000, 0, 0, 1, -3, 3, 1) == True
	assert candidate(2, -1, -1, -1, -1, 1, 1) == True
	assert candidate(5, 0, 0, -1, -1, 1, 1) == True
	assert candidate(3, -2, -2, -1, -1, 2, 2) == True
	assert candidate(1, 0, 0, -1, -1, -1, -1) == False
	assert candidate(1, 0, 0, 1, -1, 2, 1) == True
	assert candidate(2, 0, 0, -2, -2, -1, -1) == True
	assert candidate(1, 0, 0, -1, -1, 2, 1) == True
	assert candidate(1, 0, 0, 1, -1, 3, 1) == True
	assert candidate(1, 0, 0, -1, -1, 2, 2) == True
	assert candidate(1, 0, 0, -1, -1, 1, 2) == True
	assert candidate(1, 0, 0, 1, 1, 2, 2) == False
def test_check():
	check(checkOverlap)
# Metadata Difficulty: Medium
# Metadata Topics: math,geometry
# Metadata Coverage: 100
