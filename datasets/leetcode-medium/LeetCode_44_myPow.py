from typing import Union


def myPow(x: float, n: int) -> float:
    """
    Implement pow(x, n), which calculates x raised to the power n (i.e., xn).
 
    Example 1:

    Input: x = 2.00000, n = 10
    Output: 1024.00000

    Example 2:

    Input: x = 2.10000, n = 3
    Output: 9.26100

    Example 3:

    Input: x = 2.00000, n = -2
    Output: 0.25000
    Explanation: 2-2 = 1/22 = 1/4 = 0.25

 
    Constraints:

    -100.0 < x < 100.0
    -231 <= n <= 231-1
    n is an integer.
    Either x is not zero or n > 0.
    -104 <= xn <= 104

    """
    ### Canonical solution below ###
    if n == 0:
        return 1
    if n < 0:
        x = 1 / x
        n = -n
    result = 1
    currentProduct = x
    i = n
    while i:
        if i % 2 == 1:
            result *= currentProduct
        currentProduct *= currentProduct
        i //= 2
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(-2, -3) == -0.125
	assert candidate(-5, 0) == 1
	assert candidate(-5, 1) == -5
	assert candidate(-2, 3) == -8
	assert candidate(2, 3) == 8
	assert candidate(3, 5) == 243
	assert candidate(3, 0) == 1
	assert candidate(2, 8) == 256
	assert candidate(2, -8) == 0.00390625
	assert candidate(2, 1) == 2
	assert candidate(10, 3) == 1000
	assert candidate(-0.1, -9) == -1e9
	assert candidate(3, 1) == 3
	assert candidate(5.5, 1) == 5.5
	assert candidate(3.2, -4) == 0.0095367431640625
	assert candidate(2, -3) == 0.125
	assert candidate(2, 0) == 1
	assert candidate(-2, 4) == 16
	assert candidate(-5, 6) == 15625
	assert candidate(5, 6) == 15625
	assert candidate(0.5, 2) == 0.25
	assert candidate(-10, 0) == 1
	assert candidate(2, 4) == 16
	assert candidate(2, 10) == 1024
	assert candidate(2, 6) == 64
	assert candidate(3, 2) == 9
	assert candidate(3, 7) == 2187
	assert candidate(3, 6) == 729
	assert candidate(2, 10) == 1024.0
	assert candidate(1, 2) == 1
	assert candidate(-10, 2) == 100
	assert candidate(-0.1, -10) == 1e10
	assert candidate(0, 2) == 0
	assert candidate(2, -6) == 0.015625
	assert candidate(3.2, -1) == 1 / 3.2
	assert candidate(2, 9) == 512
	assert candidate(-2, -4) == 0.0625
	assert candidate(1, 1000000000) == 1
	assert candidate(3, 4) == 81
	assert candidate(-10, 1) == -10
	assert candidate(2, 7) == 128
	assert candidate(2, -2) == 0.25
	assert candidate(0.1, -10) == 1e10
	assert candidate(-1, 0) == 1
	assert candidate(0.5, -2) == 4.0
	assert candidate(-10, 3) == -1000
	assert candidate(3, 3) == 27
	assert candidate(1, 0) == 1
	assert candidate(1, 100) == 1
	assert candidate(5, 0) == 1
	assert candidate(2, 5) == 32
	assert candidate(2, -4) == 0.0625
	assert candidate(2, -5) == 0.03125
	assert candidate(2, -1) == 0.5
	assert candidate(2, -7) == 0.0078125
	assert candidate(-1, 99) == -1
	assert candidate(2, 2) == 4
	assert candidate(1, -1) == 1
	assert candidate(-1, 100) == 1
	assert candidate(50, 4) == 6250000
	assert candidate(-5, 5) == -3125
	assert candidate(-2, 0) == 1
	assert candidate(3, 8) == 6561
def test_check():
	check(myPow)
# Metadata Difficulty: Medium
# Metadata Topics: math,recursion
# Metadata Coverage: 100
