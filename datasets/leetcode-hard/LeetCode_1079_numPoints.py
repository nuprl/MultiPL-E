from typing import List


def numPoints(darts: List[List[int]], r: int) -> int:
    """
    Alice is throwing n darts on a very large wall. You are given an array darts where darts[i] = [xi, yi] is the position of the ith dart that Alice threw on the wall.
    Bob knows the positions of the n darts on the wall. He wants to place a dartboard of radius r on the wall so that the maximum number of darts that Alice throws lie on the dartboard.
    Given the integer r, return the maximum number of darts that can lie on the dartboard.
 
    Example 1:


    Input: darts = [[-2,0],[2,0],[0,2],[0,-2]], r = 2
    Output: 4
    Explanation: Circle dartboard with center in (0,0) and radius = 2 contain all points.

    Example 2:


    Input: darts = [[-3,0],[3,0],[2,6],[5,4],[0,9],[7,8]], r = 5
    Output: 5
    Explanation: Circle dartboard with center in (0,4) and radius = 5 contain all points except the point (7,8).

 
    Constraints:

    1 <= darts.length <= 100
    darts[i].length == 2
    -104 <= xi, yi <= 104
    All the darts are unique
    1 <= r <= 5000

    """
    ### Canonical solution below ###
    n = len(darts)
    result = 1

    for i in range(n):
        for j in range(n):
            cnt = 0
            for k in range(n):
                dx = darts[i][0] - darts[k][0]
                dy = darts[i][1] - darts[k][1]
                if (dx * dx + dy * dy) ** 0.5 <= r:
                    cnt += 1

            if cnt > result:
                result = cnt

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]], 1) == 1
	assert candidate([[100, 100], [200, 200], [300, 300], [400, 400], [500, 500]], 100) == 1
	assert candidate([[0, 0], [1, 1], [2, 2], [3, 3], [4, 4]], 1) == 1
	assert candidate([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]], 5) == 5
def test_check():
	check(numPoints)
# Metadata Difficulty: Hard
# Metadata Topics: array,math,geometry
# Metadata Coverage: 100
