def xor_operation(n: int, start: int) -> int:
    """
    You are given an integer n and an integer start.
    Define an array nums where nums[i] = start + 2 * i (0-indexed) and n == nums.length.
    Return the bitwise XOR of all elements of nums.
 
    Example 1:

    Input: n = 5, start = 0
    Output: 8
    Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
    Where "^" corresponds to bitwise XOR operator.

    Example 2:

    Input: n = 4, start = 3
    Output: 8
    Explanation: Array nums is equal to [3, 5, 7, 9] where (3 ^ 5 ^ 7 ^ 9) = 8.

 
    Constraints:

    1 <= n <= 1000
    0 <= start <= 1000
    n == nums.length

    """
    ### Canonical solution below ###
    xor_result = 0
    for i in range(n):
        xor_result ^= (start + 2 * i)
    return xor_result




### Unit tests below ###
def check(candidate):
	assert candidate(2, 0) == 2
	assert candidate(1, 7) == 7
	assert candidate(0, 0) == 0
	assert candidate(5, 0) == 8
	assert candidate(10, 5) == 2
	assert candidate(10, 4) == 2
	assert candidate(4, 3) == 8
	assert candidate(0, 100) == 0
	assert candidate(100, 100) == 0
	assert candidate(1000000, 1000000) == 0
def test_check():
	check(xor_operation)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation
# Metadata Coverage: 100
