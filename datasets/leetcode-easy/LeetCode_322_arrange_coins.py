def arrange_coins(n: int) -> int:
    """
    You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.
    Given the integer n, return the number of complete rows of the staircase you will build.
 
    Example 1:


    Input: n = 5
    Output: 2
    Explanation: Because the 3rd row is incomplete, we return 2.

    Example 2:


    Input: n = 8
    Output: 3
    Explanation: Because the 4th row is incomplete, we return 3.

 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    k = 0
    while n > k:
        k += 1
        n -= k
    return k




### Unit tests below ###
def check(candidate):
	assert candidate(11) == 4
	assert candidate(7) == 3
	assert candidate(8) == 3
	assert candidate(231) == 21
	assert candidate(66) == 11
	assert candidate(60) == 10
	assert candidate(134) == 15
	assert candidate(120) == 15
	assert candidate(5) == 2
	assert candidate(105) == 14
	assert candidate(210) == 20
	assert candidate(55) == 10
	assert candidate(1000) == 44
	assert candidate(16) == 5
	assert candidate(28) == 7
	assert candidate(13) == 4
	assert candidate(4) == 2
	assert candidate(3) == 2
	assert candidate(64) == 10
	assert candidate(190) == 19
	assert candidate(30) == 7
	assert candidate(6) == 3
	assert candidate(45) == 9
	assert candidate(100) == 13
	assert candidate(1) == 1
	assert candidate(21) == 6
	assert candidate(78) == 12
	assert candidate(0) == 0
	assert candidate(171) == 18
	assert candidate(153) == 17
	assert candidate(36) == 8
	assert candidate(10) == 4
	assert candidate(200) == 19
	assert candidate(2) == 1
	assert candidate(15) == 5
	assert candidate(136) == 16
	assert candidate(2**31 - 1) == 65535
	assert candidate(91) == 13
def test_check():
	check(arrange_coins)
# Metadata Difficulty: Easy
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
