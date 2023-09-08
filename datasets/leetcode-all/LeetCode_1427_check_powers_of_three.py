def check_powers_of_three(n: int) -> bool:
    """
    Given an integer n, return true if it is possible to represent n as the sum of distinct powers of three. Otherwise, return false.
    An integer y is a power of three if there exists an integer x such that y == 3x.
 
    Example 1:

    Input: n = 12
    Output: true
    Explanation: 12 = 31 + 32

    Example 2:

    Input: n = 91
    Output: true
    Explanation: 91 = 30 + 32 + 34

    Example 3:

    Input: n = 21
    Output: false

 
    Constraints:

    1 <= n <= 107

    """
    ### Canonical solution below ###
    while n > 0:
        if n % 3 == 2:
            return False
        n //= 3
    return True




### Unit tests below ###
def check(candidate):
	assert candidate(21) == False
	assert candidate(96) == False
	assert candidate(80) == False
	assert candidate(18) == False
	assert candidate(100) == False
	assert candidate(22) == False
	assert candidate(42) == False
	assert candidate(81) == True
	assert candidate(63) == False
	assert candidate(24) == False
	assert candidate(78) == False
	assert candidate(33) == False
	assert candidate(9) == True
	assert candidate(76) == False
	assert candidate(123) == False
	assert candidate(74) == False
	assert candidate(8) == False
	assert candidate(135) == False
	assert candidate(189) == False
	assert candidate(27) == True
	assert candidate(102) == False
	assert candidate(1) == True
	assert candidate(108) == True
	assert candidate(48) == False
	assert candidate(54) == False
	assert candidate(45) == False
	assert candidate(15) == False
	assert candidate(243) == True
	assert candidate(50) == False
	assert candidate(75) == False
	assert candidate(126) == False
	assert candidate(91) == True
	assert candidate(66) == False
	assert candidate(0) == True
	assert candidate(107) == False
	assert candidate(32) == False
	assert candidate(69) == False
	assert candidate(12) == True
	assert candidate(105) == False
	assert candidate(85) == True
	assert candidate(3) == True
	assert candidate(6) == False
	assert candidate(99) == False
	assert candidate(19) == False
	assert candidate(162) == False
	assert candidate(60) == False
	assert candidate(72) == False
	assert candidate(36) == True
def test_check():
	check(check_powers_of_three)
# Metadata Difficulty: Medium
# Metadata Topics: math
# Metadata Coverage: 100
