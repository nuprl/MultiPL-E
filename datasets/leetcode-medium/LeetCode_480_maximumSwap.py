def maximumSwap(num: int) -> int:
    """
    You are given an integer num. You can swap two digits at most once to get the maximum valued number.
    Return the maximum valued number you can get.
 
    Example 1:

    Input: num = 2736
    Output: 7236
    Explanation: Swap the number 2 and the number 7.

    Example 2:

    Input: num = 9973
    Output: 9973
    Explanation: No swap.

 
    Constraints:

    0 <= num <= 108

    """
    ### Canonical solution below ###
    num_str = list(str(num))
    last = {int(v): i for i, v in enumerate(num_str)}

    for i, v in enumerate(num_str):
        for d in range(9, int(v), -1):
            if last.get(d, -1) > i:
                num_str[i], num_str[last[d]] = num_str[last[d]], num_str[i]
                return int("".join(num_str))

    return num




### Unit tests below ###
def check(candidate):
	assert candidate(1234) == 4231
	assert candidate(1111) == 1111
	assert candidate(443222) == 443222
	assert candidate(713) == 731
	assert candidate(99) == 99
	assert candidate(123456789) == 923456781
	assert candidate(100) == 100
	assert candidate(9) == 9
	assert candidate(321) == 321
	assert candidate(98) == 98
	assert candidate(63) == 63
	assert candidate(743) == 743
	assert candidate(999) == 999
	assert candidate(14142) == 44112
	assert candidate(98765) == 98765
	assert candidate(100000) == 100000
	assert candidate(31) == 31
	assert candidate(2736) == 7236
	assert candidate(67) == 76
	assert candidate(12345) == 52341
	assert candidate(54321) == 54321
	assert candidate(987654321) == 987654321
	assert candidate(414) == 441
	assert candidate(6352) == 6532
	assert candidate(723) == 732
	assert candidate(974) == 974
	assert candidate(734) == 743
	assert candidate(413) == 431
	assert candidate(141) == 411
	assert candidate(4432222) == 4432222
	assert candidate(12) == 21
	assert candidate(14) == 41
	assert candidate(0) == 0
	assert candidate(9973) == 9973
	assert candidate(111111) == 111111
	assert candidate(1414) == 4411
	assert candidate(999999) == 999999
	assert candidate(765432) == 765432
	assert candidate(3333) == 3333
	assert candidate(4321) == 4321
	assert candidate(1) == 1
	assert candidate(271828182) == 871828122
	assert candidate(991) == 991
	assert candidate(96853) == 98653
	assert candidate(314) == 413
	assert candidate(72) == 72
	assert candidate(44322) == 44322
	assert candidate(271) == 721
	assert candidate(412) == 421
	assert candidate(27182818) == 87182812
	assert candidate(9999) == 9999
	assert candidate(613) == 631
	assert candidate(2718) == 8712
	assert candidate(27) == 72
	assert candidate(111) == 111
	assert candidate(53423) == 54323
	assert candidate(333111) == 333111
	assert candidate(997) == 997
	assert candidate(97) == 97
	assert candidate(9865) == 9865
	assert candidate(246813579) == 946813572
	assert candidate(987) == 987
	assert candidate(98754321) == 98754321
def test_check():
	check(maximumSwap)
# Metadata Difficulty: Medium
# Metadata Topics: math,greedy
# Metadata Coverage: 100
