def trailing_zeroes(n: int) -> int:
    """
    Given an integer n, return the number of trailing zeroes in n!.
    Note that n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.
 
    Example 1:

    Input: n = 3
    Output: 0
    Explanation: 3! = 6, no trailing zero.

    Example 2:

    Input: n = 5
    Output: 1
    Explanation: 5! = 120, one trailing zero.

    Example 3:

    Input: n = 0
    Output: 0

 
    Constraints:

    0 <= n <= 104

 
    Follow up: Could you write a solution that works in logarithmic time complexity?
    """
    ### Canonical solution below ###
    count = 0
    while n > 0:
        n //= 5
        count += n
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(225) == 55
	assert candidate(180) == 44
	assert candidate(40) == 9
	assert candidate(95) == 22
	assert candidate(110) == 26
	assert candidate(28) == 6
	assert candidate(105) == 25
	assert candidate(145) == 35
	assert candidate(700) == 174
	assert candidate(115) == 27
	assert candidate(29) == 6
	assert candidate(1000000000) == 249999998
	assert candidate(140) == 34
	assert candidate(24) == 4
	assert candidate(210) == 51
	assert candidate(205) == 50
	assert candidate(22) == 4
	assert candidate(20) == 4
	assert candidate(15) == 3
	assert candidate(500) == 124
	assert candidate(70) == 16
	assert candidate(800) == 199
	assert candidate(215) == 52
	assert candidate(190) == 46
	assert candidate(3) == 0
	assert candidate(165) == 40
	assert candidate(0) == 0
	assert candidate(400) == 99
	assert candidate(80) == 19
	assert candidate(130) == 32
	assert candidate(23) == 4
	assert candidate(125) == 31
	assert candidate(45) == 10
	assert candidate(175) == 43
	assert candidate(300) == 74
	assert candidate(75) == 18
	assert candidate(7) == 1
	assert candidate(5) == 1
	assert candidate(170) == 41
	assert candidate(27) == 6
	assert candidate(135) == 33
	assert candidate(35) == 8
	assert candidate(30) == 7
	assert candidate(220) == 53
	assert candidate(55) == 13
	assert candidate(200) == 49
	assert candidate(60) == 14
	assert candidate(100) == 24
	assert candidate(90) == 21
	assert candidate(1000) == 249
	assert candidate(245) == 59
	assert candidate(25) == 6
	assert candidate(65) == 15
	assert candidate(85) == 20
	assert candidate(155) == 38
	assert candidate(21) == 4
	assert candidate(120) == 28
	assert candidate(160) == 39
	assert candidate(150) == 37
	assert candidate(185) == 45
	assert candidate(50) == 12
	assert candidate(195) == 47
	assert candidate(26) == 6
	assert candidate(10) == 2
def test_check():
	check(trailing_zeroes)
# Metadata Difficulty: Medium
# Metadata Topics: math
# Metadata Coverage: 100
