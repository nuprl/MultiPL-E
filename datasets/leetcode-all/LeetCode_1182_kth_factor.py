def kth_factor(n: int, k: int) -> int:
    """
    You are given two positive integers n and k. A factor of an integer n is defined as an integer i where n % i == 0.
    Consider a list of all factors of n sorted in ascending order, return the kth factor in this list or return -1 if n has less than k factors.
 
    Example 1:

    Input: n = 12, k = 3
    Output: 3
    Explanation: Factors list is [1, 2, 3, 4, 6, 12], the 3rd factor is 3.

    Example 2:

    Input: n = 7, k = 2
    Output: 7
    Explanation: Factors list is [1, 7], the 2nd factor is 7.

    Example 3:

    Input: n = 4, k = 4
    Output: -1
    Explanation: Factors list is [1, 2, 4], there is only 3 factors. We should return -1.

 
    Constraints:

    1 <= k <= n <= 1000

 
    Follow up:
    Could you solve this problem in less than O(n) complexity?
    """
    ### Canonical solution below ###
    for i in range(1, n+1):
        if n % i == 0:
            k -= 1
            if k == 0:
                return i
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(10, 5) == -1
	assert candidate(3, 4) == -1
	assert candidate(1000, 1) == 1
	assert candidate(7, 5) == -1
	assert candidate(4, 0) == -1
	assert candidate(36, 9) == 36
	assert candidate(1000, 102) == -1
	assert candidate(1, 1) == 1
	assert candidate(1000, 8) == 25
	assert candidate(8, 2) == 2
	assert candidate(1000, 4) == 5
	assert candidate(10, 10) == -1
	assert candidate(12, 3) == 3
	assert candidate(36, 6) == 9
	assert candidate(1000, 1000) == -1
	assert candidate(1000, 5) == 8
	assert candidate(1000, 2) == 2
	assert candidate(7, 4) == -1
	assert candidate(1000, 6) == 10
	assert candidate(1000, 3) == 4
	assert candidate(36, 1) == 1
	assert candidate(1000, 100) == -1
	assert candidate(7, 2) == 7
	assert candidate(4, 5) == -1
	assert candidate(4, 2) == 2
	assert candidate(36, 10) == -1
	assert candidate(10, 50) == -1
	assert candidate(1000, 13) == 200
	assert candidate(1000, 1001) == -1
	assert candidate(12, 13) == -1
	assert candidate(12, 50) == -1
	assert candidate(1000, 1003) == -1
	assert candidate(81, 10) == -1
	assert candidate(1000000, 1) == 1
	assert candidate(2, 1) == 1
	assert candidate(200, 4) == 5
	assert candidate(1000, 7) == 20
	assert candidate(1000, 14) == 250
	assert candidate(4, 4) == -1
	assert candidate(1000, 101) == -1
	assert candidate(1, 2) == -1
	assert candidate(1000, 1002) == -1
	assert candidate(36, 100) == -1
def test_check():
	check(kth_factor)
# Metadata Difficulty: Medium
# Metadata Topics: math,number-theory
# Metadata Coverage: 100
