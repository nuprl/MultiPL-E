from typing import List


def numFactoredBinaryTrees(arr: List[int]) -> int:
    """
    Given an array of unique integers, arr, where each integer arr[i] is strictly greater than 1.
    We make a binary tree using these integers, and each number may be used for any number of times. Each non-leaf node's value should be equal to the product of the values of its children.
    Return the number of binary trees we can make. The answer may be too large so return the answer modulo 109 + 7.
 
    Example 1:

    Input: arr = [2,4]
    Output: 3
    Explanation: We can make these trees: [2], [4], [4, 2, 2]
    Example 2:

    Input: arr = [2,4,5,10]
    Output: 7
    Explanation: We can make these trees: [2], [4], [5], [10], [4, 2, 2], [10, 2, 5], [10, 5, 2].
 
    Constraints:

    1 <= arr.length <= 1000
    2 <= arr[i] <= 109
    All the values of arr are unique.

    """
    ### Canonical solution below ###
    MOD = 10**9 + 7
    n = len(arr)
    arr.sort()
    dp = {}
    for i, x in enumerate(arr):
        dp[x] = 1
        for y in arr[:i]:
            if x % y == 0 and x // y in dp:
                dp[x] = (dp[x] + dp[y] * dp[x // y]) % MOD
    return sum(dp.values()) % MOD




### Unit tests below ###
def check(candidate):
	assert candidate([2, 4]) == 3
	assert candidate([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]) == 10
	assert candidate([2, 3, 6, 12, 24]) == 27
	assert candidate([2, 4, 5, 10, 20]) == 18
	assert candidate([2, 4, 5, 10]) == 7
def test_check():
	check(numFactoredBinaryTrees)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,dynamic-programming,sorting
# Metadata Coverage: 100
