from typing import List


def findArray(pref: List[int]) -> List[int]:
    """
    You are given an integer array pref of size n. Find and return the array arr of size n that satisfies:

    pref[i] = arr[0] ^ arr[1] ^ ... ^ arr[i].

    Note that ^ denotes the bitwise-xor operation.
    It can be proven that the answer is unique.
 
    Example 1:

    Input: pref = [5,2,0,3,1]
    Output: [5,7,2,3,2]
    Explanation: From the array [5,7,2,3,2] we have the following:
    - pref[0] = 5.
    - pref[1] = 5 ^ 7 = 2.
    - pref[2] = 5 ^ 7 ^ 2 = 0.
    - pref[3] = 5 ^ 7 ^ 2 ^ 3 = 3.
    - pref[4] = 5 ^ 7 ^ 2 ^ 3 ^ 2 = 1.

    Example 2:

    Input: pref = [13]
    Output: [13]
    Explanation: We have pref[0] = arr[0] = 13.

 
    Constraints:

    1 <= pref.length <= 105
    0 <= pref[i] <= 106

    """
    ### Canonical solution below ###
    arr = [pref[0]]
    for i in range(1, len(pref)):
        arr.append(pref[i] ^ pref[i - 1])
    return arr




### Unit tests below ###
def check(candidate):
	assert candidate([1,2]) == [1,3]
	assert candidate([0,0,0,0]) == [0,0,0,0]
	assert candidate([5,2,0,3,1]) == [5,7,2,3,2]
	assert candidate([13]) == [13]
def test_check():
	check(findArray)
# Metadata Difficulty: Medium
# Metadata Topics: array,bit-manipulation
# Metadata Coverage: 100
