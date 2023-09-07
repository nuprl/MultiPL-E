from typing import List


def find_poisoned_duration(time_series: List[int], duration: int) -> int:
    """
    Our hero Teemo is attacking an enemy Ashe with poison attacks! When Teemo attacks Ashe, Ashe gets poisoned for a exactly duration seconds. More formally, an attack at second t will mean Ashe is poisoned during the inclusive time interval [t, t + duration - 1]. If Teemo attacks again before the poison effect ends, the timer for it is reset, and the poison effect will end duration seconds after the new attack.
    You are given a non-decreasing integer array timeSeries, where timeSeries[i] denotes that Teemo attacks Ashe at second timeSeries[i], and an integer duration.
    Return the total number of seconds that Ashe is poisoned.
 
    Example 1:

    Input: timeSeries = [1,4], duration = 2
    Output: 4
    Explanation: Teemo's attacks on Ashe go as follows:
    - At second 1, Teemo attacks, and Ashe is poisoned for seconds 1 and 2.
    - At second 4, Teemo attacks, and Ashe is poisoned for seconds 4 and 5.
    Ashe is poisoned for seconds 1, 2, 4, and 5, which is 4 seconds in total.

    Example 2:

    Input: timeSeries = [1,2], duration = 2
    Output: 3
    Explanation: Teemo's attacks on Ashe go as follows:
    - At second 1, Teemo attacks, and Ashe is poisoned for seconds 1 and 2.
    - At second 2 however, Teemo attacks again and resets the poison timer. Ashe is poisoned for seconds 2 and 3.
    Ashe is poisoned for seconds 1, 2, and 3, which is 3 seconds in total.
 
    Constraints:

    1 <= timeSeries.length <= 104
    0 <= timeSeries[i], duration <= 107
    timeSeries is sorted in non-decreasing order.

    """
    ### Canonical solution below ###
    if not time_series:
        return 0
    total = 0
    for i in range(1, len(time_series)):
        total += min(time_series[i] - time_series[i - 1], duration)
    return total + duration




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], 4) == 8
	assert candidate([1, 3, 5, 7, 9], 2) == 10
	assert candidate([1, 2, 3, 4, 5], 0) == 0
	assert candidate([1], 1) == 1
	assert candidate([1], 5) == 5
	assert candidate([1, 2, 3, 4, 5], 3) == 7
	assert candidate([1, 5, 9, 13, 17], 4) == 20
	assert candidate([1, 5], 1) == 2
	assert candidate([1, 2], 2) == 3
	assert candidate([1, 2, 3, 4, 5], 10) == 14
	assert candidate([1, 2, 3, 4, 5], 5) == 9
	assert candidate([1, 2, 3, 4, 5], 9) == 13
	assert candidate([1, 10, 100, 1000], 5) == 20
	assert candidate([1, 11, 21, 31, 41], 10) == 50
	assert candidate([1, 8], 5) == 10
	assert candidate([1, 4, 7, 10, 13], 3) == 15
	assert candidate([1, 7], 5) == 10
	assert candidate([1, 4], 2) == 4
	assert candidate([1, 6], 5) == 10
	assert candidate([1, 2, 3, 4, 5], 1) == 5
	assert candidate([], 5) == 0
	assert candidate([1, 2, 3, 4, 5], 2) == 6
	assert candidate([1, 6, 11, 16, 21], 5) == 25
def test_check():
	check(find_poisoned_duration)
# Metadata Difficulty: Easy
# Metadata Topics: array,simulation
# Metadata Coverage: 100
