from typing import List


def canFormArray(arr: List[int], pieces: List[List[int]]) -> bool:
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
    map = {piece[0]: piece for piece in pieces}

    i = 0
    while i < len(arr):
        if arr[i] not in map:
            return False
        piece = map[arr[i]]
        for num in piece:
            if num != arr[i]:
                return False
            i += 1
    return True




### Unit tests below ###
def check(candidate):
	assert candidate([100,99,98,97,96,95], [[100],[99,98,97,96,95]]) == True
	assert candidate([54,75,34,39,349,43,78,21,56,90,43,65,476,56,74], [[21,54,75,78],[34,43,39,349],[476,56,65],[90,56,43]]) == False
	assert candidate([200,100,201,101], [[200,100,201,101]]) == True
	assert candidate([100,200,300,400], [[100,200,300,400]]) == True
	assert candidate([10,9,8,7,6,5,4,3,2,1], [[1,2,3,4,5],[6,7,8,9,10]]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], [[1,2,3,4,5,6,7,8,9,10]]) == True
	assert candidate([95,96,97,98,99,100], [[100],[99,98,97,96,95]]) == False
	assert candidate([4,3,2,1], [[1,2,3,4]]) == False
	assert candidate([1,3,5,7], [[1,3],[5,7]]) == True
	assert candidate([1,3,5,7], [[1,3,5,7]]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10], [[1,2,3,4,5],[6,7,8,9,10]]) == True
	assert candidate([108,114,115,100,101,102,103,104,105,106,107,112,113], [[100,101,102,103,104,105,106],[107,108,109,110,111,112,113,114,115]]) == False
	assert candidate([54,44,33,22,11,55,66,77,88,99], [[44,55,66,77,88,99,22,33,11]]) == False
	assert candidate([44,22,33,11,55,66,77,88,99], [[44,55,66,77,88,99,22,33,11]]) == False
	assert candidate([100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115], [[100,101,102,103,104,105,106],[107,108,109,110,111,112,113,114,115]]) == True
	assert candidate([7,5,3,1], [[1,3],[5,7]]) == False
	assert candidate([44,22,33,11,55,66,77,88,99], [[44,22,33,11]]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11], [[1,2,3,4,5,6,7,8,9,10],[11]]) == True
	assert candidate([123,456,789,101112], [[123],[456],[789],[101112]]) == True
	assert candidate([15,88], [[88],[15]]) == True
	assert candidate([4,3,2,1], [[4,3,2,1]]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10], [[10,9,8,7,6,5,4,3,2,1]]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11], [[1,2,3,4,5,6,7,8,9,10,11]]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10], [[1,2,3,4],[5,6,7,8,9,10]]) == True
	assert candidate([49,18,16], [[16,18,49]]) == False
	assert candidate([91,4,64,78], [[78],[4,64],[91]]) == True
	assert candidate([1,2,3,4], [[1],[2],[3],[4]]) == True
	assert candidate([82,33,18,60,79,100,20,44,78,99,10], [[10,20,33,44,60,78,82],[79,99,100]]) == False
	assert candidate([400,300,200,100], [[100,200,300,400]]) == False
	assert candidate([100,101,102,103,104], [[100,101],[102,103,104]]) == True
	assert candidate([85,90,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114], [[85,105,110,115],[90,100,113],[101,114,116],[102,103,104,106,107,108,109,111,112,113,114]]) == False
	assert candidate([1,3,5,7], [[1,3,7,5]]) == False
def test_check():
	check(canFormArray)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
