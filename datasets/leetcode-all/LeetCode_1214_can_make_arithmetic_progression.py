from typing import List


def can_make_arithmetic_progression(arr: List[int]) -> bool:
    """
    A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.
    Given an array of numbers arr, return true if the array can be rearranged to form an arithmetic progression. Otherwise, return false.
 
    Example 1:

    Input: arr = [3,5,1]
    Output: true
    Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with differences 2 and -2 respectively, between each consecutive elements.

    Example 2:

    Input: arr = [1,2,4]
    Output: false
    Explanation: There is no way to reorder the elements to obtain an arithmetic progression.

 
    Constraints:

    2 <= arr.length <= 1000
    -106 <= arr[i] <= 106

    """
    ### Canonical solution below ###
    arr.sort()
    difference = arr[1] - arr[0]
    for i in range(2, len(arr)):
        if arr[i] - arr[i - 1] != difference:
            return False
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 4]) == False
	assert candidate([1, 3, 5, 7, 9, 11]) == True
	assert candidate([3, 6, 9, 12, 15]) == True
	assert candidate([1, 6, 28, 49, 80, 111]) == False
	assert candidate([1, 2, 3, 4, 5, 6]) == True
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6]) == False
	assert candidate([1, 3, 5, 7, 9]) == True
	assert candidate(
    [1, 3, 5, 7, 9, 11]) == True
	assert candidate([5, 15, 25, 35, 45, 55, 65, 75, 85, 95, 105]) == True
	assert candidate([1, 10, 100, 1000, 10000]) == False
	assert candidate([2, 4, 8, 16, 32]) == False
	assert candidate([7, 14, 21, 28, 35]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == True
	assert candidate([6, 18, 54, 162, 486]) == False
	assert candidate([1, 2, 3, 4, 5]) == True
	assert candidate([5, 15, 25, 35, 45]) == True
	assert candidate([1, 5, 9, 13, 17]) == True
	assert candidate([1, 2, 4, 8, 16, 32]) == False
	assert candidate([3, 6, 9, 12, 15, 18]) == True
	assert candidate([1, 3, 9, 27, 81]) == False
	assert candidate([3, 5, 1]) == True
	assert candidate([100, 200, 300, 400, 500]) == True
	assert candidate([4, 8, 12, 16, 20]) == True
	assert candidate([2, 6, 18, 54, 162]) == False
	assert candidate([3, 9, 15, 21, 27]) == True
	assert candidate(
    [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100]
) == True
	assert candidate(
    [1, 5, 2, 7, 11, 4, 13, 17, 23, 2, 29, 31]
) == False
	assert candidate([5, 10, 15, 20, 25]) == True
	assert candidate([10, 20, 30, 40, 50]) == True
	assert candidate(
    [3, 5, 7, 9, 11, 13, 15, 17, 19, 21]) == True
	assert candidate(
    [1, 8, 3, 16, 4, 15, 2, 11, 7, 12, 6, 14, 1, 9, 5, 13, 10, 18, 17, 22]
) == False
	assert candidate([2, 4, 6, 8, 10]) == True
	assert candidate([3, 9, 27, 81, 243]) == False
	assert candidate([1, 5, 9, 13, 17, 21]) == True
	assert candidate([2, 6, 18, 54, 162, 486]) == False
	assert candidate([-12, -9, -6, -3, 0]) == True
def test_check():
	check(can_make_arithmetic_progression)
# Metadata Difficulty: Easy
# Metadata Topics: array,sorting
# Metadata Coverage: 100
