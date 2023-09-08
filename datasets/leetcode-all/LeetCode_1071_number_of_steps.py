def number_of_steps(num: int) -> int:
    """
    Given an integer num, return the number of steps to reduce it to zero.
    In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.
 
    Example 1:

    Input: num = 14
    Output: 6
    Explanation: 
    Step 1) 14 is even; divide by 2 and obtain 7. 
    Step 2) 7 is odd; subtract 1 and obtain 6.
    Step 3) 6 is even; divide by 2 and obtain 3. 
    Step 4) 3 is odd; subtract 1 and obtain 2. 
    Step 5) 2 is even; divide by 2 and obtain 1. 
    Step 6) 1 is odd; subtract 1 and obtain 0.

    Example 2:

    Input: num = 8
    Output: 4
    Explanation: 
    Step 1) 8 is even; divide by 2 and obtain 4. 
    Step 2) 4 is even; divide by 2 and obtain 2. 
    Step 3) 2 is even; divide by 2 and obtain 1. 
    Step 4) 1 is odd; subtract 1 and obtain 0.

    Example 3:

    Input: num = 123
    Output: 12

 
    Constraints:

    0 <= num <= 106

    """
    ### Canonical solution below ###
    steps = 0
    while num:
        steps += 1 if num % 2 == 0 else 2
        num >>= 1
    return steps - 1




### Unit tests below ###
def check(candidate):
	assert candidate(33) == 7
	assert candidate(13) == 6
	assert candidate(29) == 8
	assert candidate(78) == 10
	assert candidate(42) == 8
	assert candidate(19) == 7
	assert candidate(22) == 7
	assert candidate(8) == 4
	assert candidate(0) == -1
	assert candidate(41) == 8
	assert candidate(6) == 4
	assert candidate(39) == 9
	assert candidate(44) == 8
	assert candidate(144) == 9
	assert candidate(38) == 8
	assert candidate(37) == 8
	assert candidate(32) == 6
	assert candidate(4) == 3
	assert candidate(43) == 9
	assert candidate(199) == 12
	assert candidate(132) == 9
	assert candidate(10) == 5
	assert candidate(123) == 12
	assert candidate(34) == 7
	assert candidate(46) == 9
	assert candidate(18) == 6
	assert candidate(5) == 4
	assert candidate(2) == 2
	assert candidate(27) == 8
	assert candidate(3) == 3
	assert candidate(9) == 5
	assert candidate(30) == 8
	assert candidate(36) == 7
	assert candidate(28) == 7
	assert candidate(35) == 8
	assert candidate(40) == 7
	assert candidate(15) == 7
	assert candidate(24) == 6
	assert candidate(77) == 10
	assert candidate(20) == 6
	assert candidate(11) == 6
	assert candidate(17) == 6
	assert candidate(88) == 9
	assert candidate(25) == 7
	assert candidate(94) == 11
	assert candidate(14) == 6
	assert candidate(21) == 7
	assert candidate(71) == 10
	assert candidate(16) == 5
	assert candidate(193) == 10
	assert candidate(45) == 9
	assert candidate(1) == 1
	assert candidate(23) == 8
	assert candidate(146) == 10
	assert candidate(26) == 7
	assert candidate(81) == 9
	assert candidate(47) == 10
	assert candidate(12) == 5
	assert candidate(52) == 8
	assert candidate(31) == 9
	assert candidate(176) == 10
	assert candidate(7) == 5
def test_check():
	check(number_of_steps)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation
# Metadata Coverage: 100
