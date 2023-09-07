def countNumbersWithUniqueDigits(n: int) -> int:
    """
    Given an integer n, return the count of all numbers with unique digits, x, where 0 <= x < 10n.
 
    Example 1:

    Input: n = 2
    Output: 91
    Explanation: The answer should be the total numbers in the range of 0 ≤ x < 100, excluding 11,22,33,44,55,66,77,88,99

    Example 2:

    Input: n = 0
    Output: 1

 
    Constraints:

    0 <= n <= 8

    """
    ### Canonical solution below ###
    if n == 0:
        return 1

    total = 10
    unique_digits = 9
    current_available_digits = 9

    while n > 1 and current_available_digits > 0:
        unique_digits *= current_available_digits
        total += unique_digits
        current_available_digits -= 1
        n -= 1

    return total




### Unit tests below ###
def check(candidate):
	assert candidate(34) == 8877691
	assert candidate(16) == 8877691
	assert candidate(13) == 8877691
	assert candidate(20) == 8877691
	assert candidate(0) == 1
	assert candidate(1) == 10
	assert candidate(100) == 8877691
	assert candidate(4) == 5275
	assert candidate(26) == 8877691
	assert candidate(37) == 8877691
	assert candidate(19) == 8877691
	assert candidate(25) == 8877691
	assert candidate(18) == 8877691
	assert candidate(8) == 2345851
	assert candidate(30) == 8877691
	assert candidate(14) == 8877691
	assert candidate(23) == 8877691
	assert candidate(5) == 32491
	assert candidate(21) == 8877691
	assert candidate(2) == 91
	assert candidate(35) == 8877691
	assert candidate(3) == 739
	assert candidate(17) == 8877691
	assert candidate(24) == 8877691
	assert candidate(27) == 8877691
	assert candidate(10) == 8877691
	assert candidate(29) == 8877691
	assert candidate(9) == 5611771
	assert candidate(12) == 8877691
	assert candidate(15) == 8877691
	assert candidate(32) == 8877691
	assert candidate(38) == 8877691
	assert candidate(33) == 8877691
	assert candidate(36) == 8877691
	assert candidate(6) == 168571
	assert candidate(11) == 8877691
	assert candidate(7) == 712891
	assert candidate(22) == 8877691
	assert candidate(31) == 8877691
	assert candidate(28) == 8877691
def test_check():
	check(countNumbersWithUniqueDigits)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,backtracking
# Metadata Coverage: 100
