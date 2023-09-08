from typing import List


def findTheDistanceValue(arr1: List[int], arr2: List[int], d: int) -> int:
    """
    Given two integer arrays arr1 and arr2, and the integer d, return the distance value between the two arrays.
    The distance value is defined as the number of elements arr1[i] such that there is not any element arr2[j] where |arr1[i]-arr2[j]| <= d.
 
    Example 1:

    Input: arr1 = [4,5,8], arr2 = [10,9,1,8], d = 2
    Output: 2
    Explanation: 
    For arr1[0]=4 we have: 
    |4-10|=6 > d=2 
    |4-9|=5 > d=2 
    |4-1|=3 > d=2 
    |4-8|=4 > d=2 
    For arr1[1]=5 we have: 
    |5-10|=5 > d=2 
    |5-9|=4 > d=2 
    |5-1|=4 > d=2 
    |5-8|=3 > d=2
    For arr1[2]=8 we have:
    |8-10|=2 <= d=2
    |8-9|=1 <= d=2
    |8-1|=7 > d=2
    |8-8|=0 <= d=2

    Example 2:

    Input: arr1 = [1,4,2,3], arr2 = [-4,-3,6,10,20,30], d = 3
    Output: 2

    Example 3:

    Input: arr1 = [2,1,100,3], arr2 = [-5,-2,10,-3,7], d = 6
    Output: 1

 
    Constraints:

    1 <= arr1.length, arr2.length <= 500
    -1000 <= arr1[i], arr2[j] <= 1000
    0 <= d <= 100

    """
    ### Canonical solution below ###
    count = 0
    for i in arr1:
        valid = True
        for j in arr2:
            if abs(i - j) <= d:
                valid = False
                break
        if valid:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1, 4, 2], [1, 4, 2], 0) == 0
	assert candidate(
    [1, 2, 3], [4, 5, 6], 0) == 3, "Basic test with two arrays of unequal length"
	assert candidate([1, 2], [2, 1], 1) == 0
	assert candidate(
    [4, 5, 8], [10, 9, 1, 8], 2) == 2, "Basic test with two arrays of unequal length"
	assert candidate([2, 1, 100, 3], [-5, -2, 10, -3, 7], 6) == 1
	assert candidate([1], [1], 1) == 0
	assert candidate(
    [1, 2, 3], [4, 5, 6], 1) == 2, "Basic test with two arrays of unequal length"
	assert candidate([-1, -2, -3, -4, -5], [], 4) == 5
	assert candidate([1, 4, 2, 3], [-5, -3, 6, 10, 20, 30], 3) == 2
	assert candidate([1, 4, 2], [1, 4, 2], 1) == 0
	assert candidate([1, 4, 2], [2, 1, 4], 0) == 0
	assert candidate(
    [1, 4, 2, 3], [-5, -3, 6, 10, 20, 30], 3) == 2, "Basic test with two arrays of unequal length"
	assert candidate([1, 1, 1], [1, 1, 1], 0) == 0
	assert candidate([1, 2, 3], [4, 5, 6], 2) == 1
	assert candidate([1, 2, 3, 4], [1, 2, 3, 4], 1) == 0
	assert candidate(
    [100, 50, 40, 30, 25, 20], [-10000, -9999, -9998, -9997], 50) == 6
	assert candidate([], [], 4) == 0
	assert candidate([1, 2], [2, 1], 0) == 0
	assert candidate([], [-5, -2, 10, -3, 7], 2) == 0
	assert candidate([1, 2, 3, 4], [], 3) == 4
	assert candidate([4, 5, 8], [10, 9, 1, 8], 2) == 2
	assert candidate(
    [4, 5, 8], [10, 9, 1, 8], 2) == 2
	assert candidate([1], [1], 0) == 0
	assert candidate(
    [1, 2, 3], [-1000000000, 1000000000], 2) == 3
	assert candidate(
    [2, 1, 100, 3], [-5, -2, 10, -3, 7], 6) == 1
	assert candidate([1, 1, 1], [1, 1, 1], 1) == 0
	assert candidate(
    [2, 1, 100, 3], [-5, -2, 10, -3, 7], 6) == 1, "Basic test with two arrays of unequal length"
	assert candidate(
    [1, 4, 2, 3], [-4, -3, 6, 10, 20, 30], 3) == 2
def test_check():
	check(findTheDistanceValue)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100
