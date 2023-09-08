from typing import List


def max_building(n: int, restrictions: List[List[int]]) -> int:
    """
    You want to build n new buildings in a city. The new buildings will be built in a line and are labeled from 1 to n.
    However, there are city restrictions on the heights of the new buildings:

    The height of each building must be a non-negative integer.
    The height of the first building must be 0.
    The height difference between any two adjacent buildings cannot exceed 1.

    Additionally, there are city restrictions on the maximum height of specific buildings. These restrictions are given as a 2D integer array restrictions where restrictions[i] = [idi, maxHeighti] indicates that building idi must have a height less than or equal to maxHeighti.
    It is guaranteed that each building will appear at most once in restrictions, and building 1 will not be in restrictions.
    Return the maximum possible height of the tallest building.
 
    Example 1:


    Input: n = 5, restrictions = [[2,1],[4,1]]
    Output: 2
    Explanation: The green area in the image indicates the maximum allowed height for each building.
    We can build the buildings with heights [0,1,2,1,2], and the tallest building has a height of 2.
    Example 2:


    Input: n = 6, restrictions = []
    Output: 5
    Explanation: The green area in the image indicates the maximum allowed height for each building.
    We can build the buildings with heights [0,1,2,3,4,5], and the tallest building has a height of 5.

    Example 3:


    Input: n = 10, restrictions = [[5,3],[2,5],[7,4],[10,3]]
    Output: 5
    Explanation: The green area in the image indicates the maximum allowed height for each building.
    We can build the buildings with heights [0,1,2,3,3,4,4,5,4,3], and the tallest building has a height of 5.

 
    Constraints:

    2 <= n <= 109
    0 <= restrictions.length <= min(n - 1, 105)
    2 <= idi <= n
    idi is unique.
    0 <= maxHeighti <= 109

    """
    ### Canonical solution below ###
    restrictions += [[1, 0], [n, n - 1]]
    restrictions.sort()

    for i in range(1, len(restrictions)):
        restrictions[i][1] = min(restrictions[i][1], restrictions[i - 1][1] + restrictions[i][0] - restrictions[i - 1][0])

    for i in range(len(restrictions) - 2, -1, -1):
        restrictions[i][1] = min(restrictions[i][1], restrictions[i + 1][1] + restrictions[i + 1][0] - restrictions[i][0])

    maxHeight = 0
    for i in range(1, len(restrictions)):
        height = (restrictions[i][1] + restrictions[i - 1][1] + restrictions[i][0] - restrictions[i - 1][0]) // 2
        maxHeight = max(maxHeight, height)

    return maxHeight




### Unit tests below ###
def check(candidate):
	assert candidate(10, [[2, 5], [7, 4], [9, 3]]) == 5
	assert candidate(5, [[2, 1], [3, 2], [4, 3], [5, 4]]) == 4
	assert candidate(7, []) == 6
	assert candidate(4, [[4, 2]]) == 2
	assert candidate(8, [[4, 2], [5, 3], [6, 4]]) == 6
	assert candidate(6, []) == 5
	assert candidate(5, []) == 4
	assert candidate(10, [[2, 5], [8, 4], [9, 3]]) == 5
	assert candidate(10, [[5, 3], [9, 4]]) == 5
	assert candidate(8, [[2, 3], [5, 7]]) == 7
	assert candidate(6, [[4, 3]]) == 5
	assert candidate(4, [[2, 1], [3, 2], [4, 3]]) == 3
	assert candidate(10, []) == 9
	assert candidate(6, [[1, 5]]) == 5
	assert candidate(6, [[1, 2], [2, 3], [3, 4], [4, 5]]) == 5
	assert candidate(5, [[1, 3], [2, 3], [3, 4]]) == 4
	assert candidate(5, [[3, 4], [5, 4]]) == 4
	assert candidate(5, [[1, 3], [2, 3], [3, 4], [4, 4]]) == 4
	assert candidate(3, []) == 2
	assert candidate(4, [[3, 2], [4, 3]]) == 3
	assert candidate(4, []) == 3
	assert candidate(2, []) == 1
	assert candidate(10, [[3, 2], [4, 5], [7, 4], [8, 3]]) == 5
	assert candidate(6, [[3, 1], [4, 2]]) == 4
	assert candidate(10, [[2, 6], [8, 4], [9, 3]]) == 5
	assert candidate(8, []) == 7
	assert candidate(4, [[2, 2], [3, 1]]) == 2
	assert candidate(5, [[3, 4]]) == 4
	assert candidate(5, [[1, 2], [2, 3], [3, 4]]) == 4
	assert candidate(4, [[2, 2], [4, 1]]) == 2
	assert candidate(4, [[1, 1], [3, 3]]) == 3
	assert candidate(1, []) == 0
def test_check():
	check(max_building)
# Metadata Difficulty: Hard
# Metadata Topics: array,math
# Metadata Coverage: 100
