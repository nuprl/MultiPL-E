from typing import List, Union


def numberOfBoomerangs(points: List[Union[List[float], List[int]]]) -> int:
    """
    You are given n points in the plane that are all distinct, where points[i] = [xi, yi]. A boomerang is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).
    Return the number of boomerangs.
 
    Example 1:

    Input: points = [[0,0],[1,0],[2,0]]
    Output: 2
    Explanation: The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]].

    Example 2:

    Input: points = [[1,1],[2,2],[3,3]]
    Output: 2

    Example 3:

    Input: points = [[1,1]]
    Output: 0

 
    Constraints:

    n == points.length
    1 <= n <= 500
    points[i].length == 2
    -104 <= xi, yi <= 104
    All the points are unique.

    """
    ### Canonical solution below ###
    count = 0

    for i in points:
        group_count = {}
        for j in points:
            dx, dy = i[0] - j[0], i[1] - j[1]
            dist = dx * dx + dy * dy
            group_count[dist] = group_count.get(dist, 0) + 1

        for g in group_count.values():
            count += g * (g - 1)

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[1,0],[2,0]]) == 2
	assert candidate([[0,0],[0,2],[2,2],[2,0],[1,1]]) == 20
	assert candidate([[1,3],[2,5],[3,7],[4,9]]) == 4
	assert candidate([[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9],[1,10],[1,11],[1,12],[1,13],[1,14],[1,15],[1,16],[1,17],[1,18],[1,19],[1,20],[1,21],[1,22]]) == 220
	assert candidate([[1,1],[2,2],[3,3]]) == 2
	assert candidate([[-1,-1],[-2,-2],[-3,-3],[-4,-4],[-5,-5]]) == 8
	assert candidate([[0,0],[100,0],[0,100],[100,100]]) == 8
	assert candidate([[0,0],[0,1],[1,0],[1,1],[2,2]]) == 12
	assert candidate([[0,0],[5,0],[5,5],[0,5]]) == 8
	assert candidate([[1,1]]) == 0
	assert candidate([[0,0],[10,0],[0,10],[10,10],[5,5]]) == 20
	assert candidate([[0,0],[-10,0],[0,-10],[-10,-10]]) == 8
	assert candidate([[0,0],[0,5],[5,5],[5,0],[2.5,2.5]]) == 20
	assert candidate([[0,0],[1,0],[1,1],[0,1]]) == 8
def test_check():
	check(numberOfBoomerangs)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math
# Metadata Coverage: 100
