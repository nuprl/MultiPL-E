def reachNumber(target: int) -> int:
    """
    You are standing at position 0 on an infinite number line. There is a destination at position target.
    You can make some number of moves numMoves so that:

    On each move, you can either go left or right.
    During the ith move (starting from i == 1 to i == numMoves), you take i steps in the chosen direction.

    Given the integer target, return the minimum number of moves required (i.e., the minimum numMoves) to reach the destination.
 
    Example 1:

    Input: target = 2
    Output: 3
    Explanation:
    On the 1st move, we step from 0 to 1 (1 step).
    On the 2nd move, we step from 1 to -1 (2 steps).
    On the 3rd move, we step from -1 to 2 (3 steps).

    Example 2:

    Input: target = 3
    Output: 2
    Explanation:
    On the 1st move, we step from 0 to 1 (1 step).
    On the 2nd move, we step from 1 to 3 (2 steps).

 
    Constraints:

    -109 <= target <= 109
    target != 0

    """
    ### Canonical solution below ###
    target = abs(target)
    step = 0
    sum = 0
    while sum < target:
        step += 1
        sum += step
    while (sum - target) % 2 != 0:
        step += 1
        sum += step
    return step




### Unit tests below ###
def check(candidate):
	assert candidate(13) == 5
	assert candidate(5) == 5
	assert candidate(30) == 8
	assert candidate(83) == 13
	assert candidate(43) == 9
	assert candidate(15) == 5
	assert candidate(22) == 7
	assert candidate(6) == 3
	assert candidate(55) == 10
	assert candidate(45) == 9
	assert candidate(31) == 9
	assert candidate(39) == 9
	assert candidate(17) == 6
	assert candidate(29) == 9
	assert candidate(47) == 10
	assert candidate(41) == 9
	assert candidate(34) == 8
	assert candidate(21) == 6
	assert candidate(53) == 10
	assert candidate(33) == 9
	assert candidate(0) == 0
	assert candidate(24) == 7
	assert candidate(4) == 3
	assert candidate(37) == 9
	assert candidate(28) == 7
	assert candidate(32) == 8
	assert candidate(3) == 2
	assert candidate(11) == 5
	assert candidate(1) == 1
	assert candidate(10) == 4
	assert candidate(9) == 5
	assert candidate(85) == 13
	assert candidate(26) == 7
	assert candidate(51) == 10
	assert candidate(36) == 8
	assert candidate(2) == 3
	assert candidate(8) == 4
	assert candidate(35) == 9
	assert candidate(49) == 10
	assert candidate(103) == 14
	assert candidate(19) == 6
def test_check():
	check(reachNumber)
# Metadata Difficulty: Medium
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
