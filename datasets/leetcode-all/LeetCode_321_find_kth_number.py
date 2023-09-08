def find_kth_number(n: int, k: int) -> int:
    """
    Given two integers n and k, return the kth lexicographically smallest integer in the range [1, n].
 
    Example 1:

    Input: n = 13, k = 2
    Output: 10
    Explanation: The lexicographical order is [1, 10, 11, 12, 13, 2, 3, 4, 5, 6, 7, 8, 9], so the second smallest number is 10.

    Example 2:

    Input: n = 1, k = 1
    Output: 1

 
    Constraints:

    1 <= k <= n <= 109

    """
    ### Canonical solution below ###
    nums = [i for i in range(1, n + 1)]
    nums.sort(key=lambda x: str(x))
    return nums[k - 1]




### Unit tests below ###
def check(candidate):
	assert candidate(9999, 9999) == 9999
	assert candidate(2, 1) == 1
	assert candidate(100, 10) == 17
	assert candidate(10000, 1) == 1
	assert candidate(13, 1) == 1
	assert candidate(1, 1) == 1
	assert candidate(2, 2) == 2
	assert candidate(13, 2) == 10
	assert candidate(1000, 1) == 1
	assert candidate(100, 2) == 10
	assert candidate(100, 1) == 1
	assert candidate(15, 1) == 1
	assert candidate(100000, 1) == 1
def test_check():
	check(find_kth_number)
# Metadata Difficulty: Hard
# Metadata Topics: trie
# Metadata Coverage: 100
