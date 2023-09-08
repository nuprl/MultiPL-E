from typing import List, Union


def isRectangleOverlap(rec1: List[int], rec2: List[Union[int, float]]) -> bool:
    """
    An axis-aligned rectangle is represented as a list [x1, y1, x2, y2], where (x1, y1) is the coordinate of its bottom-left corner, and (x2, y2) is the coordinate of its top-right corner. Its top and bottom edges are parallel to the X-axis, and its left and right edges are parallel to the Y-axis.
    Two rectangles overlap if the area of their intersection is positive. To be clear, two rectangles that only touch at the corner or edges do not overlap.
    Given two axis-aligned rectangles rec1 and rec2, return true if they overlap, otherwise return false.
 
    Example 1:
    Input: rec1 = [0,0,2,2], rec2 = [1,1,3,3]
    Output: true
    Example 2:
    Input: rec1 = [0,0,1,1], rec2 = [1,0,2,1]
    Output: false
    Example 3:
    Input: rec1 = [0,0,1,1], rec2 = [2,2,3,3]
    Output: false

 
    Constraints:

    rec1.length == 4
    rec2.length == 4
    -109 <= rec1[i], rec2[i] <= 109
    rec1 and rec2 represent a valid rectangle with a non-zero area.

    """
    ### Canonical solution below ###
    return rec1[2] > rec2[0] and rec1[3] > rec2[1] and rec1[0] < rec2[2] and rec1[1] < rec2[3]




### Unit tests below ###
def check(candidate):
	assert candidate([0,0,2,2], [1,0,2,1]) == True
	assert candidate(
    [0,0,5,5], [5,0,6,1]) == False
	assert candidate(
    [0,0,5,5], [5,5,6,6]) == False
	assert candidate([0,0,1,1], [-1,-1,0,0]) == False
	assert candidate([0,0,5,5], [0,4,1,6]) == True
	assert candidate(
    [-520150,-174801,145806,-121334], [-520150,-174801,145806,-121334]) == True
	assert candidate(
    [191305,-139830,291279,174952], [191305,-139830,291279,174952]) == True
	assert candidate([0,0,1,1], [0.5,0.5,1.5,1.5]) == True
	assert candidate([0, 0, 10, 10], [1, 0, 10, 11]) == True
	assert candidate(
    [0,0,2,2], [0,0,1,1]) == True
	assert candidate(
    [0,0,2,2], [2,2,3,3]) == False
	assert candidate(
    [0,0,2,2], [2,0,3,2]) == False
	assert candidate(
    [0,0,5,5], [4,4,6,6]) == True
	assert candidate([0,0,5,5], [4,4,6,6]) == True
	assert candidate([0,0,5,5], [1,1,4,4]) == True
	assert candidate(
    [0,0,1,1], [1,1,2,2]) == False
	assert candidate([-3,-3,3,3], [1,1,2,2]) == True
	assert candidate(
    [7,8,11,12], [6,8,10,13]) == True
	assert candidate(
    [-124284,31422,155533,96077], [-124284,31422,155533,96077]) == True
	assert candidate([0,0,1,1], [1.5,1.5,2.5,2.5]) == False
	assert candidate([0,0,5,5], [0,5,1,6]) == False
	assert candidate(
    [-193232,-137483,255299,174994], [-193232,-137483,255299,174994]) == True
	assert candidate([0, 0, 10, 10], [1, 1, 10, 10]) == True
	assert candidate(
    [-870703,-871208,-868471,-867265], [-870703,-871208,-868471,-867265]) == True
	assert candidate(
    [0,0,1,1], [0,5,1,6]) == False
	assert candidate([0,0,5,5], [6,6,7,7]) == False
	assert candidate(
    [0,0,1,1], [0,0,1,1]) == True
	assert candidate([1, 1, 10, 10], [0, 0, 10, 10]) == True
	assert candidate(
    [0,0,5,5], [4,0,6,1]) == True
	assert candidate([1, 0, 11, 10], [0, 0, 10, 10]) == True
	assert candidate([0,0,1,1], [0,0,1,1]) == True
	assert candidate([0,0,2,2], [2,0,3,2]) == False
	assert candidate([0,0,2,2], [3,3,5,5]) == False
	assert candidate(
    [0,0,5,5], [0,4,1,6]) == True
	assert candidate([0,0,2,2], [1,1,3,3]) == True
	assert candidate([0,0,5,5], [5,0,6,1]) == False
	assert candidate([0,0,5,5], [4,0,6,1]) == True
	assert candidate([0,0,2,2], [2,2,3,3]) == False
	assert candidate([0, 1, 10, 10], [0, 0, 10, 11]) == True
	assert candidate([0,0,5,5], [5,5,6,6]) == False
	assert candidate([0,0,1,1], [1,1,2,2]) == False
def test_check():
	check(isRectangleOverlap)
# Metadata Difficulty: Easy
# Metadata Topics: math,geometry
# Metadata Coverage: 100
