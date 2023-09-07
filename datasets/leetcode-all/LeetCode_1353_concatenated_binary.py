def concatenated_binary(n: int) -> int:
    """
    Given an integer n, return the decimal value of the binary string formed by concatenating the binary representations of 1 to n in order, modulo 109 + 7.
 
    Example 1:

    Input: n = 1
    Output: 1
    Explanation: "1" in binary corresponds to the decimal value 1. 

    Example 2:

    Input: n = 3
    Output: 27
    Explanation: In binary, 1, 2, and 3 corresponds to "1", "10", and "11".
    After concatenating them, we have "11011", which corresponds to the decimal value 27.

    Example 3:

    Input: n = 12
    Output: 505379714
    Explanation: The concatenation results in "1101110010111011110001001101010111100".
    The decimal value of that is 118505380540.
    After modulo 109 + 7, the result is 505379714.

 
    Constraints:

    1 <= n <= 105

    """
    ### Canonical solution below ###
    result = 0
    mod = 1000000007
    for i in range(1, n + 1):
        length = len(bin(i)) - 2
        result = ((result << length) % mod + i) % mod
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(5) == 1765
	assert candidate(3) == 27
	assert candidate(2) == 6
	assert candidate(4) == 220
	assert candidate(1) == 1
	assert candidate(12) == 505379714
def test_check():
	check(concatenated_binary)
# Metadata Difficulty: Medium
# Metadata Topics: math,bit-manipulation,simulation
# Metadata Coverage: 100
