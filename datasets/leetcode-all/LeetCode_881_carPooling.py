from typing import List


def carPooling(trips: List[List[int]], capacity: int) -> bool:
    """
    There is a car with capacity empty seats. The vehicle only drives east (i.e., it cannot turn around and drive west).
    You are given the integer capacity and an array trips where trips[i] = [numPassengersi, fromi, toi] indicates that the ith trip has numPassengersi passengers and the locations to pick them up and drop them off are fromi and toi respectively. The locations are given as the number of kilometers due east from the car's initial location.
    Return true if it is possible to pick up and drop off all passengers for all the given trips, or false otherwise.
 
    Example 1:

    Input: trips = [[2,1,5],[3,3,7]], capacity = 4
    Output: false

    Example 2:

    Input: trips = [[2,1,5],[3,3,7]], capacity = 5
    Output: true

 
    Constraints:

    1 <= trips.length <= 1000
    trips[i].length == 3
    1 <= numPassengersi <= 100
    0 <= fromi < toi <= 1000
    1 <= capacity <= 105

    """
    ### Canonical solution below ###
    stops = [0] * 1001
    for num, start, end in trips:
        stops[start] += num
        stops[end] -= num
    for i in stops:
        capacity -= i
        if capacity < 0:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([[2,1,5],[3,5,7]], 3) == True
	assert candidate([[8,1,8],[1,1,1],[2,2,2],[3,3,3],[4,4,4],[5,5,5],[6,6,6],[7,7,7],[8,8,8]],
    15) == True
	assert candidate(
    [[1,3,4],[1,2,4],[2,4,5],[1,4,5],[3,3,8],[3,6,8],[2,3,9],[2,3,8],[2,4,8],[4,4,6],[4,5,6],[7,5,7],[7,6,7],[7,8,8],[8,5,9],[8,6,9],[8,8,1],[7,9,1],[3,10,10],[7,10,10]],
    17,
) == False
	assert candidate(
    [
        [5,1,5],[4,4,7],[5,2,5],[2,5,7],[4,6,6],[3,6,7],[3,3,6],[3,6,7],
        [3,7,9],[2,9,7],[1,6,5],[3,3,7],[1,3,5],[3,5,7],[3,6,5],[2,3,6],
        [3,4,6],[1,2,5],[2,2,6],[4,1,7],[1,1,3],[1,1,5],[5,1,7],[4,4,5],[3,4,5],
        [4,1,5],[1,3,7],[1,9,2],[1,3,6],[3,3,5],[4,3,6],[2,3,7],[1,2,6],[1,3,6],
        [2,6,8],[3,4,7],[3,1,4],[1,5,3],[2,1,6],[2,5,6],[3,1,7],[2,2,7],[1,1,7],
        [3,1,6],[2,7,7],[1,6,7],[2,6,7],[2,2,5],[1,4,3],[3,2,7],[2,5,6],[1,3,4],
        [2,1,7],[1,4,7],[1,7,7],[2,3,5],[1,7,5],[1,2,4],[2,4,5]], 28) == False
	assert candidate([[3,2,7],[5,3,6],[2,6,7]], 6) == False
	assert candidate([[2,1,5],[3,3,7]], 5) == True
	assert candidate(
    [[4,1,5],[2,1,2],[2,2,7],[2,3,7],[2,4,5],[3,3,8],[3,6,9],[10,2,5],[10,3,7],[10,4,8]],
    17,
) == False
	assert candidate([[3,2,7],[5,3,6],[2,6,7]], 10) == True
	assert candidate([[3,2,7],[3,7,9],[8,3,9]], 10) == False
	assert candidate([[1,2,3],[3,2,7]], 2) == False
	assert candidate(
    [[1,1,5],[2,1,5],[5,1,20],[2,1,6],[5,1,20],[3,3,7],[2,2,7],[4,4,5],[4,5,9],[4,3,4],[4,3,9],[8,3,9]], 20) == False
	assert candidate([[2,1,5],[3,3,7],[1,9,10]], 6) == True
	assert candidate([[2,1,5],[3,3,7]], 4) == False
	assert candidate([[1,2,3],[3,2,7]], 4) == True
	assert candidate([[1,1,5],[8,3,6],[2,6,8]], 8) == False
	assert candidate([[3,2,7],[5,3,6],[2,6,7]], 7) == False
	assert candidate([[2,1,5],[3,3,7],[1,9,10]], 7) == True
	assert candidate([[1,1,5],[8,3,6],[2,6,8]], 6) == False
	assert candidate([[3,2,7],[3,7,9],[8,3,9]], 11) == True
	assert candidate(
    [[4,1,5],[2,1,2],[2,2,7],[2,3,7],[2,4,5],[3,3,8],[3,6,9],[10,2,5],[10,3,7],[10,4,8]],
    18,
) == False
	assert candidate([[1,1,5],[8,3,6],[2,6,8]], 7) == False
def test_check():
	check(carPooling)
# Metadata Difficulty: Medium
# Metadata Topics: array,sorting,heap-priority-queue,simulation,prefix-sum
# Metadata Coverage: 100
