def find_min_fibonacci_numbers(k: int) -> int:
    """
    Given an integer k, return the minimum number of Fibonacci numbers whose sum is equal to k. The same Fibonacci number can be used multiple times.
    The Fibonacci numbers are defined as:

    F1 = 1
    F2 = 1
    Fn = Fn-1 + Fn-2 for n > 2.

    It is guaranteed that for the given constraints we can always find such Fibonacci numbers that sum up to k.
 
    Example 1:

    Input: k = 7
    Output: 2 
    Explanation: The Fibonacci numbers are: 1, 1, 2, 3, 5, 8, 13, ... 
    For k = 7 we can use 2 + 5 = 7.
    Example 2:

    Input: k = 10
    Output: 2 
    Explanation: For k = 10 we can use 2 + 8 = 10.

    Example 3:

    Input: k = 19
    Output: 3 
    Explanation: For k = 19 we can use 1 + 5 + 13 = 19.

 
    Constraints:

    1 <= k <= 109

    """
    ### Canonical solution below ###
    if k == 0:
        return 0
    a, b = 0, 1
    while b <= k:
        a, b = b, a + b
    return 1 + find_min_fibonacci_numbers(k - a)




### Unit tests below ###
def check(candidate):
	assert candidate(69) == 3
	assert candidate(77) == 3
	assert candidate(23) == 2
	assert candidate(18) == 2
	assert candidate(78) == 3
	assert candidate(70) == 3
	assert candidate(16) == 2
	assert candidate(32) == 3
	assert candidate(39) == 2
	assert candidate(34) == 1
	assert candidate(59) == 3
	assert candidate(7) == 2
	assert candidate(40) == 3
	assert candidate(61) == 3
	assert candidate(201) == 3
	assert candidate(62) == 3
	assert candidate(1) == 1
	assert candidate(5) == 1
	assert candidate(9) == 2
	assert candidate(2) == 1
	assert candidate(24) == 2
	assert candidate(35) == 2
	assert candidate(56) == 2
	assert candidate(22) == 2
	assert candidate(94) == 2
	assert candidate(19) == 3
	assert candidate(36) == 2
	assert candidate(73) == 3
	assert candidate(48) == 3
	assert candidate(6) == 2
	assert candidate(25) == 3
	assert candidate(8) == 1
	assert candidate(15) == 2
	assert candidate(42) == 2
	assert candidate(3) == 1
	assert candidate(30) == 3
	assert candidate(17) == 3
	assert candidate(29) == 2
	assert candidate(45) == 3
	assert candidate(21) == 1
	assert candidate(0) == 0
	assert candidate(12) == 3
	assert candidate(4) == 2
	assert candidate(13) == 1
	assert candidate(27) == 3
	assert candidate(10) == 2
	assert candidate(26) == 2
	assert candidate(14) == 2
	assert candidate(31) == 3
	assert candidate(28) == 3
	assert candidate(58) == 2
	assert candidate(11) == 2
def test_check():
	check(find_min_fibonacci_numbers)
# Metadata Difficulty: Medium
# Metadata Topics: math,greedy
# Metadata Coverage: 100
