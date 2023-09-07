from typing import List


def minimumAbsDifference(arr: List[int]) -> List[List[int]]:
    """
    Given an array of distinct integers arr, find all pairs of elements with the minimum absolute difference of any two elements.
    Return a list of pairs in ascending order(with respect to pairs), each pair [a, b] follows

    a, b are from arr
    a < b
    b - a equals to the minimum absolute difference of any two elements in arr

 
    Example 1:

    Input: arr = [4,2,1,3]
    Output: [[1,2],[2,3],[3,4]]
    Explanation: The minimum absolute difference is 1. List all pairs with difference equal to 1 in ascending order.
    Example 2:

    Input: arr = [1,3,6,10,15]
    Output: [[1,3]]

    Example 3:

    Input: arr = [3,8,-10,23,19,-4,-14,27]
    Output: [[-14,-10],[19,23],[23,27]]

 
    Constraints:

    2 <= arr.length <= 105
    -106 <= arr[i] <= 106

    """
    ### Canonical solution below ###
    arr.sort()
    min_difference = float('inf')
    result = []

    for i in range(1, len(arr)):
        difference = arr[i] - arr[i - 1]
        if difference < min_difference:
            min_difference = difference
            result = [[arr[i - 1], arr[i]]]
        elif difference == min_difference:
            result.append([arr[i - 1], arr[i]])

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([5, 4, 3, 2, 1]) == [[1, 2], [2, 3], [3, 4], [4, 5]]
	assert candidate([4, 2, 1, 3]) == [[1, 2], [2, 3], [3, 4]]
	assert candidate([1, 3, 6, 10, 15]) == [[1, 3]]
	assert candidate([1, 1, 1, 1, 1]) == [[1, 1], [1, 1], [1, 1], [1, 1]]
	assert candidate([10, 10, 10, 10, 10]) == [[10, 10], [10, 10], [10, 10], [10, 10]]
	assert candidate([9, 4, 9, 8, 4, 8]) == [[4, 4], [8, 8], [9, 9]]
	assert candidate([1, 2, 3, 4, 5]) == [[1, 2], [2, 3], [3, 4], [4, 5]]
	assert candidate([10, 20, 30, 40, 50]) == [[10, 20], [20, 30], [30, 40], [40, 50]]
	assert candidate([3, 8, -10, 23, 19, -4, -14, 27]) == [[-14, -10], [19, 23], [23, 27]]
	assert candidate([10, 20, 30, 40, 50, 60]) == [[10, 20], [20, 30], [30, 40], [40, 50], [50, 60]]
	assert candidate([2, 7, 15, 26, 40]) == [[2, 7]]
	assert candidate([1, 2, 3, 5, 8]) == [[1, 2], [2, 3]]
def test_check():
	check(minimumAbsDifference)
# Metadata Difficulty: Easy
# Metadata Topics: array,sorting
# Metadata Coverage: 100
