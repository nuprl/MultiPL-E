def is_ugly(n: int) -> bool:
    """
    An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.
    Given an integer n, return true if n is an ugly number.
 
    Example 1:

    Input: n = 6
    Output: true
    Explanation: 6 = 2 × 3

    Example 2:

    Input: n = 1
    Output: true
    Explanation: 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.

    Example 3:

    Input: n = 14
    Output: false
    Explanation: 14 is not ugly since it includes the prime factor 7.

 
    Constraints:

    -231 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    if n <= 0:
        return False
    for factor in [2, 3, 5]:
        while n % factor == 0:
            n //= factor
    return n == 1




### Unit tests below ###
def check(candidate):
	assert candidate(143) == False
	assert candidate(154) == False
	assert candidate(44) == False
	assert candidate(43) == False
	assert candidate(291) == False
	assert candidate(82) == False
	assert candidate(1) == True
	assert candidate(315) == False
	assert candidate(130) == False
	assert candidate(297) == False
	assert candidate(-6) == False
	assert candidate(146) == False
	assert candidate(346) == False
	assert candidate(32) == True
	assert candidate(177) == False
	assert candidate(155) == False
	assert candidate(102) == False
	assert candidate(292) == False
	assert candidate(69) == False
	assert candidate(7) == False
	assert candidate(149) == False
	assert candidate(19) == False
	assert candidate(48) == True
	assert candidate(38) == False
	assert candidate(150) == True
	assert candidate(198) == False
	assert candidate(139) == False
	assert candidate(181) == False
	assert candidate(160) == True
	assert candidate(47) == False
	assert candidate(31) == False
	assert candidate(25) == True
	assert candidate(9) == True
	assert candidate(166) == False
	assert candidate(57) == False
	assert candidate(40) == True
	assert candidate(112) == False
	assert candidate(89) == False
	assert candidate(194) == False
	assert candidate(271) == False
	assert candidate(285) == False
	assert candidate(109) == False
	assert candidate(16) == True
	assert candidate(17) == False
	assert candidate(49) == False
	assert candidate(123) == False
	assert candidate(161) == False
	assert candidate(111) == False
	assert candidate(201) == False
	assert candidate(10) == True
	assert candidate(11) == False
	assert candidate(131) == False
	assert candidate(138) == False
	assert candidate(193) == False
	assert candidate(23) == False
	assert candidate(37) == False
	assert candidate(260) == False
	assert candidate(5) == True
	assert candidate(35) == False
	assert candidate(167) == False
	assert candidate(70) == False
	assert candidate(4) == True
	assert candidate(269) == False
	assert candidate(65) == False
	assert candidate(148) == False
	assert candidate(78) == False
	assert candidate(22) == False
	assert candidate(66) == False
	assert candidate(121) == False
	assert candidate(142) == False
	assert candidate(41) == False
	assert candidate(85) == False
	assert candidate(281) == False
	assert candidate(145) == False
	assert candidate(287) == False
	assert candidate(162) == True
	assert candidate(45) == True
	assert candidate(179) == False
	assert candidate(3) == True
	assert candidate(280) == False
	assert candidate(350) == False
	assert candidate(20) == True
	assert candidate(6) == True
	assert candidate(137) == False
	assert candidate(92) == False
	assert candidate(18) == True
	assert candidate(157) == False
	assert candidate(55) == False
	assert candidate(29) == False
	assert candidate(174) == False
	assert candidate(33) == False
	assert candidate(12) == True
	assert candidate(46) == False
	assert candidate(13) == False
	assert candidate(27) == True
	assert candidate(290) == False
	assert candidate(310) == False
	assert candidate(147) == False
	assert candidate(190) == False
	assert candidate(52) == False
	assert candidate(289) == False
	assert candidate(39) == False
	assert candidate(36) == True
	assert candidate(34) == False
	assert candidate(284) == False
	assert candidate(298) == False
	assert candidate(165) == False
	assert candidate(295) == False
	assert candidate(2) == True
	assert candidate(257) == False
	assert candidate(195) == False
	assert candidate(169) == False
	assert candidate(178) == False
	assert candidate(30) == True
	assert candidate(28) == False
	assert candidate(446) == False
	assert candidate(94) == False
	assert candidate(0) == False
	assert candidate(136) == False
	assert candidate(296) == False
	assert candidate(8) == True
	assert candidate(196) == False
	assert candidate(180) == True
	assert candidate(168) == False
	assert candidate(151) == False
	assert candidate(132) == False
	assert candidate(288) == True
	assert candidate(191) == False
	assert candidate(15) == True
	assert candidate(14) == False
	assert candidate(144) == True
	assert candidate(294) == False
	assert candidate(163) == False
	assert candidate(134) == False
	assert candidate(199) == False
	assert candidate(42) == False
	assert candidate(101) == False
	assert candidate(293) == False
	assert candidate(26) == False
	assert candidate(124) == False
	assert candidate(21) == False
	assert candidate(159) == False
def test_check():
	check(is_ugly)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
