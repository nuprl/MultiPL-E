def mySqrt(x: int) -> int:
    """
    Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
    You must not use any built-in exponent function or operator.

    For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

 
    Example 1:

    Input: x = 4
    Output: 2
    Explanation: The square root of 4 is 2, so we return 2.

    Example 2:

    Input: x = 8
    Output: 2
    Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.

 
    Constraints:

    0 <= x <= 231 - 1

    """
    ### Canonical solution below ###
    if x == 0 or x == 1:
        return x
    start, end, ans = 1, x, 0
    while start <= end:
        mid = (start + end) // 2
        if mid * mid == x:
            return mid
        if mid * mid < x:
            start = mid + 1
            ans = mid
        else:
            end = mid - 1
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(7) == 2
	assert candidate(1) == 1
	assert candidate(250) == 15
	assert candidate(8) == 2
	assert candidate(144) == 12
	assert candidate(31) == 5
	assert candidate(121) == 11
	assert candidate(27) == 5
	assert candidate(1023) == 31
	assert candidate(512) == 22
	assert candidate(5) == 2
	assert candidate(29) == 5
	assert candidate(26) == 5
	assert candidate(20) == 4
	assert candidate(231 - 1) == 15
	assert candidate(40) == 6
	assert candidate(65) == 8
	assert candidate(81) == 9
	assert candidate(2304) == 48
	assert candidate(1111) == 33
	assert candidate(32) == 5
	assert candidate(128) == 11
	assert candidate(3) == 1
	assert candidate(1024 + 1) == 32
	assert candidate(20000) == 141
	assert candidate(18) == 4
	assert candidate(256) == 16
	assert candidate(156) == 12
	assert candidate(35) == 5
	assert candidate(249) == 15
	assert candidate(160) == 12
	assert candidate(48) == 6
	assert candidate(14) == 3
	assert candidate(122) == 11
	assert candidate(19) == 4
	assert candidate(15625) == 125
	assert candidate(200) == 14
	assert candidate(25) == 5
	assert candidate(1024) == 32
	assert candidate(225) == 15
	assert candidate(36) == 6
	assert candidate(4) == 2
	assert candidate(49) == 7
	assert candidate(10000) == 100
	assert candidate(216) == 14
	assert candidate(900) == 30
	assert candidate(90) == 9
	assert candidate(15) == 3
	assert candidate(130) == 11
	assert candidate(10) == 3
	assert candidate(1236) == 35
	assert candidate(30) == 5
	assert candidate(6) == 2
	assert candidate(10024) == 100
	assert candidate(3000) == 54
	assert candidate(1220) == 34
	assert candidate(2) == 1
	assert candidate(45) == 6
	assert candidate(70) == 8
	assert candidate(484) == 22
	assert candidate(289) == 17
	assert candidate(17) == 4
	assert candidate(16) == 4
	assert candidate(22) == 4
	assert candidate(441) == 21
	assert candidate(23) == 4
	assert candidate(28) == 5
	assert candidate(264) == 16
	assert candidate(24) == 4
	assert candidate(1000000) == 1000
	assert candidate(1025) == 32
	assert candidate(21) == 4
	assert candidate(999) == 31
	assert candidate(2147483647) == 46340
	assert candidate(79) == 8
	assert candidate(400) == 20
	assert candidate(201) == 14
	assert candidate(0) == 0
	assert candidate(1225) == 35
	assert candidate(3168) == 56
	assert candidate(2000) == 44
	assert candidate(1000) == 31
	assert candidate(196) == 14
	assert candidate(3600) == 60
	assert candidate(12) == 3
	assert candidate(11) == 3
	assert candidate(100) == 10
	assert candidate(625) == 25
	assert candidate(39) == 6
	assert candidate(9) == 3
	assert candidate(13) == 3
def test_check():
	check(mySqrt)
# Metadata Difficulty: Easy
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
