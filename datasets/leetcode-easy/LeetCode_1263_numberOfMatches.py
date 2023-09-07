def numberOfMatches(n: int) -> int:
    """
    You are given an integer n, the number of teams in a tournament that has strange rules:

    If the current number of teams is even, each team gets paired with another team. A total of n / 2 matches are played, and n / 2 teams advance to the next round.
    If the current number of teams is odd, one team randomly advances in the tournament, and the rest gets paired. A total of (n - 1) / 2 matches are played, and (n - 1) / 2 + 1 teams advance to the next round.

    Return the number of matches played in the tournament until a winner is decided.
 
    Example 1:

    Input: n = 7
    Output: 6
    Explanation: Details of the tournament: 
    - 1st Round: Teams = 7, Matches = 3, and 4 teams advance.
    - 2nd Round: Teams = 4, Matches = 2, and 2 teams advance.
    - 3rd Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
    Total number of matches = 3 + 2 + 1 = 6.

    Example 2:

    Input: n = 14
    Output: 13
    Explanation: Details of the tournament:
    - 1st Round: Teams = 14, Matches = 7, and 7 teams advance.
    - 2nd Round: Teams = 7, Matches = 3, and 4 teams advance.
    - 3rd Round: Teams = 4, Matches = 2, and 2 teams advance.
    - 4th Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
    Total number of matches = 7 + 3 + 2 + 1 = 13.

 
    Constraints:

    1 <= n <= 200

    """
    ### Canonical solution below ###
    matches = 0
    while n > 1:
        matches += n // 2
        n = (n + 1) // 2
    return matches




### Unit tests below ###
def check(candidate):
	assert candidate(17) == 16
	assert candidate(733) == 732
	assert candidate(150) == 149
	assert candidate(133) == 132
	assert candidate(107) == 106
	assert candidate(109) == 108
	assert candidate(909) == 908
	assert candidate(47) == 46
	assert candidate(203) == 202
	assert candidate(112) == 111
	assert candidate(129) == 128
	assert candidate(250) == 249
	assert candidate(4) == 3
	assert candidate(143) == 142
	assert candidate(71) == 70
	assert candidate(64) == 63
	assert candidate(113) == 112
	assert candidate(73) == 72
	assert candidate(46) == 45
	assert candidate(110) == 109
	assert candidate(12) == 11
	assert candidate(14) == 13
	assert candidate(201) == 200
	assert candidate(500) == 499
	assert candidate(153) == 152
	assert candidate(9) == 8
	assert candidate(185) == 184
	assert candidate(70) == 69
	assert candidate(75) == 74
	assert candidate(195) == 194
	assert candidate(25) == 24
	assert candidate(235) == 234
	assert candidate(145) == 144
	assert candidate(118) == 117
	assert candidate(111) == 110
	assert candidate(27) == 26
	assert candidate(223) == 222
	assert candidate(1) == 0
	assert candidate(11) == 10
	assert candidate(80) == 79
	assert candidate(200) == 199
	assert candidate(19) == 18
	assert candidate(119) == 118
	assert candidate(43) == 42
	assert candidate(20) == 19
	assert candidate(327) == 326
	assert candidate(255) == 254
	assert candidate(365) == 364
	assert candidate(35) == 34
	assert candidate(115) == 114
	assert candidate(60) == 59
	assert candidate(45) == 44
	assert candidate(7) == 6
	assert candidate(445) == 444
	assert candidate(151) == 150
	assert candidate(65535) == 65534
	assert candidate(63) == 62
	assert candidate(155) == 154
	assert candidate(130) == 129
	assert candidate(120) == 119
	assert candidate(30) == 29
	assert candidate(137) == 136
	assert candidate(990) == 989
	assert candidate(38) == 37
	assert candidate(8) == 7
	assert candidate(95) == 94
	assert candidate(15) == 14
	assert candidate(186) == 185
	assert candidate(979) == 978
	assert candidate(124) == 123
	assert candidate(16) == 15
	assert candidate(41) == 40
	assert candidate(57) == 56
	assert candidate(103) == 102
	assert candidate(5) == 4
	assert candidate(135) == 134
	assert candidate(171) == 170
	assert candidate(50) == 49
	assert candidate(40) == 39
	assert candidate(123) == 122
	assert candidate(39) == 38
	assert candidate(87) == 86
	assert candidate(174) == 173
	assert candidate(450) == 449
	assert candidate(101) == 100
	assert candidate(74) == 73
	assert candidate(85) == 84
	assert candidate(477) == 476
	assert candidate(131) == 130
	assert candidate(127) == 126
	assert candidate(13) == 12
	assert candidate(55) == 54
	assert candidate(209) == 208
	assert candidate(102) == 101
	assert candidate(176) == 175
	assert candidate(555) == 554
	assert candidate(18) == 17
	assert candidate(144) == 143
	assert candidate(373) == 372
	assert candidate(23) == 22
	assert candidate(105) == 104
	assert candidate(2) == 1
	assert candidate(132) == 131
	assert candidate(1858) == 1857
	assert candidate(993) == 992
	assert candidate(380) == 379
	assert candidate(10) == 9
	assert candidate(175) == 174
	assert candidate(126) == 125
	assert candidate(31) == 30
	assert candidate(125) == 124
	assert candidate(6) == 5
	assert candidate(304) == 303
	assert candidate(3) == 2
	assert candidate(2345) == 2344
	assert candidate(37) == 36
	assert candidate(99) == 98
	assert candidate(165) == 164
	assert candidate(356) == 355
	assert candidate(117) == 116
	assert candidate(21) == 20
	assert candidate(122) == 121
	assert candidate(65) == 64
	assert candidate(100) == 99
	assert candidate(32) == 31
	assert candidate(121) == 120
	assert candidate(128) == 127
	assert candidate(42) == 41
	assert candidate(51) == 50
def test_check():
	check(numberOfMatches)
# Metadata Difficulty: Easy
# Metadata Topics: math,simulation
# Metadata Coverage: 100
