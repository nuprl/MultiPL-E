def numTrees(n: int) -> int:
    """
    Given an integer n, return the number of structurally unique BST's (binary search trees) which has exactly n nodes of unique values from 1 to n.
 
    Example 1:


    Input: n = 3
    Output: 5

    Example 2:

    Input: n = 1
    Output: 1

 
    Constraints:

    1 <= n <= 19

    """
    ### Canonical solution below ###
    dp = [0] * (n + 1)
    dp[0] = 1
    dp[1] = 1
    for i in range(2, n + 1):
        for j in range(i):
            dp[i] += dp[j] * dp[i - j - 1]
    return dp[n]




### Unit tests below ###
def check(candidate):
	assert candidate(7) == 429
	assert candidate(5) == 42
	assert candidate(11) == 58786
	assert candidate(4) == 14
	assert candidate(6) == 132
	assert candidate(19) == 1767263190
	assert candidate(15) == 9694845
	assert candidate(2) == 2
	assert candidate(10) == 16796
	assert candidate(18) == 477638700
	assert candidate(9) == 4862
	assert candidate(16) == 35357670
	assert candidate(17) == 129644790
	assert candidate(3) == 5
	assert candidate(12) == 208012
	assert candidate(8) == 1430
	assert candidate(1) == 1
	assert candidate(14) == 2674440
	assert candidate(13) == 742900
def test_check():
	check(numTrees)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,tree,binary-search-tree,binary-tree
# Metadata Coverage: 100
