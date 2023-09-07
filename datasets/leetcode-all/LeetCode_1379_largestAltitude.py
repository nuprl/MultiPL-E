from typing import List


def largestAltitude(gain: List[int]) -> int:
    """
    There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.
    You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point.
 
    Example 1:

    Input: gain = [-5,1,5,0,-7]
    Output: 1
    Explanation: The altitudes are [0,-5,-4,1,1,-6]. The highest is 1.

    Example 2:

    Input: gain = [-4,-3,-2,-1,4,3,2]
    Output: 0
    Explanation: The altitudes are [0,-4,-7,-9,-10,-6,-3,-1]. The highest is 0.

 
    Constraints:

    n == gain.length
    1 <= n <= 100
    -100 <= gain[i] <= 100

    """
    ### Canonical solution below ###
    max_altitude, current_altitude = 0, 0
    for i in gain:
        current_altitude += i
        max_altitude = max(max_altitude, current_altitude)
    return max_altitude




### Unit tests below ###
def check(candidate):
	assert candidate([1]) == 1
	assert candidate( [-5,1,5,0,-7]) == 1
	assert candidate(    [-4,-3,-2,-1,4,3,2]) == 0
	assert candidate(
    [-5,1,5,0,-7]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == 20
	assert candidate([1, 1, 1, 1, -1000]) == 4
	assert candidate( [1]) == 1
	assert candidate([-4,-3,-2,-1,4,3,2]) == 0
	assert candidate([-5,1,5,0,-7]) == 1
	assert candidate( [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == 20
	assert candidate( [0,0,0]) == 0
	assert candidate([1, 1, 1, 1, 1]) == 5
	assert candidate(    [-5,1,5,0,-7]) == 1
	assert candidate(
    [-4,-3,-2,-1,4,3,2]) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1]) == 10
	assert candidate( [-4,-3,-2,-1,4,3,2]) == 0
	assert candidate([2,2,2,2,2,2,2,2,2,2]) == 20
	assert candidate(   [-5,1,5,0,-7]) == 1
	assert candidate([1, 1, 1, -1, 1]) == 3
def test_check():
	check(largestAltitude)
# Metadata Difficulty: Easy
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
