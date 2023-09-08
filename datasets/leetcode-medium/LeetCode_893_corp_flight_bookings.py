from typing import List


def corp_flight_bookings(bookings: List[List[int]], n: int) -> List[int]:
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
    answer = [0] * n
    for start, end, seats in bookings:
        answer[start - 1] += seats
        if end < n:
            answer[end] -= seats
    for i in range(1, n):
        answer[i] += answer[i - 1]
    return answer




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,10],[2,2,15]], 2) == [10,25]
	assert candidate([[1,1,10],[2,2,20],[3,3,30],[4,4,40],[5,5,50],[6,6,60]], 6) == [10, 20, 30, 40, 50, 60]
	assert candidate([[1,1,10]], 1) == [10]
	assert candidate([[1,1,10]], 3) == [10, 0, 0]
	assert candidate([[1,2,10]], 2) == [10,10]
	assert candidate([[1,2,10]], 3) == [10,10,0]
	assert candidate([[1,1,10]], 4) == [10, 0, 0, 0]
	assert candidate([[1,2,10],[2,3,20],[2,5,25]], 5) == [10,55,45,25,25]
	assert candidate([[1,2,10],[2,3,20]], 3) == [10,30,20]
	assert candidate([[1,5,10],[2,5,20],[3,5,30],[4,5,40],[5,5,50]], 5) == [10,30,60,100,150]
	assert candidate([[1,1,10],[1,2,20],[1,2,30]], 2) == [60,50]
	assert candidate([[1,1,10],[1,1,15]], 1) == [25]
	assert candidate([[1,1,10]], 2) == [10, 0]
	assert candidate([[1,5,10],[2,5,15],[3,5,20],[4,5,25],[5,5,30]], 5) == [10,25,45,70,100]
	assert candidate([[1,2,10],[2,3,20],[3,5,30]], 5) == [10,30,50,30,30]
	assert candidate([[1,3,10],[2,3,15]], 3) == [10,25,25]
	assert candidate([[1,1,10],[2,2,20],[3,3,30],[4,4,40],[5,5,50]], 5) == [10, 20, 30, 40, 50]
	assert candidate([[1,1,10],[1,2,20]], 2) == [30,20]
	assert candidate([[1,1,10],[2,2,20],[3,3,30],[4,4,40]], 4) == [10, 20, 30, 40]
	assert candidate([[1,1,1],[2,2,1],[3,3,1],[4,4,1],[5,5,1],[6,6,1],[7,7,1]], 7) == [1,1,1,1,1,1,1]
	assert candidate([[1,1,10],[2,2,20],[3,3,30],[4,4,40],[5,5,50],[6,6,60],[7,7,70]], 7) == [10, 20, 30, 40, 50, 60, 70]
	assert candidate([[1,1,1],[2,2,1],[3,3,1],[4,4,1]], 4) == [1,1,1,1]
	assert candidate([[1,2,10],[1,2,15]], 2) == [25,25]
	assert candidate([[1,5,10],[3,5,15],[4,5,20]], 5) == [10,10,25,45,45]
	assert candidate([[1,4,10],[2,5,20]], 5) == [10,30,30,30,20]
def test_check():
	check(corp_flight_bookings)
# Metadata Difficulty: Medium
# Metadata Topics: array,prefix-sum
# Metadata Coverage: 100
