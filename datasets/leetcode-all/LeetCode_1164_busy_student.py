from typing import List


def busy_student(start_time: List[int], end_time: List[int], query_time: int) -> int:
    """
    Given two integer arrays startTime and endTime and given an integer queryTime.
    The ith student started doing their homework at the time startTime[i] and finished it at time endTime[i].
    Return the number of students doing their homework at time queryTime. More formally, return the number of students where queryTime lays in the interval [startTime[i], endTime[i]] inclusive.
 
    Example 1:

    Input: startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
    Output: 1
    Explanation: We have 3 students where:
    The first student started doing homework at time 1 and finished at time 3 and wasn't doing anything at time 4.
    The second student started doing homework at time 2 and finished at time 2 and also wasn't doing anything at time 4.
    The third student started doing homework at time 3 and finished at time 7 and was the only student doing homework at time 4.

    Example 2:

    Input: startTime = [4], endTime = [4], queryTime = 4
    Output: 1
    Explanation: The only student was doing their homework at the queryTime.

 
    Constraints:

    startTime.length == endTime.length
    1 <= startTime.length <= 100
    1 <= startTime[i] <= endTime[i] <= 1000
    1 <= queryTime <= 1000

    """
    ### Canonical solution below ###
    count = 0
    for i in range(len(start_time)):
        if start_time[i] <= query_time <= end_time[i]:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4], [5, 6, 7, 8], 4) == 4
	assert candidate([1, 2, 3, 4], [5, 6, 7, 8], 6) == 3
	assert candidate([1, 2, 3], [3, 2, 7], 1) == 1
	assert candidate([1, 1, 1, 1], [2, 2, 2, 2], 2) == 4
	assert candidate([1, 2, 3, 4], [5, 6, 7, 8], 5) == 4
	assert candidate([1], [2], 1) == 1
	assert candidate([4], [4], 4) == 1
	assert candidate([1, 2, 3, 4], [5, 6, 7, 8], 8) == 1
	assert candidate([1, 2, 3], [3, 2, 7], 6) == 1
	assert candidate([1, 2, 3], [3, 2, 7], 5) == 1
	assert candidate([4], [4], 3) == 0
	assert candidate([], [], 5) == 0
	assert candidate([1, 2, 3], [3, 2, 7], 10) == 0
	assert candidate([1, 2, 3], [3, 2, 7], 3) == 2
	assert candidate([1, 1, 1, 1], [2, 2, 2, 2], 1) == 4
	assert candidate([1, 2, 3], [3, 2, 7], 0) == 0
	assert candidate([1, 2, 3], [3, 2, 7], 7) == 1
def test_check():
	check(busy_student)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
