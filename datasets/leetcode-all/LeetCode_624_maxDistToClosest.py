from typing import List


def maxDistToClosest(seats: List[int]) -> int:
    """
    You are given an array representing a row of seats where seats[i] = 1 represents a person sitting in the ith seat, and seats[i] = 0 represents that the ith seat is empty (0-indexed).
    There is at least one empty seat, and at least one person sitting.
    Alex wants to sit in the seat such that the distance between him and the closest person to him is maximized. 
    Return that maximum distance to the closest person.
 
    Example 1:


    Input: seats = [1,0,0,0,1,0,1]
    Output: 2
    Explanation: 
    If Alex sits in the second open seat (i.e. seats[2]), then the closest person has distance 2.
    If Alex sits in any other open seat, the closest person has distance 1.
    Thus, the maximum distance to the closest person is 2.

    Example 2:

    Input: seats = [1,0,0,0]
    Output: 3
    Explanation: 
    If Alex sits in the last seat (i.e. seats[3]), the closest person is 3 seats away.
    This is the maximum distance possible, so the answer is 3.

    Example 3:

    Input: seats = [0,1]
    Output: 1

 
    Constraints:

    2 <= seats.length <= 2 * 104
    seats[i] is 0 or 1.
    At least one seat is empty.
    At least one seat is occupied.

    """
    ### Canonical solution below ###
    n = len(seats)
    maxDist = 0
    lastPerson = -1

    for i in range(n):
        if seats[i] == 1:
            if lastPerson == -1:
                maxDist = i
            else:
                maxDist = max(maxDist, (i - lastPerson) // 2)
            lastPerson = i

    maxDist = max(maxDist, n - 1 - lastPerson)
    return maxDist




### Unit tests below ###
def check(candidate):
	assert candidate([0,1,0,0,0,0,0,1]) == 3
	assert candidate([0,1,0,0,0,0,0,0]) == 6
	assert candidate([0,0,0,0,0,0,0,0,1]) == 8
	assert candidate([0,1]) == 1
	assert candidate([1,0,0,0,0,0,0,0,1]) == 4
	assert candidate([0,0,0,0,0,1,0,0]) == 5
	assert candidate([1,0,0,0]) == 3
	assert candidate([0,0,0,0,0,0,0,0,0,0,1]) == 10
	assert candidate([1,0,1,0,0,0,0,1]) == 2
	assert candidate([1,0,0,0,1,0,0,0,1]) == 2
	assert candidate([1,0,0,0,1,0,1]) == 2
	assert candidate([0,0,0,0,0,0,1,0,0,0]) == 6
	assert candidate([1,0,0,0,1,0,0,1]) == 2
	assert candidate([0,0,0,0,1,0,0,0]) == 4
	assert candidate([0,1,0,1,0,0,0,0,1,0,1]) == 2
	assert candidate([0,1,0,0,0,1,0,1,0,0,1,0]) == 2
	assert candidate([1,0,0,0,0,0,0,0,1,0,0,0]) == 4
def test_check():
	check(maxDistToClosest)
# Metadata Difficulty: Medium
# Metadata Topics: array
# Metadata Coverage: 100
