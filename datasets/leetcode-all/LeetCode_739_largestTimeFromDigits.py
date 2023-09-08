from typing import List


def largestTimeFromDigits(arr: List[int]) -> str:
    """
    Given an array arr of 4 digits, find the latest 24-hour time that can be made using each digit exactly once.
    24-hour times are formatted as "HH:MM", where HH is between 00 and 23, and MM is between 00 and 59. The earliest 24-hour time is 00:00, and the latest is 23:59.
    Return the latest 24-hour time in "HH:MM" format. If no valid time can be made, return an empty string.
 
    Example 1:

    Input: arr = [1,2,3,4]
    Output: "23:41"
    Explanation: The valid 24-hour times are "12:34", "12:43", "13:24", "13:42", "14:23", "14:32", "21:34", "21:43", "23:14", and "23:41". Of these times, "23:41" is the latest.

    Example 2:

    Input: arr = [5,5,5,5]
    Output: ""
    Explanation: There are no valid 24-hour times as "55:55" is not valid.

 
    Constraints:

    arr.length == 4
    0 <= arr[i] <= 9

    """
    ### Canonical solution below ###
    from itertools import permutations
    max_time = -1
    for h, i, j, k in permutations(arr):
        hour = h * 10 + i
        minute = j * 10 + k
        time = hour * 60 + minute
        if hour < 24 and minute < 60 and time > max_time:
            max_time = time

    if max_time == -1:
        return ""
    else:
        return "{:02d}:{:02d}".format(max_time // 60, max_time % 60)




### Unit tests below ###
def check(candidate):
	assert candidate([2,2,2,2]) == '22:22'
	assert candidate([1,0,0,0]) == "10:00"
	assert candidate([1,2,3,4]) == '23:41'
	assert candidate([0,1,0,0]) == "10:00"
	assert candidate([1,3,5,7]) == '17:53'
	assert candidate([9,1,9,1]) == '19:19'
	assert candidate( [5,5,5,5]) == ""
	assert candidate([1,0,0,7]) == "17:00"
	assert candidate([0, 5, 0, 0]) == '05:00'
	assert candidate([2,3,5,9]) == '23:59'
	assert candidate([0,0,0,0]) == '00:00'
	assert candidate([4,4,4,4]) == ''
	assert candidate([0,0,0,1]) == "10:00"
	assert candidate([3,3,3,3]) == ''
	assert candidate([0,0,0,3]) == '03:00'
	assert candidate([3,0,0,0]) == '03:00'
	assert candidate([1,2,3,5]) == '23:51'
	assert candidate([1,1,1,1]) == '11:11'
	assert candidate([2,4,0,0]) == '20:40'
	assert candidate( [5,5,5,5]) == ''
	assert candidate([3,0,7,0]) == '07:30'
	assert candidate([0, 0, 5, 0]) == '05:00'
	assert candidate([6,0,0,0]) == '06:00'
	assert candidate([0, 5, 7, 0]) == '07:50'
	assert candidate([0,8,2,0]) == "20:08"
	assert candidate([1,1,1,6]) == "16:11"
	assert candidate([0,0,3,0]) == '03:00'
	assert candidate([0,0,1,0]) == "10:00"
def test_check():
	check(largestTimeFromDigits)
# Metadata Difficulty: Medium
# Metadata Topics: string,enumeration
# Metadata Coverage: 100
