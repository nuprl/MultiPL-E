def is_happy(n: int) -> bool:
    """
    Write an algorithm to determine if a number n is happy.
    A happy number is a number defined by the following process:

    Starting with any positive integer, replace the number by the sum of the squares of its digits.
    Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
    Those numbers for which this process ends in 1 are happy.

    Return true if n is a happy number, and false if not.
 
    Example 1:

    Input: n = 19
    Output: true
    Explanation:
    12 + 92 = 82
    82 + 22 = 68
    62 + 82 = 100
    12 + 02 + 02 = 1

    Example 2:

    Input: n = 2
    Output: false

 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    def get_next(n):
        sum = 0
        while n > 0:
            digit = n % 10
            sum += digit * digit
            n //= 10
        return sum
    slow, fast = n, get_next(n)
    while fast != 1 and slow != fast:
        slow = get_next(slow)
        fast = get_next(get_next(fast))
    return fast == 1




### Unit tests below ###
def check(candidate):
	assert candidate(35) == False
	assert candidate(99) == False
	assert candidate(259) == False
	assert candidate(49) == True
	assert candidate(125) == False
	assert candidate(241) == False
	assert candidate(195) == False
	assert candidate(246) == False
	assert candidate(499) == False
	assert candidate(3) == False
	assert candidate(73) == False
	assert candidate(42) == False
	assert candidate(30) == False
	assert candidate(96) == False
	assert candidate(120) == False
	assert candidate(123) == False
	assert candidate(251) == False
	assert candidate(500) == False
	assert candidate(353) == False
	assert candidate(254) == False
	assert candidate(28) == True
	assert candidate(250) == False
	assert candidate(78) == False
	assert candidate(190) == True
	assert candidate(1301) == False
	assert candidate(4) == False
	assert candidate(40) == False
	assert candidate(122) == False
	assert candidate(700) == True
	assert candidate(63) == False
	assert candidate(242) == False
	assert candidate(102) == False
	assert candidate(36) == False
	assert candidate(60) == False
	assert candidate(38) == False
	assert candidate(69) == False
	assert candidate(121) == False
	assert candidate(98) == False
	assert candidate(5000000) == False
	assert candidate(7) == True
	assert candidate(95) == False
	assert candidate(256) == False
	assert candidate(400) == False
	assert candidate(20) == False
	assert candidate(244) == False
	assert candidate(134) == False
	assert candidate(130) == True
	assert candidate(26) == False
	assert candidate(16) == False
	assert candidate(93) == False
	assert candidate(43) == False
	assert candidate(180) == False
	assert candidate(65) == False
	assert candidate(97) == True
	assert candidate(50) == False
	assert candidate(6) == False
	assert candidate(133) == True
	assert candidate(90000) == False
	assert candidate(29) == False
	assert candidate(54) == False
	assert candidate(160) == False
	assert candidate(32) == True
	assert candidate(10) == True
	assert candidate(252) == False
	assert candidate(2000) == False
	assert candidate(128) == False
	assert candidate(84) == False
	assert candidate(23) == True
	assert candidate(194) == False
	assert candidate(280) == True
	assert candidate(75) == False
	assert candidate(24) == False
	assert candidate(249) == False
	assert candidate(47) == False
	assert candidate(1304) == False
	assert candidate(258) == False
	assert candidate(25) == False
	assert candidate(285) == False
	assert candidate(55) == False
	assert candidate(101) == False
	assert candidate(70) == True
	assert candidate(41) == False
	assert candidate(126) == False
	assert candidate(11) == False
	assert candidate(92) == False
	assert candidate(260) == False
	assert candidate(19) == True
	assert candidate(85) == False
	assert candidate(1000000) == True
	assert candidate(18) == False
	assert candidate(2) == False
	assert candidate(230) == True
	assert candidate(76) == False
	assert candidate(86) == True
	assert candidate(1302) == False
	assert candidate(52) == False
	assert candidate(110) == False
	assert candidate(196) == False
	assert candidate(124) == False
	assert candidate(107) == False
	assert candidate(12) == False
	assert candidate(34) == False
	assert candidate(237) == False
	assert candidate(170) == False
	assert candidate(200) == False
	assert candidate(71) == False
	assert candidate(5) == False
	assert candidate(22) == False
	assert candidate(37) == False
	assert candidate(245) == False
	assert candidate(21) == False
	assert candidate(387) == False
	assert candidate(13) == True
	assert candidate(240) == False
	assert candidate(1) == True
	assert candidate(15) == False
	assert candidate(135) == False
	assert candidate(493) == False
	assert candidate(64) == False
	assert candidate(72) == False
	assert candidate(1000) == True
	assert candidate(248) == False
	assert candidate(46) == False
	assert candidate(80) == False
	assert candidate(570) == False
	assert candidate(127) == False
	assert candidate(81) == False
	assert candidate(9) == False
	assert candidate(247) == False
	assert candidate(74) == False
	assert candidate(100) == True
	assert candidate(257) == False
	assert candidate(253) == False
	assert candidate(300) == False
	assert candidate(27) == False
	assert candidate(255) == False
	assert candidate(243) == False
	assert candidate(14) == False
	assert candidate(17) == False
	assert candidate(33) == False
	assert candidate(8) == False
	assert candidate(39) == False
	assert candidate(1337) == True
def test_check():
	check(is_happy)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,math,two-pointers
# Metadata Coverage: 100
