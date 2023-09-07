from typing import List


def count_good_triplets(arr: List[int], a: int, b: int, c: int) -> int:
    """
    Given an array of integers arr, and three integers a, b and c. You need to find the number of good triplets.
    A triplet (arr[i], arr[j], arr[k]) is good if the following conditions are true:

    0 <= i < j < k < arr.length
    |arr[i] - arr[j]| <= a
    |arr[j] - arr[k]| <= b
    |arr[i] - arr[k]| <= c

    Where |x| denotes the absolute value of x.
    Return the number of good triplets.
 
    Example 1:

    Input: arr = [3,0,1,1,9,7], a = 7, b = 2, c = 3
    Output: 4
    Explanation: There are 4 good triplets: [(3,0,1), (3,0,1), (3,1,1), (0,1,1)].

    Example 2:

    Input: arr = [1,1,2,2,3], a = 0, b = 0, c = 1
    Output: 0
    Explanation: No triplet satisfies all conditions.

 
    Constraints:

    3 <= arr.length <= 100
    0 <= arr[i] <= 1000
    0 <= a, b, c <= 1000
    """
    ### Canonical solution below ###
    count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if abs(arr[i] - arr[j]) <= a:
                for k in range(j+1, len(arr)):
                    if abs(arr[j] - arr[k]) <= b and abs(arr[i] - arr[k]) <= c:
                        count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 0, 0, 0) == 120
	assert candidate(
    [1, 1, 1], 928928928, 928928928, 928928928) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, 1, 1) == 0
	assert candidate([1, 1, 1], 0, 0, 0) == 1
	assert candidate(
    [1, 1, 2, 2, 3], 0, 0, 1) == 0
	assert candidate(
    [1000000000, 1000000000, 1000000000, 1000000000], 1000000000, 1000000000, 1000000000) == 4
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10, 10, 10) == 120
	assert candidate(
    [1, 1, 1], 1000000000, 1000000000, 1000000000) == 1
	assert candidate([1, 1, 1, 2, 2, 3], 0, 2, 1) == 8
	assert candidate([1, 1, 2, 2, 3], 0, 0, 1) == 0
	assert candidate(
    [3, 0, 1, 1, 9, 7], 7, 2, 3) == 4
	assert candidate([3, 0, 1, 1, 9, 7], 7, 2, 3) == 4
def test_check():
	check(count_good_triplets)
# Metadata Difficulty: Easy
# Metadata Topics: array,enumeration
# Metadata Coverage: 100
