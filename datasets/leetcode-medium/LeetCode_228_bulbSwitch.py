def bulbSwitch(n: int) -> int:
    """
    There are n bulbs that are initially off. You first turn on all the bulbs, then you turn off every second bulb.
    On the third round, you toggle every third bulb (turning on if it's off or turning off if it's on). For the ith round, you toggle every i bulb. For the nth round, you only toggle the last bulb.
    Return the number of bulbs that are on after n rounds.
 
    Example 1:


    Input: n = 3
    Output: 1
    Explanation: At first, the three bulbs are [off, off, off].
    After the first round, the three bulbs are [on, on, on].
    After the second round, the three bulbs are [on, off, on].
    After the third round, the three bulbs are [on, off, off]. 
    So you should return 1 because there is only one bulb is on.
    Example 2:

    Input: n = 0
    Output: 0

    Example 3:

    Input: n = 1
    Output: 1

 
    Constraints:

    0 <= n <= 109

    """
    ### Canonical solution below ###
    return int(n**0.5)




### Unit tests below ###
def check(candidate):
	assert candidate(7) == 2
	assert candidate(4) == 2
	assert candidate(5) == 2
	assert candidate(300) == 17
	assert candidate(48) == 6
	assert candidate(8) == 2
	assert candidate(37) == 6
	assert candidate(28) == 5
	assert candidate(16) == 4
	assert candidate(47) == 6
	assert candidate(21) == 4
	assert candidate(22) == 4
	assert candidate(42) == 6
	assert candidate(18) == 4
	assert candidate(50) == 7
	assert candidate(41) == 6
	assert candidate(29) == 5
	assert candidate(6) == 2
	assert candidate(44) == 6
	assert candidate(24) == 4
	assert candidate(19) == 4
	assert candidate(1) == 1
	assert candidate(3) == 1
	assert candidate(35) == 5
	assert candidate(32) == 5
	assert candidate(10000) == 100
	assert candidate(31) == 5
	assert candidate(49) == 7
	assert candidate(36) == 6
	assert candidate(43) == 6
	assert candidate(39) == 6
	assert candidate(34) == 5
	assert candidate(14) == 3
	assert candidate(45) == 6
	assert candidate(15) == 3
	assert candidate(33) == 5
	assert candidate(38) == 6
	assert candidate(25) == 5
	assert candidate(30) == 5
	assert candidate(17) == 4
	assert candidate(10) == 3
	assert candidate(51) == 7
	assert candidate(23) == 4
	assert candidate(13) == 3
	assert candidate(12) == 3
	assert candidate(20) == 4
	assert candidate(0) == 0
	assert candidate(27) == 5
	assert candidate(40) == 6
	assert candidate(26) == 5
	assert candidate(9) == 3
	assert candidate(46) == 6
	assert candidate(11) == 3
	assert candidate(2) == 1
def test_check():
	check(bulbSwitch)
# Metadata Difficulty: Medium
# Metadata Topics: math,brainteaser
# Metadata Coverage: 100
