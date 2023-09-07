def findKthNumber(m: int, n: int, k: int) -> int:
    """
    Nearly everyone has used the Multiplication Table. The multiplication table of size m x n is an integer matrix mat where mat[i][j] == i * j (1-indexed).
    Given three integers m, n, and k, return the kth smallest element in the m x n multiplication table.
 
    Example 1:


    Input: m = 3, n = 3, k = 5
    Output: 3
    Explanation: The 5th smallest number is 3.

    Example 2:


    Input: m = 2, n = 3, k = 6
    Output: 6
    Explanation: The 6th smallest number is 6.

 
    Constraints:

    1 <= m, n <= 3 * 104
    1 <= k <= m * n

    """
    ### Canonical solution below ###
    low, high = 1, m * n
    while low < high:
        mid = low + (high - low) // 2
        count = 0
        for i in range(1, m+1):
            count += min(mid // i, n)
        if count < k:
            low = mid + 1
        else:
            high = mid
    return low




### Unit tests below ###
def check(candidate):
	assert candidate(7, 8, 58) == 56
	assert candidate(1, 10, 1) == 1
	assert candidate(3, 2, 6) == 6
	assert candidate(30000, 30000, 1) == 1
	assert candidate(1, 1, 1) == 1
	assert candidate(2, 2, 4) == 4
	assert candidate(3, 3, 1) == 1
	assert candidate(7, 8, 56) == 56
	assert candidate(7, 8, 57) == 56
	assert candidate(2, 3, 1) == 1
	assert candidate(1, 30000, 30000) == 30000
	assert candidate(6, 6, 36) == 36
	assert candidate(10, 10, 100) == 100
	assert candidate(7, 7, 49) == 49
	assert candidate(5, 5, 1) == 1
	assert candidate(2, 1, 1) == 1
	assert candidate(1, 2, 1) == 1
	assert candidate(3, 3, 2) == 2
	assert candidate(2, 3, 2) == 2
	assert candidate(1, 2, 2) == 2
	assert candidate(2, 2, 2) == 2
	assert candidate(7, 7, 45) == 35
	assert candidate(7, 8, 59) == 56
	assert candidate(10, 10, 1) == 1
	assert candidate(2, 3, 6) == 6
	assert candidate(10, 1, 10) == 10
	assert candidate(1, 10, 10) == 10
	assert candidate(2, 1, 2) == 2
	assert candidate(30000, 1, 30000) == 30000
	assert candidate(3, 3, 5) == 3
	assert candidate(5, 5, 25) == 25
	assert candidate(2, 3, 7) == 6
	assert candidate(7, 7, 48) == 42
	assert candidate(3, 3, 9) == 9
def test_check():
	check(findKthNumber)
# Metadata Difficulty: Hard
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
