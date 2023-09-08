from typing import List


def findMinDifference(timePoints: List[str]) -> int:
    """
    Given a list of 24-hour clock time points in "HH:MM" format, return the minimum minutes difference between any two time-points in the list.
 
    Example 1:
    Input: timePoints = ["23:59","00:00"]
    Output: 1
    Example 2:
    Input: timePoints = ["00:00","23:59","00:00"]
    Output: 0

 
    Constraints:

    2 <= timePoints.length <= 2 * 104
    timePoints[i] is in the format "HH:MM".

    """
    ### Canonical solution below ###
    timePoints.sort()
    min_difference = float('inf')

    for i in range(len(timePoints)):
        h1, m1 = map(int, timePoints[i].split(':'))
        h2, m2 = map(int, timePoints[(i+1) % len(timePoints)].split(':'))
        cur_difference = abs((h1 * 60 + m1) - (h2 * 60 + m2))
        min_difference = min(min_difference, 1440 - cur_difference if cur_difference > 720 else cur_difference)

    return min_difference




### Unit tests below ###
def check(candidate):
	assert candidate(["00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]) == 60
	assert candidate(["00:00","23:59","23:59"]) == 0
	assert candidate(["01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"]) == 60
	assert candidate(["01:00","03:00","05:00","07:00","09:00","11:00"]) == 120
	assert candidate(["01:00","02:00","03:00"]) == 60
	assert candidate(["12:00","12:01","00:00","23:59"]) == 1
	assert candidate(["01:00","02:00","03:00","04:00"]) == 60
	assert candidate(["00:00","23:59","23:59","00:00"]) == 0
	assert candidate(["23:59","00:00"]) == 1
	assert candidate(["01:00","01:30","02:00","02:30","03:00","03:30","04:00","04:30","05:00","05:30"]) == 30
	assert candidate(["03:00","03:00"]) == 0
	assert candidate(["01:00","01:01"]) == 1
	assert candidate(["23:59","00:00","01:00"]) == 1
	assert candidate(["01:00","01:00","01:00"]) == 0
	assert candidate(["22:10","00:00","23:00"]) == 50
	assert candidate(["01:00","03:00","05:00","07:00","09:00"]) == 120
	assert candidate(["23:59","00:00","00:01","00:02"]) == 1
	assert candidate(["00:01","00:10"]) == 9
	assert candidate(["12:00","12:04","00:00","23:56"]) == 4
	assert candidate(["12:00","12:02","00:00","23:58"]) == 2
	assert candidate(["01:00","02:00"]) == 60
	assert candidate(["12:00","12:03","00:00","23:57"]) == 3
	assert candidate(["00:00","23:59","00:00"]) == 0
	assert candidate(["23:59","00:00","23:59","00:00"]) == 0
	assert candidate(["23:59","00:00","00:01","00:02","00:03","00:04","00:05"]) == 1
	assert candidate(["23:59","00:00","23:59","00:00","23:59","00:00","23:59","00:00"]) == 0
	assert candidate(["00:00","00:01","00:02","00:03"]) == 1
	assert candidate(["01:00","02:00","03:00","04:00","05:00"]) == 60
def test_check():
	check(findMinDifference)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,string,sorting
# Metadata Coverage: 100
