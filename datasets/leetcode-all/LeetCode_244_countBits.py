from typing import List


def countBits(n: int) -> List[int]:
    """
    Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.
 
    Example 1:

    Input: n = 2
    Output: [0,1,1]
    Explanation:
    0 --> 0
    1 --> 1
    2 --> 10

    Example 2:

    Input: n = 5
    Output: [0,1,1,2,1,2]
    Explanation:
    0 --> 0
    1 --> 1
    2 --> 10
    3 --> 11
    4 --> 100
    5 --> 101

 
    Constraints:

    0 <= n <= 105

 
    Follow up:

    It is very easy to come up with a solution with a runtime of O(n log n). Can you do it in linear time O(n) and possibly in a single pass?
    Can you do it without using any built-in function (i.e., like __builtin_popcount in C++)?

    """
    ### Canonical solution below ###
    ans = [0] * (n + 1)
    for i in range(1, n + 1):
        ans[i] = ans[i & (i - 1)] + 1
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate(0) == [0]
	assert candidate(7) == [0, 1, 1, 2, 1, 2, 2, 3]
	assert candidate(1) == [0, 1]
	assert candidate(8) == [0, 1, 1, 2, 1, 2, 2, 3, 1]
	assert candidate(14) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3]
	assert candidate(6) == [0, 1, 1, 2, 1, 2, 2]
	assert candidate(11) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3]
	assert candidate(2) == [0, 1, 1]
	assert candidate(4) == [0, 1, 1, 2, 1]
	assert candidate(9) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2]
	assert candidate(15) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4]
	assert candidate(13) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3]
	assert candidate(10) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2]
	assert candidate(12) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2]
	assert candidate(16) == [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1]
	assert candidate(3) == [0, 1, 1, 2]
	assert candidate(5) == [0, 1, 1, 2, 1, 2]
def test_check():
	check(countBits)
# Metadata Difficulty: Easy
# Metadata Topics: dynamic-programming,bit-manipulation
# Metadata Coverage: 100
