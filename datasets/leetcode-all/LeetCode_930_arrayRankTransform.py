from typing import List


def arrayRankTransform(arr: List[int]) -> List[int]:
    """
    Given an array of integers arr, replace each element with its rank.
    The rank represents how large the element is. The rank has the following rules:

    Rank is an integer starting from 1.
    The larger the element, the larger the rank. If two elements are equal, their rank must be the same.
    Rank should be as small as possible.

 
    Example 1:

    Input: arr = [40,10,20,30]
    Output: [4,1,2,3]
    Explanation: 40 is the largest element. 10 is the smallest. 20 is the second smallest. 30 is the third smallest.
    Example 2:

    Input: arr = [100,100,100]
    Output: [1,1,1]
    Explanation: Same elements share the same rank.

    Example 3:

    Input: arr = [37,12,28,9,100,56,80,5,12]
    Output: [5,3,4,2,8,6,7,1,3]

 
    Constraints:

    0 <= arr.length <= 105
    -109 <= arr[i] <= 109

    """
    ### Canonical solution below ###
    sorted_arr = sorted(arr)
    rank_map = {}
    rank = 1

    for num in sorted_arr:
        if num not in rank_map:
            rank_map[num] = rank
            rank += 1

    return [rank_map[num] for num in arr]




### Unit tests below ###
def check(candidate):
	assert candidate([2, 2, 1, 1]) == [2, 2, 1, 1]
	assert candidate([10, 10, 10, 10]) == [1, 1, 1, 1]
	assert candidate([5, 6, 7, 8, 9, 1, 2, 3, 4]) == [5, 6, 7, 8, 9, 1, 2, 3, 4]
	assert candidate([1000000, 1000000, 1000000, 1000000]) == [1, 1, 1, 1]
	assert candidate([100, 100, 100, 100]) == [1, 1, 1, 1]
	assert candidate([4, 3, 2, 1]) == [4, 3, 2, 1]
	assert candidate([1000000, 1000000, 1000000, 1000000, 1000000]) == [1, 1, 1, 1, 1]
	assert candidate([1, 1, 2, 2]) == [1, 1, 2, 2]
	assert candidate(
    [37, 12, 28, 9, 100, 56, 80, 5, 12]
) == [5, 3, 4, 2, 8, 6, 7, 1, 3]
	assert candidate([400, 300, 200, 100]) == [4, 3, 2, 1]
	assert candidate([1, 9, 2, 8, 3, 7, 4, 6, 5]) == [1, 9, 2, 8, 3, 7, 4, 6, 5]
	assert candidate([2, 3, 1]) == [2, 3, 1]
	assert candidate([1, 2, 3]) == [1, 2, 3]
	assert candidate(
    [37, 12, 28, 9, 100, 56, 80, 5, 12]) == [5, 3, 4, 2, 8, 6, 7, 1, 3]
	assert candidate([5, 3, 4, 2, 8, 6, 7, 1, 9]) == [5, 3, 4, 2, 8, 6, 7, 1, 9]
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == [9, 8, 7, 6, 5, 4, 3, 2, 1]
	assert candidate(
    [40, 10, 20, 30]) == [4, 1, 2, 3]
	assert candidate([40, 10, 20, 30]) == [4, 1, 2, 3]
	assert candidate([1, 2, 3, 4]) == [1, 2, 3, 4]
	assert candidate([37, 12, 28, 9, 100, 56, 80, 5, 12]) == [5, 3, 4, 2, 8, 6, 7, 1, 3]
	assert candidate(
    [100, 100, 100]) == [1, 1, 1]
def test_check():
	check(arrayRankTransform)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sorting
# Metadata Coverage: 100
