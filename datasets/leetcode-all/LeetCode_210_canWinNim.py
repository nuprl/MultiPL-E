def canWinNim(n: int) -> bool:
    """
    You are playing the following Nim Game with your friend:

    Initially, there is a heap of stones on the table.
    You and your friend will alternate taking turns, and you go first.
    On each turn, the person whose turn it is will remove 1 to 3 stones from the heap.
    The one who removes the last stone is the winner.

    Given n, the number of stones in the heap, return true if you can win the game assuming both you and your friend play optimally, otherwise return false.
 
    Example 1:

    Input: n = 4
    Output: false
    Explanation: These are the possible outcomes:
    1. You remove 1 stone. Your friend removes 3 stones, including the last stone. Your friend wins.
    2. You remove 2 stones. Your friend removes 2 stones, including the last stone. Your friend wins.
    3. You remove 3 stones. Your friend removes the last stone. Your friend wins.
    In all outcomes, your friend wins.

    Example 2:

    Input: n = 1
    Output: true

    Example 3:

    Input: n = 2
    Output: true

 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    return n % 4 != 0




### Unit tests below ###
def check(candidate):
	assert candidate(143) == True
	assert candidate(4) == False
	assert candidate(123) == True
	assert candidate(19) == True
	assert candidate(144) == False
	assert candidate(1005) == True
	assert candidate(224) == False
	assert candidate(7) == True
	assert candidate(125) == True
	assert candidate(6) == True
	assert candidate(101) == True
	assert candidate(10) == True
	assert candidate(1018) == True
	assert candidate(107) == True
	assert candidate(1015) == True
	assert candidate(1020) == False
	assert candidate(103) == True
	assert candidate(55) == True
	assert candidate(62) == True
	assert candidate(110) == True
	assert candidate(9) == True
	assert candidate(70) == True
	assert candidate(1000) == False
	assert candidate(102) == True
	assert candidate(119) == True
	assert candidate(49) == True
	assert candidate(1011) == True
	assert candidate(12) == False
	assert candidate(179) == True
	assert candidate(1017) == True
	assert candidate(31) == True
	assert candidate(1093) == True
	assert candidate(1016) == False
	assert candidate(16) == False
	assert candidate(114) == True
	assert candidate(112) == False
	assert candidate(13) == True
	assert candidate(2) == True
	assert candidate(1014) == True
	assert candidate(105) == True
	assert candidate(21) == True
	assert candidate(20) == False
	assert candidate(111) == True
	assert candidate(37) == True
	assert candidate(32) == False
	assert candidate(100) == False
	assert candidate(140) == False
	assert candidate(338) == True
	assert candidate(18) == True
	assert candidate(148) == False
	assert candidate(106) == True
	assert candidate(126) == True
	assert candidate(17) == True
	assert candidate(108) == False
	assert candidate(109) == True
	assert candidate(124) == False
	assert candidate(122) == True
	assert candidate(120) == False
	assert candidate(11) == True
	assert candidate(48) == False
	assert candidate(194) == True
	assert candidate(153) == True
	assert candidate(121) == True
	assert candidate(8) == False
	assert candidate(1) == True
	assert candidate(117) == True
	assert candidate(3) == True
	assert candidate(1002) == True
	assert candidate(14) == True
	assert candidate(15) == True
	assert candidate(1022) == True
	assert candidate(104) == False
	assert candidate(5) == True
	assert candidate(118) == True
	assert candidate(192) == False
	assert candidate(38) == True
	assert candidate(115) == True
	assert candidate(113) == True
	assert candidate(127) == True
	assert candidate(116) == False
	assert candidate(45) == True
	assert candidate(33) == True
	assert candidate(30) == True
	assert candidate(1001) == True
	assert candidate(24) == False
	assert candidate(1021) == True
	assert candidate(1009) == True
def test_check():
	check(canWinNim)
# Metadata Difficulty: Easy
# Metadata Topics: math,brainteaser,game-theory
# Metadata Coverage: 100
