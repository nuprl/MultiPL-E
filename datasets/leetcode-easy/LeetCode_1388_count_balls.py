def count_balls(low_limit: int, high_limit: int) -> int:
    """
    You are working in a ball factory where you have n balls numbered from lowLimit up to highLimit inclusive (i.e., n == highLimit - lowLimit + 1), and an infinite number of boxes numbered from 1 to infinity.
    Your job at this factory is to put each ball in the box with a number equal to the sum of digits of the ball's number. For example, the ball number 321 will be put in the box number 3 + 2 + 1 = 6 and the ball number 10 will be put in the box number 1 + 0 = 1.
    Given two integers lowLimit and highLimit, return the number of balls in the box with the most balls.
 
    Example 1:

    Input: lowLimit = 1, highLimit = 10
    Output: 2
    Explanation:
    Box Number:  1 2 3 4 5 6 7 8 9 10 11 ...
    Ball Count:  2 1 1 1 1 1 1 1 1 0  0  ...
    Box 1 has the most number of balls with 2 balls.
    Example 2:

    Input: lowLimit = 5, highLimit = 15
    Output: 2
    Explanation:
    Box Number:  1 2 3 4 5 6 7 8 9 10 11 ...
    Ball Count:  1 1 1 1 2 2 1 1 1 0  0  ...
    Boxes 5 and 6 have the most number of balls with 2 balls in each.

    Example 3:

    Input: lowLimit = 19, highLimit = 28
    Output: 2
    Explanation:
    Box Number:  1 2 3 4 5 6 7 8 9 10 11 12 ...
    Ball Count:  0 1 1 1 1 1 1 1 1 2  0  0  ...
    Box 10 has the most number of balls with 2 balls.

 
    Constraints:

    1 <= lowLimit <= highLimit <= 105

    """
    ### Canonical solution below ###
    box_counts = [0] * 46
    for i in range(low_limit, high_limit + 1):
        box_number = sum(map(int, str(i)))
        box_counts[box_number] += 1
    return max(box_counts)




### Unit tests below ###
def check(candidate):
	assert candidate(1000, 1100) == 10
	assert candidate(60, 70) == 2
	assert candidate(5500, 5600) == 10
	assert candidate(45, 55) == 2
	assert candidate(30, 40) == 2
	assert candidate(300000, 300100) == 10
	assert candidate(10000, 10100) == 10
	assert candidate(100, 110) == 2
	assert candidate(4500, 4600) == 10
	assert candidate(51, 60) == 2
	assert candidate(1000000, 1000100) == 10
	assert candidate(3500, 3600) == 10
	assert candidate(350, 360) == 2
	assert candidate(31, 40) == 2
	assert candidate(1, 10) == 2
	assert candidate(11, 20) == 2
	assert candidate(1, 100) == 10
	assert candidate(2000, 2100) == 10
	assert candidate(2500, 2600) == 10
	assert candidate(1, 11) == 2
	assert candidate(3000, 3100) == 10
	assert candidate(100, 200) == 10
	assert candidate(1500, 1600) == 10
	assert candidate(4000, 4100) == 10
	assert candidate(30000, 30100) == 10
	assert candidate(50, 60) == 2
	assert candidate(25, 35) == 2
	assert candidate(36, 45) == 2
	assert candidate(1, 15) == 2
	assert candidate(11, 21) == 2
	assert candidate(5000, 5100) == 10
	assert candidate(15, 25) == 2
	assert candidate(200, 210) == 2
	assert candidate(1000000000, 1000000100) == 10
	assert candidate(20, 30) == 2
	assert candidate(5001, 5100) == 10
	assert candidate(10, 20) == 2
	assert candidate(5, 15) == 2
	assert candidate(1000000, 1000000) == 1
	assert candidate(500, 600) == 10
	assert candidate(9000, 9100) == 10
	assert candidate(10000000, 10000100) == 10
	assert candidate(10000, 10101) == 10
	assert candidate(100000, 100100) == 10
	assert candidate(35, 45) == 2
	assert candidate(40, 50) == 2
def test_check():
	check(count_balls)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,math,counting
# Metadata Coverage: 100
