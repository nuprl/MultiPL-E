def is_perfect_square(num: int) -> bool:
    """
    Given a positive integer num, return true if num is a perfect square or false otherwise.
    A perfect square is an integer that is the square of an integer. In other words, it is the product of some integer with itself.
    You must not use any built-in library function, such as sqrt.
 
    Example 1:

    Input: num = 16
    Output: true
    Explanation: We return true because 4 * 4 = 16 and 4 is an integer.

    Example 2:

    Input: num = 14
    Output: false
    Explanation: We return false because 3.742 * 3.742 = 14 and 3.742 is not an integer.

 
    Constraints:

    1 <= num <= 231 - 1

    """
    ### Canonical solution below ###
    if num < 2:
        return True
    left, right = 2, num // 2
    while left <= right:
        mid = left + (right - left) // 2
        square = mid * mid
        if square == num:
            return True
        if square > num:
            right = mid - 1
        else:
            left = mid + 1
    return False




### Unit tests below ###
def check(candidate):
	assert candidate(10000000000000000) == True
	assert candidate(32) == False
	assert candidate(343) == False
	assert candidate(125) == False
	assert candidate(18) == False
	assert candidate(112) == False
	assert candidate(250) == False
	assert candidate(199) == False
	assert candidate(40000) == True
	assert candidate(130) == False
	assert candidate(226) == False
	assert candidate(9) == True
	assert candidate(102400) == True
	assert candidate(75) == False
	assert candidate(169) == True
	assert candidate(30) == False
	assert candidate(9999) == False
	assert candidate(441) == True
	assert candidate(194) == False
	assert candidate(64) == True
	assert candidate(22) == False
	assert candidate(2000000000) == False
	assert candidate(8) == False
	assert candidate(52) == False
	assert candidate(11) == False
	assert candidate(28) == False
	assert candidate(800) == False
	assert candidate(41) == False
	assert candidate(184) == False
	assert candidate(499) == False
	assert candidate(45) == False
	assert candidate(21) == False
	assert candidate(121) == True
	assert candidate(101) == False
	assert candidate(24) == False
	assert candidate(111) == False
	assert candidate(217) == False
	assert candidate(5) == False
	assert candidate(17) == False
	assert candidate(103) == False
	assert candidate(23) == False
	assert candidate(256) == True
	assert candidate(36) == True
	assert candidate(224) == False
	assert candidate(120) == False
	assert candidate(63) == False
	assert candidate(105) == False
	assert candidate(429) == False
	assert candidate(1024) == True
	assert candidate(500) == False
	assert candidate(49) == True
	assert candidate(100) == True
	assert candidate(1000000000000000) == False
	assert candidate(83) == False
	assert candidate(4999) == False
	assert candidate(243) == False
	assert candidate(35) == False
	assert candidate(144) == True
	assert candidate(53) == False
	assert candidate(13) == False
	assert candidate(3) == False
	assert candidate(196) == True
	assert candidate(38) == False
	assert candidate(2304) == True
	assert candidate(1) == True
	assert candidate(84) == False
	assert candidate(50) == False
	assert candidate(350) == False
	assert candidate(97) == False
	assert candidate(1025) == False
	assert candidate(225) == True
	assert candidate(119) == False
	assert candidate(625000) == False
	assert candidate(99999) == False
	assert candidate(31) == False
	assert candidate(1201) == False
	assert candidate(201) == False
	assert candidate(27) == False
	assert candidate(39) == False
	assert candidate(290) == False
	assert candidate(14) == False
	assert candidate(39999) == False
	assert candidate(55) == False
	assert candidate(400) == True
	assert candidate(26) == False
	assert candidate(10) == False
	assert candidate(7) == False
	assert candidate(128) == False
	assert candidate(6) == False
	assert candidate(16) == True
	assert candidate(54) == False
	assert candidate(99) == False
	assert candidate(33) == False
	assert candidate(81) == True
	assert candidate(808) == False
	assert candidate(12) == False
	assert candidate(225000) == False
	assert candidate(4) == True
	assert candidate(29) == False
	assert candidate(642) == False
	assert candidate(15) == False
	assert candidate(98) == False
	assert candidate(7900) == False
	assert candidate(20) == False
	assert candidate(48) == False
	assert candidate(136) == False
	assert candidate(80) == False
	assert candidate(200) == False
	assert candidate(19) == False
	assert candidate(51) == False
	assert candidate(10000000000000) == False
	assert candidate(10000) == True
	assert candidate(289) == True
	assert candidate(102) == False
	assert candidate(34) == False
	assert candidate(25) == True
	assert candidate(8281) == True
	assert candidate(2) == False
def test_check():
	check(is_perfect_square)
# Metadata Difficulty: Easy
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
