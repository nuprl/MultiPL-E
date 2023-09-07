def min_steps(n: int) -> int:
    """
    There is only one character 'A' on the screen of a notepad. You can perform one of two operations on this notepad for each step:

    Copy All: You can copy all the characters present on the screen (a partial copy is not allowed).
    Paste: You can paste the characters which are copied last time.

    Given an integer n, return the minimum number of operations to get the character 'A' exactly n times on the screen.
 
    Example 1:

    Input: n = 3
    Output: 3
    Explanation: Initially, we have one character 'A'.
    In step 1, we use Copy All operation.
    In step 2, we use Paste operation to get 'AA'.
    In step 3, we use Paste operation to get 'AAA'.

    Example 2:

    Input: n = 1
    Output: 0

 
    Constraints:

    1 <= n <= 1000

    """
    ### Canonical solution below ###
    result = 0
    i = 2
    while i <= n:
        while n % i == 0:
            result += i
            n //= i
        i += 1
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(12) == 7
	assert candidate(1000) == 21
	assert candidate(512) == 18
	assert candidate(50) == 12
	assert candidate(10) == 7
	assert candidate(11) == 11
	assert candidate(40) == 11
	assert candidate(15) == 8
	assert candidate(6) == 5
	assert candidate(2) == 2
	assert candidate(18) == 8
	assert candidate(1) == 0
	assert candidate(20) == 9
	assert candidate(9) == 6
	assert candidate(504) == 19
	assert candidate(8) == 6
	assert candidate(100) == 14
	assert candidate(4) == 4
	assert candidate(25) == 10
	assert candidate(500) == 19
	assert candidate(625) == 20
	assert candidate(3) == 3
	assert candidate(101) == 101
	assert candidate(96) == 13
	assert candidate(19) == 19
	assert candidate(37) == 37
	assert candidate(5) == 5
	assert candidate(7) == 7
	assert candidate(13) == 13
	assert candidate(16) == 8
	assert candidate(32) == 10
	assert candidate(17) == 17
	assert candidate(14) == 9
def test_check():
	check(min_steps)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming
# Metadata Coverage: 100
