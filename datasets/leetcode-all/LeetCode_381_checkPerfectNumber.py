def checkPerfectNumber(num: int) -> bool:
    """
    A perfect number is a positive integer that is equal to the sum of its positive divisors, excluding the number itself. A divisor of an integer x is an integer that can divide x evenly.
    Given an integer n, return true if n is a perfect number, otherwise return false.
 
    Example 1:

    Input: num = 28
    Output: true
    Explanation: 28 = 1 + 2 + 4 + 7 + 14
    1, 2, 4, 7, and 14 are all divisors of 28.

    Example 2:

    Input: num = 7
    Output: false

 
    Constraints:

    1 <= num <= 108

    """
    ### Canonical solution below ###
    if num <= 1:
        return False
    sum = 1
    i = 2
    while i * i <= num:
        if num % i == 0:
            sum += i
            if i * i != num:
                sum += num // i
        i += 1
    return sum == num




### Unit tests below ###
def check(candidate):
	assert candidate(70) == False
	assert candidate(8125) == False
	assert candidate(33550336) == True
	assert candidate(1) == False
	assert candidate(20) == False
	assert candidate(10**8) == False
	assert candidate(120) == False
	assert candidate(100_000_000) == False
	assert candidate(10) == False
	assert candidate(50) == False
	assert candidate(10000) == False
	assert candidate(31) == False
	assert candidate(46) == False
	assert candidate(135) == False
	assert candidate(1_000_000_000) == False
	assert candidate(40) == False
	assert candidate(27) == False
	assert candidate(37) == False
	assert candidate(25) == False
	assert candidate(999_999_999_999) == False
	assert candidate(160_000_000) == False
	assert candidate(2_200_336) == False
	assert candidate(110_000_000) == False
	assert candidate(60_000_000) == False
	assert candidate(120_000_000) == False
	assert candidate(80_000_000) == False
	assert candidate(550) == False
	assert candidate(47) == False
	assert candidate(72) == False
	assert candidate(4_999_998) == False
	assert candidate(13) == False
	assert candidate(33) == False
	assert candidate(495) == False
	assert candidate(29) == False
	assert candidate(7) == False
	assert candidate(36) == False
	assert candidate(39) == False
	assert candidate(100000) == False
	assert candidate(30) == False
	assert candidate(30_000_000) == False
	assert candidate(9) == False
	assert candidate(10_000_000) == False
	assert candidate(40_000_000) == False
	assert candidate(2) == False
	assert candidate(12_000_000) == False
	assert candidate(4) == False
	assert candidate(4_999_996) == False
	assert candidate(2_000_000_000) == False
	assert candidate(49_000) == False
	assert candidate(18) == False
	assert candidate(496) == True
	assert candidate(49_999_995) == False
	assert candidate(64) == False
	assert candidate(10_000) == False
	assert candidate(24) == False
	assert candidate(35) == False
	assert candidate(5) == False
	assert candidate(200) == False
	assert candidate(33_550_336) == True
	assert candidate(150_000_000) == False
	assert candidate(112) == False
	assert candidate(500) == False
	assert candidate(36_000) == False
	assert candidate(500_000_000) == False
	assert candidate(45) == False
	assert candidate(50_000_000) == False
	assert candidate(105) == False
	assert candidate(49) == False
	assert candidate(750_000_000) == False
	assert candidate(70_000_000) == False
	assert candidate(90_000_000) == False
	assert candidate(499_999) == False
	assert candidate(42) == False
	assert candidate(140_000_000) == False
	assert candidate(12) == False
	assert candidate(20_000_000) == False
	assert candidate(130_000_000) == False
	assert candidate(3) == False
	assert candidate(2_000_000) == False
	assert candidate(1000_000_000) == False
	assert candidate(43) == False
	assert candidate(2000) == False
	assert candidate(44) == False
	assert candidate(28) == True
	assert candidate(5_000_000) == False
	assert candidate(55) == False
	assert candidate(41) == False
	assert candidate(250) == False
	assert candidate(48) == False
	assert candidate(4_999_997) == False
	assert candidate(34) == False
	assert candidate(32) == False
	assert candidate(4_999_999_999) == False
	assert candidate(8) == False
	assert candidate(4_999_999) == False
	assert candidate(26) == False
	assert candidate(60) == False
	assert candidate(8128) == True
	assert candidate(99) == False
	assert candidate(4950) == False
	assert candidate(22) == False
	assert candidate(38) == False
	assert candidate(999) == False
def test_check():
	check(checkPerfectNumber)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
