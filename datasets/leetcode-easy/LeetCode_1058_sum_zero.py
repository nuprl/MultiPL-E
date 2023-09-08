from typing import List


def sum_zero(n: int) -> List[int]:
    """
    Given an integer n, return any array containing n unique integers such that they add up to 0.
 
    Example 1:

    Input: n = 5
    Output: [-7,-1,1,3,4]
    Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].

    Example 2:

    Input: n = 3
    Output: [-1,0,1]

    Example 3:

    Input: n = 1
    Output: [0]

 
    Constraints:

    1 <= n <= 1000

    """
    ### Canonical solution below ###
    res = []
    for i in range(1, (n // 2) + 1):
        res.append(i)
        res.append(-i)
    if n % 2 != 0:
        res.append(0)
    return res




### Unit tests below ###
def check(candidate):
	assert candidate(16) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8, -8]
	assert candidate(5) == [1, -1, 2, -2, 0]
	assert candidate(3) == [1, -1, 0]
	assert candidate(8) == [1, -1, 2, -2, 3, -3, 4, -4]
	assert candidate(99) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8, -8, 9, -9, 10, -10, 11, -11, 12, -12, 13, -13, 14, -14, 15, -15, 16, -16, 17, -17, 18, -18, 19, -19, 20, -20, 21, -21, 22, -22, 23, -23, 24, -24, 25, -25, 26, -26, 27, -27, 28, -28, 29, -29, 30, -30, 31, -31, 32, -32, 33, -33, 34, -34, 35, -35, 36, -36, 37, -37, 38, -38, 39, -39, 40, -40, 41, -41, 42, -42, 43, -43, 44, -44, 45, -45, 46, -46, 47, -47, 48, -48, 49, -49, 0]
	assert candidate(10) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5]
	assert candidate(9) == [1, -1, 2, -2, 3, -3, 4, -4, 0]
	assert candidate(14) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7]
	assert candidate(4) == [1, -1, 2, -2]
	assert candidate(1) == [0]
	assert candidate(2) == [1, -1]
	assert candidate(11) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 0]
	assert candidate(7) == [1, -1, 2, -2, 3, -3, 0]
	assert candidate(6) == [1, -1, 2, -2, 3, -3]
	assert candidate(13) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 0]
	assert candidate(12) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6]
	assert candidate(17) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8, -8, 0]
	assert candidate(0) == []
	assert candidate(15) == [1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 0]
def test_check():
	check(sum_zero)
# Metadata Difficulty: Easy
# Metadata Topics: array,math
# Metadata Coverage: 100
