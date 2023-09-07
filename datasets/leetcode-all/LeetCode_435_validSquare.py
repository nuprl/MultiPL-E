from typing import List


def validSquare(p1: List[int], p2: List[int], p3: List[int], p4: List[int]) -> bool:
    """
    Given the coordinates of four points in 2D space p1, p2, p3 and p4, return true if the four points construct a square.
    The coordinate of a point pi is represented as [xi, yi]. The input is not given in any order.
    A valid square has four equal sides with positive length and four equal angles (90-degree angles).
 
    Example 1:

    Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,1]
    Output: true

    Example 2:

    Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,12]
    Output: false

    Example 3:

    Input: p1 = [1,0], p2 = [-1,0], p3 = [0,1], p4 = [0,-1]
    Output: true

 
    Constraints:

    p1.length == p2.length == p3.length == p4.length == 2
    -104 <= xi, yi <= 104

    """
    ### Canonical solution below ###
    def dist_sq(p, q):
        return (p[0] - q[0])**2 + (p[1] - q[1])**2

    points = [p1, p2, p3, p4]
    dists = set()

    for i in range(4):
        for j in range(i + 1, 4):
            dists.add(dist_sq(points[i], points[j]))

    return len(dists) == 2 and 0 not in dists




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1307391045, -195054645], [-159505306, 255744697],
    [1307391045, -195054645], [-159505306, 255744697]) == False
	assert candidate(
    [-478,-319], [-909,-320], [-480,-459], [-908,-460]
) == False
	assert candidate([0,0], [4,0], [4,4], [0,4]) == True
	assert candidate([0,0], [1,0], [1,1], [2,1]) == False
	assert candidate([0,0], [2,0], [2,2], [0,2]) == True
	assert candidate(
    [0,0],
    [55147157,80466184],
    [-69357799,-51327643],
    [35788696,20053502]
) == False
	assert candidate([0,0], [0,0], [0,0], [0,0]) == False
	assert candidate([0, 0], [5, 0], [4, 4], [0, 5]) == False
	assert candidate([-1,-1], [1,1], [1,-1], [-1,1]) == True
	assert candidate([-973,-286], [144,145], [144,-286], [-973,-286]) == False
	assert candidate([1,1], [0,0], [1,0], [0,1]) == True
	assert candidate([2,3], [3,3], [3,2], [2,2]) == True
	assert candidate([0,0], [3,0], [0,3], [3,3]) == True
	assert candidate([0,0], [1,0], [0,1], [1,1]) == True
	assert candidate([0,0], [1,0], [1,1], [0,1]) == True
	assert candidate([0,0], [0,1], [1,1], [2,2]) == False
	assert candidate([0,0], [1,1], [1,0], [0,12]) == False
	assert candidate([-255,-333], [823,-333], [823,-238], [-255,-238]) == False
	assert candidate([-4, -2], [-5, -6], [-5, -6], [-5, -6]) == False
	assert candidate([-1,-1], [-1,1], [1,1], [1,-1]) == True
	assert candidate([0,0], [1,1], [1,0], [0,1]) == True
	assert candidate([3,2], [3,3], [2,3], [2,2]) == True
	assert candidate([2,2], [2,0], [0,0], [0,2]) == True
	assert candidate([-4, -2], [-5, -6], [-4, -1], [-5, -6]) == False
	assert candidate(
    [0,0],
    [-71742090,-159583758],
    [79399919,-111043496],
    [83144544,-117669224]
) == False
	assert candidate(
    [11956, 6512], [14977, 8103], [2399, 2780], [1389, 8779]) == False
	assert candidate([0,0], [0,5], [5,5], [5,0]) == True
	assert candidate([0,0], [0,4], [4,0], [3,3]) == False
	assert candidate([-445,-109], [-445,90], [474,-109], [474,90]) == False
	assert candidate(
    [0,0],
    [-10658810,14992392],
    [-51487043,40683240],
    [-10935018,-16878422]
) == False
	assert candidate(
    [0,0],
    [-33051827,-58902896],
    [43738997,52741491],
    [60114572,-45033177]
) == False
	assert candidate(
    [10790,-9896], [26220,25926], [25432,-23852], [-29964,-20656]
) == False
	assert candidate([1, 1], [4, 1], [4, 5], [-1, 5]) == False
	assert candidate([0,0], [3,4], [7,4], [4,0]) == False
	assert candidate([3,1], [1,1], [3,3], [1,3]) == True
	assert candidate([-10000,-10000], [10000,10000], [10000,-10000], [-10000,10000]) == True
	assert candidate([0,0], [0,2], [2,2], [2,0]) == True
	assert candidate(
    [0,0],
    [83084275,-27052805],
    [-16707793,39266940],
    [62860995,-107904291]
) == False
	assert candidate([1,0], [-1,0], [0,1], [0,-1]) == True
	assert candidate([0,0], [5,0], [5,5], [0,5]) == True
def test_check():
	check(validSquare)
# Metadata Difficulty: Medium
# Metadata Topics: math,geometry
# Metadata Coverage: 100
