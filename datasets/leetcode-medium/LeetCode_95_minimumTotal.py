from typing import List


def minimumTotal(triangle: List[List[int]]) -> int:
    """
    Given a triangle array, return the minimum path sum from top to bottom.
    For each step, you may move to an adjacent number of the row below. More formally, if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.
 
    Example 1:

    Input: triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
    Output: 11
    Explanation: The triangle looks like:
       2
      3 4
     6 5 7
    4 1 8 3
    The minimum path sum from top to bottom is 2 + 3 + 5 + 1 = 11 (underlined above).

    Example 2:

    Input: triangle = [[-10]]
    Output: -10

 
    Constraints:

    1 <= triangle.length <= 200
    triangle[0].length == 1
    triangle[i].length == triangle[i - 1].length + 1
    -104 <= triangle[i][j] <= 104

 
    Follow up: Could you do this using only O(n) extra space, where n is the total number of rows in the triangle?"""
    ### Canonical solution below ###
    for row in range(len(triangle) - 2, -1, -1):
        for col in range(len(triangle[row])):
            triangle[row][col] += min(triangle[row + 1][col], triangle[row + 1][col + 1])
    return triangle[0][0]




### Unit tests below ###
def check(candidate):
	assert candidate([[1],[2,1],[1,2,3],[1,1,1,4]]) == 5
	assert candidate([[1],[2,3],[4,5,6],[7,8,9,10]]) == 14
	assert candidate([[5],[6,5],[7,8,7],[9,10,11,12]]) == 27
	assert candidate([[1],[-2,-3]]) == -2
	assert candidate([[1],[2,3],[4,1,6]]) == 4
	assert candidate([[-10]]) == -10
	assert candidate([[1],[2,1],[1,2,1],[1,1,1,1]]) == 4
	assert candidate([[2],[3,4],[6,5,7],[4,1,8,3]]) == 11
	assert candidate([[-3],[-2,-3]]) == -6
	assert candidate([[1],[2,3]]) == 3
def test_check():
	check(minimumTotal)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
