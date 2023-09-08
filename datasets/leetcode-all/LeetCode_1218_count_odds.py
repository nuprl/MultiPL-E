def count_odds(low: int, high: int) -> int:
    """
    Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).
 
    Example 1:

    Input: low = 3, high = 7
    Output: 3
    Explanation: The odd numbers between 3 and 7 are [3,5,7].
    Example 2:

    Input: low = 8, high = 10
    Output: 1
    Explanation: The odd numbers between 8 and 10 are [9].
 
    Constraints:

    0 <= low <= high <= 10^9
    """
    ### Canonical solution below ###
    return (high + 1) // 2 - low // 2




### Unit tests below ###
def check(candidate):
	assert candidate(0, 21) == 11
	assert candidate(0, 101) == 51
	assert candidate(333, 666) == 167
	assert candidate(0, 4) == 2
	assert candidate(0, 1) == 1
	assert candidate(99999, 100000) == 1
	assert candidate(2, 13) == 6
	assert candidate(2, 4) == 1
	assert candidate(0, 100) == 50
	assert candidate(0, 12) == 6
	assert candidate(10, 20) == 5
	assert candidate(0, 3) == 2
	assert candidate(1, 1) == 1
	assert candidate(1, 100000) == 50000
	assert candidate(4, 21) == 9
	assert candidate(334, 666) == 166
	assert candidate(99999, 100002) == 2
	assert candidate(0, 25) == 13
	assert candidate(0, 50) == 25
	assert candidate(100000, 100000) == 0
	assert candidate(2, 3) == 1
	assert candidate(3, 4) == 1
	assert candidate(10, 21) == 6
	assert candidate(0, 51) == 26
	assert candidate(10, 11) == 1
	assert candidate(3, 100) == 49
	assert candidate(1, 5) == 3
	assert candidate(1, 4) == 2
	assert candidate(100000, 100001) == 1
	assert candidate(3, 7) == 3
	assert candidate(12, 21) == 5
	assert candidate(0, 0) == 0
	assert candidate(1, 100) == 50
	assert candidate(1, 12) == 6
	assert candidate(1, 14) == 7
	assert candidate(3, 101) == 50
	assert candidate(0, 10) == 5
	assert candidate(2, 11) == 5
	assert candidate(0, 1000) == 500
	assert candidate(2, 21) == 10
	assert candidate(3, 3) == 1
	assert candidate(333, 668) == 168
	assert candidate(1, 11) == 6
	assert candidate(334, 667) == 167
	assert candidate(1, 10) == 5
	assert candidate(2, 2) == 0
	assert candidate(1, 101) == 51
	assert candidate(0, 2) == 1
	assert candidate(0, 5) == 3
	assert candidate(10, 12) == 1
	assert candidate(1, 2) == 1
	assert candidate(3, 5) == 2
	assert candidate(11, 20) == 5
	assert candidate(1, 1000) == 500
	assert candidate(11, 21) == 6
	assert candidate(3, 40) == 19
	assert candidate(2, 5) == 2
	assert candidate(1, 3) == 2
	assert candidate(2, 101) == 50
def test_check():
	check(count_odds)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
