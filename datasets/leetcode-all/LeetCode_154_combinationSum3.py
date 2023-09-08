from typing import List


def combinationSum3(k: int, n: int) -> List[List[int]]:
    """
    Find all valid combinations of k numbers that sum up to n such that the following conditions are true:

    Only numbers 1 through 9 are used.
    Each number is used at most once.

    Return a list of all possible valid combinations. The list must not contain the same combination twice, and the combinations may be returned in any order.
 
    Example 1:

    Input: k = 3, n = 7
    Output: [[1,2,4]]
    Explanation:
    1 + 2 + 4 = 7
    There are no other valid combinations.
    Example 2:

    Input: k = 3, n = 9
    Output: [[1,2,6],[1,3,5],[2,3,4]]
    Explanation:
    1 + 2 + 6 = 9
    1 + 3 + 5 = 9
    2 + 3 + 4 = 9
    There are no other valid combinations.

    Example 3:

    Input: k = 4, n = 1
    Output: []
    Explanation: There are no valid combinations.
    Using 4 different numbers in the range [1,9], the smallest sum we can get is 1+2+3+4 = 10 and since 10 > 1, there are no valid combination.

 
    Constraints:

    2 <= k <= 9
    1 <= n <= 60

    """
    ### Canonical solution below ###
    def helper(k, n, current, current_comb, result):
        if k == 0 and n == 0:
            result.append(list(current_comb))
        elif k > 0 and n > 0:
            for i in range(current + 1, 10):
                current_comb.append(i)
                helper(k - 1, n - i, i, current_comb, result)
                current_comb.pop()

    result = []
    helper(k, n, 0, [], result)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate(3, 9) == [[1, 2, 6], [1, 3, 5], [2, 3, 4]]
	assert candidate(9, 45) == [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
	assert candidate(4, 1) == []
	assert candidate(2, 1) == []
	assert candidate(5, 15) == [[1, 2, 3, 4, 5]]
	assert candidate(5, 7) == []
	assert candidate(4, 7) == []
	assert candidate(3, 15) == [[1, 5, 9], [1, 6, 8], [2, 4, 9], [2, 5, 8], [2, 6, 7], [3, 4, 8], [3, 5, 7], [4, 5, 6]]
	assert candidate(1, 1) == [[1]]
	assert candidate(2, 17) == [[8, 9]]
	assert candidate(2, 3) == [[1, 2]]
	assert candidate(5, 1000) == []
	assert candidate(4, 10) == [[1, 2, 3, 4]]
	assert candidate(9, 46) == []
	assert candidate(3, 7) == [[1, 2, 4]]
	assert candidate(3, 2) == []
	assert candidate(2, 5) == [[1, 4], [2, 3]]
def test_check():
	check(combinationSum3)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking
# Metadata Coverage: 100
