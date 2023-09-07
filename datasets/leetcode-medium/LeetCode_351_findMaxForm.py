from typing import List


def findMaxForm(strs: List[str], m: int, n: int) -> int:
    """
    You are given an array of binary strings strs and two integers m and n.
    Return the size of the largest subset of strs such that there are at most m 0's and n 1's in the subset.
    A set x is a subset of a set y if all elements of x are also elements of y.
 
    Example 1:

    Input: strs = ["10","0001","111001","1","0"], m = 5, n = 3
    Output: 4
    Explanation: The largest subset with at most 5 0's and 3 1's is {"10", "0001", "1", "0"}, so the answer is 4.
    Other valid but smaller subsets include {"0001", "1"} and {"10", "1", "0"}.
    {"111001"} is an invalid subset because it contains 4 1's, greater than the maximum of 3.

    Example 2:

    Input: strs = ["10","0","1"], m = 1, n = 1
    Output: 2
    Explanation: The largest subset is {"0", "1"}, so the answer is 2.

 
    Constraints:

    1 <= strs.length <= 600
    1 <= strs[i].length <= 100
    strs[i] consists only of digits '0' and '1'.
    1 <= m, n <= 100

    """
    ### Canonical solution below ###
    dp = [[0] * (n + 1) for _ in range(m + 1)]

    for s in strs:
        ones = s.count('1')
        zeros = len(s) - ones

        for i in range(m, zeros - 1, -1):
            for j in range(n, ones - 1, -1):
                dp[i][j] = max(dp[i][j], dp[i - zeros][j - ones] + 1)

    return dp[m][n]




### Unit tests below ###
def check(candidate):
	assert candidate(["10", "0", "1", "111", "000"], 1, 6) == 3
	assert candidate(["1", "10", "1", "1", "01"], 2, 3) == 3
	assert candidate(["10", "0", "1", "111", "000"], 5, 7) == 5
	assert candidate(["10", "0", "1"], 2, 2) == 3
	assert candidate(["10", "0001", "111001", "1", "0"], 5, 5) == 4
	assert candidate(["10", "0", "1", "111", "000"], 5, 6) == 5
	assert candidate(["10", "0", "1", "111", "000"], 2, 6) == 4
	assert candidate(["10", "0", "1", "111", "000"], 7, 10) == 5
	assert candidate(["10", "0001", "111001", "1", "0"], 3, 3) == 3
	assert candidate(["10", "0", "1", "111", "000"], 3, 5) == 4
	assert candidate(["10", "0", "1"], 1, 1) == 2
	assert candidate(["10", "0", "1", "111", "000"], 3, 3) == 3
	assert candidate(["10", "0001", "111001", "1", "0"], 2, 5) == 3
	assert candidate(["10", "0001", "111001", "1", "0"], 2, 3) == 3
	assert candidate(["10", "0001", "111001", "1", "0"], 3, 4) == 3
	assert candidate(["10", "0001", "111001", "1", "0"], 4, 3) == 3
	assert candidate(["10", "0", "1", "111", "000"], 1, 1) == 2
	assert candidate(["10", "0", "1", "111", "000"], 6, 10) == 5
	assert candidate(["10", "0", "1", "111", "000"], 5, 8) == 5
	assert candidate(["10", "0001", "111001", "1", "0"], 5, 3) == 4
	assert candidate(["10", "0", "1", "111", "000"], 5, 10) == 5
	assert candidate(["10", "0", "1", "111", "000"], 3, 8) == 4
	assert candidate(["10", "0", "1", "111", "000"], 1, 5) == 3
	assert candidate(["10", "0", "1"], 0, 0) == 0
	assert candidate(["1", "0"], 1, 1) == 2
	assert candidate(["10", "0", "1", "111", "000"], 4, 4) == 4
	assert candidate(["10", "0", "1", "111", "000"], 2, 3) == 3
	assert candidate(["10", "0", "1", "111", "000"], 5, 5) == 5
	assert candidate(["10", "0", "1", "111", "000"], 0, 0) == 0
	assert candidate(["10", "0", "1", "111", "000"], 1, 2) == 2
	assert candidate(["10", "0001", "111001", "1", "0"], 5, 4) == 4
	assert candidate(["10", "0001", "111001", "1", "0"], 3, 5) == 3
def test_check():
	check(findMaxForm)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,dynamic-programming
# Metadata Coverage: 100
