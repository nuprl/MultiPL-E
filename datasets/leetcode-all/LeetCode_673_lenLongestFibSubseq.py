from typing import List


def lenLongestFibSubseq(arr: List[int]) -> int:
    """
    A sequence x1, x2, ..., xn is Fibonacci-like if:

    n >= 3
    xi + xi+1 == xi+2 for all i + 2 <= n

    Given a strictly increasing array arr of positive integers forming a sequence, return the length of the longest Fibonacci-like subsequence of arr. If one does not exist, return 0.
    A subsequence is derived from another sequence arr by deleting any number of elements (including none) from arr, without changing the order of the remaining elements. For example, [3, 5, 8] is a subsequence of [3, 4, 5, 6, 7, 8].
 
    Example 1:

    Input: arr = [1,2,3,4,5,6,7,8]
    Output: 5
    Explanation: The longest subsequence that is fibonacci-like: [1,2,3,5,8].
    Example 2:

    Input: arr = [1,3,7,11,12,14,18]
    Output: 3
    Explanation: The longest subsequence that is fibonacci-like: [1,11,12], [3,11,14] or [7,11,18].
 
    Constraints:

    3 <= arr.length <= 1000
    1 <= arr[i] < arr[i + 1] <= 109

    """
    ### Canonical solution below ###
    index = {x: i for i, x in enumerate(arr)}

    longest = dict()
    ans = 0

    for k, z in enumerate(arr):
        for j, y in enumerate(arr[:k]):
            i = index.get(z - y, None)
            if i is not None and i < j:
                longest[j, k] = longest.get((i, j), 1) + 1
                ans = max(ans, longest[j, k] + 1)

    return ans if ans >= 3 else 0




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,5,8,13,21,34]) == 8
	assert candidate([2,3,5,8,13,21,34,55,89,144]) == 10
	assert candidate([1,4,5,9,14,23,37,60,97]) == 9
	assert candidate(range(1, 11)) == 5
	assert candidate([2,3,5,8,13,21,34]) == 7
	assert candidate([3,5,8,13,21,34,55]) == 7
	assert candidate([1, 1, 1, 1]) == 0
	assert candidate([1,3,7,11,12,14,18]) == 3
	assert candidate([13,21,34,55,89,144,233]) == 7
	assert candidate([8,13,21,34,55,89,144]) == 7
	assert candidate([5,8,13,21,34,55,89]) == 7
	assert candidate([1, 2, 3, 7, 11, 12, 14, 18]) == 3
	assert candidate([1,3,4,7,11,18,29,47,76]) == 9
	assert candidate([1,2,3,4,5,6,7,8]) == 5
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8]) == 5
def test_check():
	check(lenLongestFibSubseq)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,dynamic-programming
# Metadata Coverage: 100
