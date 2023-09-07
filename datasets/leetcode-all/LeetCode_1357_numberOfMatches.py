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
    return n - 1




### Unit tests below ###
def check(candidate):
	assert candidate(48) == 47
	assert candidate(72) == 71
	assert candidate(86) == 85
	assert candidate(160) == 159
	assert candidate(225) == 224
	assert candidate(47) == 46
	assert candidate(112) == 111
	assert candidate(96) == 95
	assert candidate(88) == 87
	assert candidate(94) == 93
	assert candidate(4) == 3
	assert candidate(71) == 70
	assert candidate(64) == 63
	assert candidate(113) == 112
	assert candidate(73) == 72
	assert candidate(46) == 45
	assert candidate(110) == 109
	assert candidate(12) == 11
	assert candidate(14) == 13
	assert candidate(79) == 78
	assert candidate(90) == 89
	assert candidate(9) == 8
	assert candidate(70) == 69
	assert candidate(66) == 65
	assert candidate(58) == 57
	assert candidate(75) == 74
	assert candidate(52) == 51
	assert candidate(84) == 83
	assert candidate(27) == 26
	assert candidate(78) == 77
	assert candidate(80) == 79
	assert candidate(82) == 81
	assert candidate(1) == 0
	assert candidate(11) == 10
	assert candidate(43) == 42
	assert candidate(56) == 55
	assert candidate(20) == 19
	assert candidate(33) == 32
	assert candidate(81) == 80
	assert candidate(1000) == 999
	assert candidate(35) == 34
	assert candidate(115) == 114
	assert candidate(69) == 68
	assert candidate(60) == 59
	assert candidate(45) == 44
	assert candidate(28) == 27
	assert candidate(22) == 21
	assert candidate(26) == 25
	assert candidate(24) == 23
	assert candidate(63) == 62
	assert candidate(104) == 103
	assert candidate(120) == 119
	assert candidate(30) == 29
	assert candidate(38) == 37
	assert candidate(8) == 7
	assert candidate(92) == 91
	assert candidate(59) == 58
	assert candidate(36) == 35
	assert candidate(83) == 82
	assert candidate(16) == 15
	assert candidate(41) == 40
	assert candidate(5) == 4
	assert candidate(50) == 49
	assert candidate(40) == 39
	assert candidate(34) == 33
	assert candidate(67) == 66
	assert candidate(74) == 73
	assert candidate(53) == 52
	assert candidate(13) == 12
	assert candidate(102) == 101
	assert candidate(76) == 75
	assert candidate(18) == 17
	assert candidate(144) == 143
	assert candidate(54) == 53
	assert candidate(44) == 43
	assert candidate(2) == 1
	assert candidate(108) == 107
	assert candidate(62) == 61
	assert candidate(10) == 9
	assert candidate(126) == 125
	assert candidate(125) == 124
	assert candidate(6) == 5
	assert candidate(68) == 67
	assert candidate(37) == 36
	assert candidate(3) == 2
	assert candidate(21) == 20
	assert candidate(122) == 121
	assert candidate(98) == 97
	assert candidate(100) == 99
	assert candidate(32) == 31
	assert candidate(42) == 41
def test_check():
	check(numberOfMatches)
# Metadata Difficulty: Easy
# Metadata Topics: math,simulation
# Metadata Coverage: 100
