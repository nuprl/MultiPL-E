from typing import List


def minScoreTriangulation(values: List[int]) -> int:
    """
    You have a convex n-sided polygon where each vertex has an integer value. You are given an integer array values where values[i] is the value of the ith vertex (i.e., clockwise order).
    You will triangulate the polygon into n - 2 triangles. For each triangle, the value of that triangle is the product of the values of its vertices, and the total score of the triangulation is the sum of these values over all n - 2 triangles in the triangulation.
    Return the smallest possible total score that you can achieve with some triangulation of the polygon.
 
    Example 1:


    Input: values = [1,2,3]
    Output: 6
    Explanation: The polygon is already triangulated, and the score of the only triangle is 6.

    Example 2:


    Input: values = [3,7,4,5]
    Output: 144
    Explanation: There are two triangulations, with possible scores: 3*7*5 + 4*5*7 = 245, or 3*4*5 + 3*4*7 = 144.
    The minimum score is 144.

    Example 3:


    Input: values = [1,3,1,4,1,5]
    Output: 13
    Explanation: The minimum score triangulation has score 1*1*3 + 1*1*4 + 1*1*5 + 1*1*1 = 13.

 
    Constraints:

    n == values.length
    3 <= n <= 50
    1 <= values[i] <= 100

    """
    ### Canonical solution below ###
    n = len(values)
    dp = [[0] * n for _ in range(n)]

    for length in range(3, n + 1):
        for i in range(n - length + 1):
            j = i + length - 1
            dp[i][j] = float('inf')
            for k in range(i + 1, j):
                dp[i][j] = min(dp[i][j], values[i] * values[j] * values[k] + dp[i][k] + dp[k][j])

    return dp[0][n - 1]




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3]) == 6
	assert candidate([2, 3, 4]) == 24
	assert candidate([1, 3, 1, 4, 1, 5]) == 13
	assert candidate([2, 2, 2, 2]) == 16
	assert candidate([4, 3, 2, 1]) == 18
	assert candidate([1, 2, 3, 4]) == 18
	assert candidate([30, 20, 10]) == 6000
	assert candidate(
    [3, 7, 4, 5]) == 144
	assert candidate([10, 20, 30]) == 6000
def test_check():
	check(minScoreTriangulation)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
