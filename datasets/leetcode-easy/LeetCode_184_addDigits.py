def addDigits(num: int) -> int:
    """
    Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
 
    Example 1:

    Input: num = 38
    Output: 2
    Explanation: The process is
    38 --> 3 + 8 --> 11
    11 --> 1 + 1 --> 2 
    Since 2 has only one digit, return it.

    Example 2:

    Input: num = 0
    Output: 0

 
    Constraints:

    0 <= num <= 231 - 1

 
    Follow up: Could you do it without any loop/recursion in O(1) runtime?
    """
    ### Canonical solution below ###
    return 1 + (num - 1) % 9




### Unit tests below ###
def check(candidate):
	assert candidate(9) == 9
	assert candidate(3) == 3
	assert candidate(7) == 7
	assert candidate(123456789) == 9
	assert candidate(1111) == 4
	assert candidate(231000000) == 6
	assert candidate(231) == 6
	assert candidate(12345678901) == 1
	assert candidate(231000000000) == 6
	assert candidate(1111111111) == 1
	assert candidate(231000) == 6
	assert candidate(5) == 5
	assert candidate(12345678909) == 9
	assert candidate(12) == 3
	assert candidate(1234567891) == 1
	assert candidate(2310) == 6
	assert candidate(1234567890) == 9
	assert candidate(2310000) == 6
	assert candidate(38) == 2
	assert candidate(4) == 4
	assert candidate(987654321) == 9
	assert candidate(6) == 6
	assert candidate(99) == 9
	assert candidate(2310000000) == 6
	assert candidate(123) == 6
	assert candidate(23100000000) == 6
	assert candidate(2) == 2
	assert candidate(23100000) == 6
	assert candidate(87654321) == 9
	assert candidate(123456789012) == 3
	assert candidate(9999999999) == 9
	assert candidate(23100) == 6
	assert candidate(18) == 9
	assert candidate(1000000000) == 1
	assert candidate(1000000000000000000) == 1
	assert candidate(456) == 6
	assert candidate(9876543210000) == 9
	assert candidate(10000000000000007) == 8
	assert candidate(8) == 8
	assert candidate(100000000) == 1
	assert candidate(1000000000000000000000000000000) == 1
	assert candidate(98765432109) == 9
	assert candidate(1) == 1
	assert candidate(9876543210) == 9
	assert candidate(98765432100) == 9
	assert candidate(9999999) == 9
	assert candidate(789) == 6
def test_check():
	check(addDigits)
# Metadata Difficulty: Easy
# Metadata Topics: math,simulation,number-theory
# Metadata Coverage: 100
