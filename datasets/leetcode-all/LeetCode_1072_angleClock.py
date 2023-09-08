def angleClock(hour: int, minutes: int) -> float:
    """
    Given two numbers, hour and minutes, return the smaller angle (in degrees) formed between the hour and the minute hand.
    Answers within 10-5 of the actual value will be accepted as correct.
 
    Example 1:


    Input: hour = 12, minutes = 30
    Output: 165

    Example 2:


    Input: hour = 3, minutes = 30
    Output: 75

    Example 3:


    Input: hour = 3, minutes = 15
    Output: 7.5

 
    Constraints:

    1 <= hour <= 12
    0 <= minutes <= 59

    """
    ### Canonical solution below ###
    minute_angle = 6 * minutes
    hour_angle = 30 * hour + 0.5 * minutes
    angle = abs(hour_angle - minute_angle)
    return min(angle, 360 - angle)




### Unit tests below ###
def check(candidate):
	assert candidate(4, 30) == 45.0
	assert candidate(10, 0) == 60.0
	assert candidate(8, 0) == 120.0
	assert candidate(3, 15) == 7.5
	assert candidate(9, 0) == 90.0
	assert candidate(12, 30) == 165.0
	assert candidate(6, 0) == 180.0
	assert candidate(12, 0) == 0.0
	assert candidate(7, 0) == 150.0
	assert candidate(4, 0) == 120.0
	assert candidate(1, 0) == 30.0
	assert candidate(2, 0) == 60.0
	assert candidate(5, 0) == 150.0
	assert candidate(6, 45) == 67.5
	assert candidate(3, 0) == 90.0
	assert candidate(6, 30) == 15.0
	assert candidate(11, 0) == 30.0
	assert candidate(2, 30) == 105.0
	assert candidate(3, 30) == 75.0
def test_check():
	check(angleClock)
# Metadata Difficulty: Medium
# Metadata Topics: math
# Metadata Coverage: 100
