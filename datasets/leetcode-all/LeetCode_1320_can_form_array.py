from typing import List


def can_form_array(arr: List[int], pieces: List[List[int]]) -> bool:
    """
    You are given an array of distinct integers arr and an array of integer arrays pieces, where the integers in pieces are distinct. Your goal is to form arr by concatenating the arrays in pieces in any order. However, you are not allowed to reorder the integers in each array pieces[i].
    Return true if it is possible to form the array arr from pieces. Otherwise, return false.
 
    Example 1:

    Input: arr = [15,88], pieces = [[88],[15]]
    Output: true
    Explanation: Concatenate [15] then [88]

    Example 2:

    Input: arr = [49,18,16], pieces = [[16,18,49]]
    Output: false
    Explanation: Even though the numbers match, we cannot reorder pieces[0].

    Example 3:

    Input: arr = [91,4,64,78], pieces = [[78],[4,64],[91]]
    Output: true
    Explanation: Concatenate [91] then [4,64] then [78]

 
    Constraints:

    1 <= pieces.length <= arr.length <= 100
    sum(pieces[i].length) == arr.length
    1 <= pieces[i].length <= arr.length
    1 <= arr[i], pieces[i][j] <= 100
    The integers in arr are distinct.
    The integers in pieces are distinct (i.e., If we flatten pieces in a 1D array, all the integers in this array are distinct).

    """
    ### Canonical solution below ###
    piece_map = {piece[0]: piece for piece in pieces}

    i = 0
    while i < len(arr):
        if arr[i] not in piece_map:
            return False

        for num in piece_map[arr[i]]:
            if arr[i] != num:
                return False
            i += 1

    return True




### Unit tests below ###
def check(candidate):
	assert candidate([37, 69, 3, 74, 87], [[37, 69, 3, 74, 87]]) == True
	assert candidate([59, 97, 81, 52, 65, 24, 96, 24], [[59], [97], [81], [52, 65], [24], [96], [24]]) == True
	assert candidate([1, 3, 5, 7], [[1, 3, 5, 7]]) == True
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
    [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15]]
) == True
	assert candidate([91, 4, 64, 78], [[78], [4, 64], [91]]) == True
	assert candidate([15, 88], [[88], [15]]) == True
	assert candidate([80, 17, 13, 18], [[80, 17], [13, 18]]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]]) == True
	assert candidate([25, 10, 4, 20, 14, 17, 21, 18, 8, 1, 3, 5, 16, 22, 19, 11, 2, 15, 6, 7, 23, 13, 9, 12],
 [
     [25, 10, 4, 20, 14], [17, 21, 18], [8, 1, 3], [5, 16, 22], [19, 11, 2, 15, 6], [7, 23, 13, 9, 12]
 ]) == True
	assert candidate(
    [29, 48, 22, 41, 45, 20, 38, 25, 34, 40, 32],
    [[29, 48, 22, 41, 45, 20, 38, 25, 34, 40, 32]],
) == True
	assert candidate(
    [39, 47, 78, 45, 90, 80, 95, 93, 68, 82, 49, 39, 90, 59, 45, 99, 12, 90, 48, 90],
    [[39, 97, 81], [45, 65], [90, 80, 95, 93], [68], [82], [49, 39, 90], [59, 45, 99, 12], [90, 48, 90]],
) == False
	assert candidate([49, 18, 16], [[16, 18, 49]]) == False
	assert candidate([10, 2, 20, 4, 30, 6], [[10, 2, 20, 4, 30, 6]]) == True
	assert candidate([11, 22, 33, 44, 55, 66, 77, 88, 99], [[11, 22, 33, 44, 55, 66, 77, 88, 99]]) == True
def test_check():
	check(can_form_array)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
