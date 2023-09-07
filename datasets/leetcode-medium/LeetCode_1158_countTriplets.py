from typing import List


def countTriplets(arr: List[int]) -> int:
    """
    Given an array of integers arr.
    We want to select three indices i, j and k where (0 <= i < j <= k < arr.length).
    Let's define a and b as follows:

    a = arr[i] ^ arr[i + 1] ^ ... ^ arr[j - 1]
    b = arr[j] ^ arr[j + 1] ^ ... ^ arr[k]

    Note that ^ denotes the bitwise-xor operation.
    Return the number of triplets (i, j and k) Where a == b.
 
    Example 1:

    Input: arr = [2,3,1,6,7]
    Output: 4
    Explanation: The triplets are (0,1,2), (0,2,2), (2,3,4) and (2,4,4)

    Example 2:

    Input: arr = [1,1,1,1,1]
    Output: 10

 
    Constraints:

    1 <= arr.length <= 300
    1 <= arr[i] <= 108

    """
    ### Canonical solution below ###
    n = len(arr)
    XOR = [0] * (n + 1)

    for i in range(n):
        XOR[i+1] = XOR[i] ^ arr[i]

    count = 0
    for i in range(n):
        for k in range(i+1, n):
            if XOR[i] == XOR[k+1]:
                count += k-i
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([3, 3, 3, 3, 3]) == 10
	assert candidate([2, 2, 2, 2, 2]) == 10
	assert candidate(range(1, 10)) == 24
	assert candidate([1, 1, 1, 1]) == 6
	assert candidate([8, 8, 8, 8, 8]) == 10
	assert candidate(
    [2, 3, 1, 6, 7]) == 4, "Error in first example with unique array"
	assert candidate(
    [2, 3, 1, 6, 7]) == 4, "This should work correctly on small lists."
	assert candidate([7, 7, 7, 7, 7]) == 10
	assert candidate([1, 1, 1, 1, 1]) == 10
	assert candidate([6, 6, 6, 6, 6]) == 10
	assert candidate([10, 10, 10, 10, 10]) == 10
	assert candidate([9, 9, 9, 9, 9]) == 10
	assert candidate([5, 5, 5, 5, 5]) == 10
def test_check():
	check(countTriplets)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,bit-manipulation,prefix-sum
# Metadata Coverage: 100
