from typing import List


def decode(encoded: List[int], first: int) -> List[int]:
    """
    There is a hidden integer array arr that consists of n non-negative integers.
    It was encoded into another integer array encoded of length n - 1, such that encoded[i] = arr[i] XOR arr[i + 1]. For example, if arr = [1,0,2,1], then encoded = [1,2,3].
    You are given the encoded array. You are also given an integer first, that is the first element of arr, i.e. arr[0].
    Return the original array arr. It can be proved that the answer exists and is unique.
 
    Example 1:

    Input: encoded = [1,2,3], first = 1
    Output: [1,0,2,1]
    Explanation: If arr = [1,0,2,1], then first = 1 and encoded = [1 XOR 0, 0 XOR 2, 2 XOR 1] = [1,2,3]

    Example 2:

    Input: encoded = [6,2,7,3], first = 4
    Output: [4,2,0,7,4]

 
    Constraints:

    2 <= n <= 104
    encoded.length == n - 1
    0 <= encoded[i] <= 105
    0 <= first <= 105

    """
    ### Canonical solution below ###
    arr = [first]
    for num in encoded:
        arr.append(arr[-1] ^ num)
    return arr




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1], 1) == [1, 0, 1, 0, 1, 0, 1]
	assert candidate([1, 2, 4, 8, 16], 32) == [32, 33, 35, 39, 47, 63]
	assert candidate([1, 2, 3], 1) == [1, 0, 2, 1]
	assert candidate([15, 9, 8, 7], 6) == [6, 9, 0, 8, 15]
	assert candidate([101, 102, 103, 104], 100) == [100, 1, 103, 0, 104]
	assert candidate([5, 7, 19, 9], 3) == [3, 6, 1, 18, 27]
	assert candidate([8, 10, 2], 4) == [4, 12, 6, 4]
def test_check():
	check(decode)
# Metadata Difficulty: Easy
# Metadata Topics: array,bit-manipulation
# Metadata Coverage: 100
