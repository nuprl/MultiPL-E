def integer_break(n: int) -> int:
    """
    Given an integer n, break it into the sum of k positive integers, where k >= 2, and maximize the product of those integers.
    Return the maximum product you can get.
 
    Example 1:

    Input: n = 2
    Output: 1
    Explanation: 2 = 1 + 1, 1 × 1 = 1.

    Example 2:

    Input: n = 10
    Output: 36
    Explanation: 10 = 3 + 3 + 4, 3 × 3 × 4 = 36.

 
    Constraints:

    2 <= n <= 58

    """
    ### Canonical solution below ###
    if n <= 3:
        return n - 1
    product = 1
    while n > 4:
        product *= 3
        n -= 3
    return product * n




### Unit tests below ###
def check(candidate):
	assert candidate(39) == 1594323
	assert candidate(48) == 43046721
	assert candidate(18) == 729
	assert candidate(25) == 8748
	assert candidate(1) == 0
	assert candidate(29) == 39366
	assert candidate(12) == 81
	assert candidate(32) == 118098
	assert candidate(3) == 2
	assert candidate(6) == 9
	assert candidate(13) == 108
	assert candidate(36) == 531441
	assert candidate(45) == 14348907
	assert candidate(8) == 18
	assert candidate(23) == 4374
	assert candidate(46) == 19131876
	assert candidate(47) == 28697814
	assert candidate(38) == 1062882
	assert candidate(2) == 1
	assert candidate(17) == 486
	assert candidate(11) == 54
	assert candidate(15) == 243
	assert candidate(41) == 3188646
	assert candidate(33) == 177147
	assert candidate(19) == 972
	assert candidate(5) == 6
	assert candidate(20) == 1458
	assert candidate(35) == 354294
	assert candidate(27) == 19683
	assert candidate(10) == 36
	assert candidate(42) == 4782969
	assert candidate(26) == 13122
	assert candidate(40) == 2125764
	assert candidate(21) == 2187
	assert candidate(28) == 26244
	assert candidate(44) == 9565938
	assert candidate(14) == 162
	assert candidate(31) == 78732
	assert candidate(9) == 27
	assert candidate(7) == 12
	assert candidate(34) == 236196
	assert candidate(24) == 6561
	assert candidate(30) == 59049
	assert candidate(37) == 708588
	assert candidate(22) == 2916
	assert candidate(43) == 6377292
	assert candidate(16) == 324
	assert candidate(4) == 4
def test_check():
	check(integer_break)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming
# Metadata Coverage: 100
