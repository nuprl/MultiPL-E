def judge_square_sum(c: int) -> bool:
    """
    Given a non-negative integer c, decide whether there're two integers a and b such that a2 + b2 = c.
 
    Example 1:

    Input: c = 5
    Output: true
    Explanation: 1 * 1 + 2 * 2 = 5

    Example 2:

    Input: c = 3
    Output: false

 
    Constraints:

    0 <= c <= 231 - 1

    """
    ### Canonical solution below ###
    for a in range(int(c ** 0.5) + 1):
        b = int((c - a * a) ** 0.5)
        if a * a + b * b == c:
            return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate(18) == True
	assert candidate(48) == False
	assert candidate(64) == True
	assert candidate(24) == False
	assert candidate(10) == True
	assert candidate(52) == True
	assert candidate(42) == False
	assert candidate(23) == False
	assert candidate(34) == True
	assert candidate(31) == False
	assert candidate(45) == True
	assert candidate(22) == False
	assert candidate(65) == True
	assert candidate(17) == True
	assert candidate(27) == False
	assert candidate(6) == False
	assert candidate(20) == True
	assert candidate(38) == False
	assert candidate(56) == False
	assert candidate(1) == True
	assert candidate(57) == False
	assert candidate(19) == False
	assert candidate(25) == True
	assert candidate(55) == False
	assert candidate(11) == False
	assert candidate(8) == True
	assert candidate(44) == False
	assert candidate(29) == True
	assert candidate(15) == False
	assert candidate(68) == True
	assert candidate(32) == True
	assert candidate(16) == True
	assert candidate(35) == False
	assert candidate(3) == False
	assert candidate(9) == True
	assert candidate(59) == False
	assert candidate(33) == False
	assert candidate(0) == True
	assert candidate(72) == True
	assert candidate(14) == False
	assert candidate(43) == False
	assert candidate(58) == True
	assert candidate(40) == True
	assert candidate(50) == True
	assert candidate(47) == False
	assert candidate(54) == False
	assert candidate(12) == False
	assert candidate(30) == False
	assert candidate(4) == True
	assert candidate(21) == False
	assert candidate(39) == False
	assert candidate(28) == False
	assert candidate(5) == True
	assert candidate(51) == False
	assert candidate(2) == True
	assert candidate(7) == False
	assert candidate(46) == False
	assert candidate(13) == True
def test_check():
	check(judge_square_sum)
# Metadata Difficulty: Medium
# Metadata Topics: math,two-pointers,binary-search
# Metadata Coverage: 100
