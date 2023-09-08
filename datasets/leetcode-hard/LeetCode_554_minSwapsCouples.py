from typing import List


def minSwapsCouples(row: List[int]) -> int:
    """
    There are n couples sitting in 2n seats arranged in a row and want to hold hands.
    The people and seats are represented by an integer array row where row[i] is the ID of the person sitting in the ith seat. The couples are numbered in order, the first couple being (0, 1), the second couple being (2, 3), and so on with the last couple being (2n - 2, 2n - 1).
    Return the minimum number of swaps so that every couple is sitting side by side. A swap consists of choosing any two people, then they stand up and switch seats.
 
    Example 1:

    Input: row = [0,2,1,3]
    Output: 1
    Explanation: We only need to swap the second (row[1]) and third (row[2]) person.

    Example 2:

    Input: row = [3,2,0,1]
    Output: 0
    Explanation: All couples are already seated side by side.

 
    Constraints:

    2n == row.length
    2 <= n <= 30
    n is even.
    0 <= row[i] < 2n
    All the elements of row are unique.

    """
    ### Canonical solution below ###
    n = len(row)
    position = [0] * n
    for i in range(n):
        position[row[i]] = i

    swaps = 0
    for i in range(0, n, 2):
        partner = row[i] + 1 if row[i] % 2 == 0 else row[i] - 1
        if row[i + 1] != partner:
            row[position[partner]], row[i + 1] = row[i + 1], row[position[partner]]
            position[row[i + 1]], position[partner] = position[partner], position[row[i + 1]]
            swaps += 1
    return swaps




### Unit tests below ###
def check(candidate):
	assert candidate([0, 1, 2, 3]) == 0
	assert candidate([0,2,1,3,4,5]) == 1
	assert candidate([0,3,2,1,6,5,4,7]) == 2
	assert candidate([0, 2, 1, 3]) == 1
	assert candidate([0,1,2,3]) == 0
	assert candidate([0,3,2,1]) == 1
	assert candidate([0,2,1,4,3,5]) == 2
	assert candidate([2,0,1,3]) == 1
	assert candidate(
    [5,0,2,1,4,3]) == 2
	assert candidate([3,2,0,1]) == 0
	assert candidate([0,1,2,3,4,5]) == 0
	assert candidate([0,2,1,3]) == 1
	assert candidate([0,2,1,3,4,5,6,7]) == 1
	assert candidate([0,2,5,3,4,1]) == 2
	assert candidate([3, 2, 0, 1]) == 0
	assert candidate([0,2,1,3,5,4]) == 1
def test_check():
	check(minSwapsCouples)
# Metadata Difficulty: Hard
# Metadata Topics: greedy,depth-first-search,breadth-first-search,union-find,graph
# Metadata Coverage: 100
