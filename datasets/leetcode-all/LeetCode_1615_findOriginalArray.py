from typing import List


def findOriginalArray(changed: List[int]) -> List[int]:
    """
    An integer array original is transformed into a doubled array changed by appending twice the value of every element in original, and then randomly shuffling the resulting array.
    Given an array changed, return original if changed is a doubled array. If changed is not a doubled array, return an empty array. The elements in original may be returned in any order.
 
    Example 1:

    Input: changed = [1,3,4,2,6,8]
    Output: [1,3,4]
    Explanation: One possible original array could be [1,3,4]:
    - Twice the value of 1 is 1 * 2 = 2.
    - Twice the value of 3 is 3 * 2 = 6.
    - Twice the value of 4 is 4 * 2 = 8.
    Other original arrays could be [4,3,1] or [3,1,4].

    Example 2:

    Input: changed = [6,3,0,1]
    Output: []
    Explanation: changed is not a doubled array.

    Example 3:

    Input: changed = [1]
    Output: []
    Explanation: changed is not a doubled array.

 
    Constraints:

    1 <= changed.length <= 105
    0 <= changed[i] <= 105

    """
    ### Canonical solution below ###
    count = {}
    for num in changed:
        count[num] = count.get(num, 0) + 1

    sorted_values = sorted(count.keys())

    original = []
    for num in sorted_values:
        while count[num] > 0 and count.get(num * 2, 0) > 0:
            original.append(num)
            count[num] -= 1
            count[num * 2] -= 1
        if count[num] > 0:
            return []

    return original




### Unit tests below ###
def check(candidate):
	assert candidate(
    [1, 3, 2, 4, 6, 8, 9, 10, 12, 14, 18, 22]) == []
	assert candidate([1, 3, 4, 2, 6, 8]) == [1, 3, 4]
	assert candidate([1, 3, 4, 2, 6, 8, 1]) == []
	assert candidate([1, 2, 3, 2, 4, 6, 8, 12, 16]) == []
	assert candidate([1, 2, 3, 2, 4, 6, 8, 12, 16, 32]) == []
	assert candidate([1, 2, 2, 3, 2, 4, 4, 6, 8, 12, 16, 32]) == []
	assert candidate([1, 3, 4, 2, 6, 8, 1, 4]) == []
	assert candidate([1, 1, 1, 1]) == []
	assert candidate([1, 2, 2, 4]) == [1, 2]
	assert candidate(
    [3, 1, 2, 2, 4, 4, 6, 6, 8, 8, 10, 10, 12, 12, 14, 14, 16, 16]) == []
	assert candidate([1, 2, 4, 2, 4, 8]) == [1, 2, 4]
	assert candidate([1, 3, 4, 2, 2]) == []
	assert candidate(
    [1, 3, 4, 2, 6, 8, 1, 1]) == []
	assert candidate([1, 3, 2, 4, 6]) == []
	assert candidate([2, 4, 6, 8, 10]) == []
	assert candidate([1, 3, 4, 2, 6, 8, 1, 2, 3, 4]) == []
	assert candidate([2, 2, 4, 4]) == [2, 2]
	assert candidate([2, 4, 6, 8, 10, 10, 10, 10]) == []
	assert candidate(
    [6, 3, 0, 1]) == []
	assert candidate([4, 1, 2, 8, 6, 3, 6]) == []
	assert candidate([1, 3, 4, 2, 6, 8, 1, 2, 3, 4, 5]) == []
	assert candidate([4, 1, 2, 8, 6, 3]) == [1, 3, 4]
	assert candidate([6, 3, 0, 1]) == []
def test_check():
	check(findOriginalArray)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting
# Metadata Coverage: 100
