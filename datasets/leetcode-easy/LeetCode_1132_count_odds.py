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
    return (high - low) // 2 + (1 if low % 2 == 1 or high % 2 == 1 else 0)




### Unit tests below ###
def check(candidate):
	assert candidate(10**9-2, 10**9-1) == 1
	assert candidate(10**9-10, 10**9-1) == 5
	assert candidate(8, 10) == 1
	assert candidate(10**9-8, 10**9-2) == 3
	assert candidate(0, 1) == 1
	assert candidate(10**9-8, 10**9-1) == 4
	assert candidate(1, 1) == 1
	assert candidate(10**9-5, 10**9-4) == 1
	assert candidate(10**9-9, 10**9-2) == 4
	assert candidate(10**9-6, 10**9-1) == 3
	assert candidate(10**9-7, 10**9-1) == 4
	assert candidate(10**9-3, 10**9-1) == 2
	assert candidate(2, 3) == 1
	assert candidate(3, 4) == 1
	assert candidate(10**9-11, 10**9-6) == 3
	assert candidate(10**9-5, 10**9-3) == 2
	assert candidate(10**9-1, 10**9-1) == 1
	assert candidate(10**9-6, 10**9-3) == 2
	assert candidate(3, 7) == 3
	assert candidate(789, 987) == 100
	assert candidate(10**9-4, 10**9-3) == 1
	assert candidate(10**9-4, 10**9-2) == 1
	assert candidate(0, 0) == 0
	assert candidate(10**9-10, 10**9-2) == 4
	assert candidate(10**9-12, 10**9-6) == 3
	assert candidate(10**9-5, 10**9-2) == 2
	assert candidate(10**9-11, 10**9-1) == 6
	assert candidate(1, 10**9-2) == 499999999
	assert candidate(10**9-1, 10**9) == 1
	assert candidate(10**9-5, 10**9-1) == 3
	assert candidate(10**9-3, 10**9-2) == 1
	assert candidate(2, 2) == 0
	assert candidate(501, 501) == 1
	assert candidate(0, 2) == 1
	assert candidate(0, 10**9) == 500000000
	assert candidate(10**9, 10**9) == 0
	assert candidate(1, 2) == 1
	assert candidate(3, 5) == 2
	assert candidate(10**9-4, 10**9-1) == 2
	assert candidate(4, 4) == 0
	assert candidate(123, 456) == 167
	assert candidate(10**9-12, 10**9-9) == 2
	assert candidate(500, 500) == 0
	assert candidate(10**9-9, 10**9-1) == 5
	assert candidate(1, 10**9) == 500000000
	assert candidate(10**9-12, 10**9-1) == 6
	assert candidate(10**9-6, 10**9-2) == 2
def test_check():
	check(count_odds)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
