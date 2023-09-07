from typing import List


def find_diagonal_order(nums: List[List[int]]) -> List[int]:
    """
    Given a 2D integer array nums, return all elements of nums in diagonal order as shown in the below images.
 
    Example 1:


    Input: nums = [[1,2,3],[4,5,6],[7,8,9]]
    Output: [1,4,2,7,5,3,8,6,9]

    Example 2:


    Input: nums = [[1,2,3,4,5],[6,7],[8],[9,10,11],[12,13,14,15,16]]
    Output: [1,6,2,8,7,3,9,4,12,10,5,13,11,14,15,16]

 
    Constraints:

    1 <= nums.length <= 105
    1 <= nums[i].length <= 105
    1 <= sum(nums[i].length) <= 105
    1 <= nums[i][j] <= 105

    """
    ### Canonical solution below ###
    diagonals = {}
    for i in range(len(nums)):
        for j in range(len(nums[i])):
            if i + j not in diagonals:
                diagonals[i + j] = []
            diagonals[i + j].append(nums[i][j])

    res = []
    for key in diagonals:
        res.extend(reversed(diagonals[key]))

    return res




### Unit tests below ###
def check(candidate):
	assert candidate([[7,8,9],[4,5,6],[1,2,3]]) == [7, 4, 8, 1, 5, 9, 2, 6, 3]
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12]]) == [1, 5, 2, 9, 6, 3, 10, 7, 4, 11, 8, 12]
	assert candidate([[1],[2],[3],[4],[5],[6]]) == [1, 2, 3, 4, 5, 6]
	assert candidate([[1,2,3],[4,5,6],[7,8,9]]) == [1, 4, 2, 7, 5, 3, 8, 6, 9]
	assert candidate([[1,2,3,4,5],[6,7,8,9,10]]) == [1, 6, 2, 7, 3, 8, 4, 9, 5, 10]
	assert candidate([[10, 20, 30],[40, 50, 60],[70, 80, 90]]) == [10, 40, 20, 70, 50, 30, 80, 60, 90]
	assert candidate([[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15]]) == [1, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5, 14, 10, 15]
	assert candidate([[1,2],[3,4]]) == [1, 3, 2, 4]
	assert candidate([[1]]) == [1]
	assert candidate([[1,2],[3,4],[5,6],[7,8]]) == [1, 3, 2, 5, 4, 7, 6, 8]
	assert candidate([[1,2,3],[4,5,6]]) == [1, 4, 2, 5, 3, 6]
	assert candidate([[1,2,3],[4,5,6],[7,8,9],[10,11,12]]) == [1, 4, 2, 7, 5, 3, 10, 8, 6, 11, 9, 12]
	assert candidate([[1,2,3,4,5,6]]) == [1, 2, 3, 4, 5, 6]
def test_check():
	check(find_diagonal_order)
# Metadata Difficulty: Medium
# Metadata Topics: array,sorting,heap-priority-queue
# Metadata Coverage: 100
