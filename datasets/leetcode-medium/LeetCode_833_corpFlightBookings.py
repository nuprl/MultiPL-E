from typing import List


def corpFlightBookings(bookings: List[List[int]], n: int) -> List[int]:
    """
    There are n flights that are labeled from 1 to n.
    You are given an array of flight bookings bookings, where bookings[i] = [firsti, lasti, seatsi] represents a booking for flights firsti through lasti (inclusive) with seatsi seats reserved for each flight in the range.
    Return an array answer of length n, where answer[i] is the total number of seats reserved for flight i.
 
    Example 1:

    Input: bookings = [[1,2,10],[2,3,20],[2,5,25]], n = 5
    Output: [10,55,45,25,25]
    Explanation:
    Flight labels:        1   2   3   4   5
    Booking 1 reserved:  10  10
    Booking 2 reserved:      20  20
    Booking 3 reserved:      25  25  25  25
    Total seats:         10  55  45  25  25
    Hence, answer = [10,55,45,25,25]

    Example 2:

    Input: bookings = [[1,2,10],[2,2,15]], n = 2
    Output: [10,25]
    Explanation:
    Flight labels:        1   2
    Booking 1 reserved:  10  10
    Booking 2 reserved:      15
    Total seats:         10  25
    Hence, answer = [10,25]


 
    Constraints:

    1 <= n <= 2 * 104
    1 <= bookings.length <= 2 * 104
    bookings[i].length == 3
    1 <= firsti <= lasti <= n
    1 <= seatsi <= 104

    """
    ### Canonical solution below ###
    seats = [0] * n
    for booking in bookings:
        seats[booking[0] - 1] += booking[2]
        if booking[1] < n:
            seats[booking[1]] -= booking[2]
    for i in range(1, n):
        seats[i] += seats[i - 1]
    return seats




### Unit tests below ###
def check(candidate):
	assert candidate([[1,5,10],[6,10,5]], 10) == [10,10,10,10,10,5,5,5,5,5]
	assert candidate([[1,1,10],[2,2,5]], 2) == [10,5]
	assert candidate([[1,3,5],[4,6,10]], 6) == [5,5,5,10,10,10]
	assert candidate([[1,2,3],[2,3,4],[3,4,5]], 4) == [3,7,9,5]
	assert candidate([[1,1,10],[1,1,5]], 1) == [15]
	assert candidate([[1,1,1]], 1) == [1]
	assert candidate([[1,2,10],[2,3,20],[2,5,25]], 5) == [10,55,45,25,25]
	assert candidate([[1,3,10],[2,4,20]], 4) == [10,30,30,20]
	assert candidate([[2,2,10],[1,1,5]], 2) == [5,10]
	assert candidate([[1,2,10],[2,2,5]], 2) == [10,15]
	assert candidate([[1,3,5],[2,4,10]], 4) == [5,15,15,10]
	assert candidate([[1,10,1]], 10) == [1,1,1,1,1,1,1,1,1,1]
	assert candidate([[1,1,10],[2,3,20]], 3) == [10,20,20]
	assert candidate([[1,2,10],[2,2,15]], 2) == [10,25]
	assert candidate([[1,1,10],[2,2,10],[3,3,10]], 3) == [10,10,10]
	assert candidate([[1,2,10],[1,1,5]], 2) == [15,10]
	assert candidate([[1,3,5],[2,6,10]], 6) == [5,15,15,10,10,10]
	assert candidate([[1,2,10],[3,4,20]], 4) == [10,10,20,20]
def test_check():
	check(corpFlightBookings)
# Metadata Difficulty: Medium
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
