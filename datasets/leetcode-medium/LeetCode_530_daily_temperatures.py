from typing import List


def daily_temperatures(temperatures: List[int]) -> List[int]:
    """
    Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.
 
    Example 1:
    Input: temperatures = [73,74,75,71,69,72,76,73]
    Output: [1,1,4,2,1,1,0,0]
    Example 2:
    Input: temperatures = [30,40,50,60]
    Output: [1,1,1,0]
    Example 3:
    Input: temperatures = [30,60,90]
    Output: [1,1,0]

 
    Constraints:

    1 <= temperatures.length <= 105
    30 <= temperatures[i] <= 100

    """
    ### Canonical solution below ###
    result = [0] * len(temperatures)
    stack = []

    for i, temp in enumerate(temperatures):
        while stack and temp > temperatures[stack[-1]]:
            idx = stack.pop()
            result[idx] = i - idx
        stack.append(i)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([100]*105) == [0]*105
	assert candidate([90,80,70,60]) == [0,0,0,0]
	assert candidate([1]) == [0]
	assert candidate([]) == []
	assert candidate([30,40,50,60]) == [1,1,1,0]
	assert candidate([50,40,30,20,10]) == [0,0,0,0,0]
	assert candidate([30]*105) == [0]*105
	assert candidate([60]*100) == [0]*100
	assert candidate([60,70,80,90]) == [1,1,1,0]
	assert candidate(range(70, 60, -1)) == [0]*10
	assert candidate([100,90,80,70,60,50]) == [0,0,0,0,0,0]
	assert candidate([73,74,75,71,69,72,76,73]) == [1,1,4,2,1,1,0,0]
	assert candidate([70,70,70,70,70]) == [0,0,0,0,0]
	assert candidate([50,60,70,60,50,40]) == [1,1,0,0,0,0]
	assert candidate(
    [73, 74, 75, 71, 69, 72, 76, 73]) == [1, 1, 4, 2, 1, 1, 0, 0]
	assert candidate([1,2]) == [1,0]
	assert candidate([40,50,60,70,60,50,40]) == [1,1,1,0,0,0,0]
	assert candidate([30,60,90]) == [1,1,0]
	assert candidate([50,60,70,80,90,100]) == [1,1,1,1,1,0]
def test_check():
	check(daily_temperatures)
# Metadata Difficulty: Medium
# Metadata Topics: array,stack,monotonic-stack
# Metadata Coverage: 100
