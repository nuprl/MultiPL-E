from typing import List


def add_to_array_form(num: List[int], k: int) -> List[int]:
    """
    The array-form of an integer num is an array representing its digits in left to right order.

    For example, for num = 1321, the array form is [1,3,2,1].

    Given num, the array-form of an integer, and an integer k, return the array-form of the integer num + k.
 
    Example 1:

    Input: num = [1,2,0,0], k = 34
    Output: [1,2,3,4]
    Explanation: 1200 + 34 = 1234

    Example 2:

    Input: num = [2,7,4], k = 181
    Output: [4,5,5]
    Explanation: 274 + 181 = 455

    Example 3:

    Input: num = [2,1,5], k = 806
    Output: [1,0,2,1]
    Explanation: 215 + 806 = 1021

 
    Constraints:

    1 <= num.length <= 104
    0 <= num[i] <= 9
    num does not contain any leading zeros except for the zero itself.
    1 <= k <= 104

    """
    ### Canonical solution below ###
    for i in range(len(num) - 1, -1, -1):
        k, num[i] = divmod(num[i] + k, 10)
        if k == 0:
            break
    while k:
        k, digit = divmod(k, 10)
        num.insert(0, digit)
    return num




### Unit tests below ###
def check(candidate):
	assert candidate([1, 0], 1) == [1, 1]
	assert candidate([0, 0, 0, 0, 0], 12345) == [1, 2, 3, 4, 5]
	assert candidate([1, 2, 0, 0], 34) == [1, 2, 3, 4]
	assert candidate([0], 999) == [9, 9, 9]
	assert candidate([1], 1) == [2]
	assert candidate([1], 0) == [1]
	assert candidate([9, 9, 9, 9, 9, 9, 9, 9, 9, 9], 1) == [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	assert candidate([0], 1) == [1]
	assert candidate([9], 1) == [1, 0]
	assert candidate([9, 9], 1) == [1, 0, 0]
	assert candidate([9, 9, 9], 1) == [1, 0, 0, 0]
	assert candidate(
    [2, 1, 5], 806
) == [1, 0, 2, 1]
	assert candidate([2, 7, 4], 181) == [4, 5, 5]
	assert candidate([2, 1, 5], 806) == [1, 0, 2, 1]
	assert candidate([1, 0], 0) == [1, 0]
	assert candidate(
    [2, 7, 4], 181
) == [4, 5, 5]
	assert candidate([0], 0) == [0]
	assert candidate([5, 6, 7, 8, 9], 0) == [5, 6, 7, 8, 9]
def test_check():
	check(add_to_array_form)
# Metadata Difficulty: Easy
# Metadata Topics: array,math
# Metadata Coverage: 100
