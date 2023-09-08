from typing import List


def restoreMatrix(rowSum: List[int], colSum: List[int]) -> List[List[int]]:
    """
    You are given two arrays rowSum and colSum of non-negative integers where rowSum[i] is the sum of the elements in the ith row and colSum[j] is the sum of the elements of the jth column of a 2D matrix. In other words, you do not know the elements of the matrix, but you do know the sums of each row and column.
    Find any matrix of non-negative integers of size rowSum.length x colSum.length that satisfies the rowSum and colSum requirements.
    Return a 2D array representing any matrix that fulfills the requirements. It's guaranteed that at least one matrix that fulfills the requirements exists.
 
    Example 1:

    Input: rowSum = [3,8], colSum = [4,7]
    Output: [[3,0],
             [1,7]]
    Explanation: 
    0th row: 3 + 0 = 3 == rowSum[0]
    1st row: 1 + 7 = 8 == rowSum[1]
    0th column: 3 + 1 = 4 == colSum[0]
    1st column: 0 + 7 = 7 == colSum[1]
    The row and column sums match, and all matrix elements are non-negative.
    Another possible matrix is: [[1,2],
                                 [3,5]]

    Example 2:

    Input: rowSum = [5,7,10], colSum = [8,6,8]
    Output: [[0,5,0],
             [6,1,0],
             [2,0,8]]

 
    Constraints:

    1 <= rowSum.length, colSum.length <= 500
    0 <= rowSum[i], colSum[i] <= 108
    sum(rowSum) == sum(colSum)

    """
    ### Canonical solution below ###
    m, n = len(rowSum), len(colSum)
    result = [[0] * n for _ in range(m)]

    for i in range(m):
        for j in range(n):
            value = min(rowSum[i], colSum[j])
            result[i][j] = value
            rowSum[i] -= value
            colSum[j] -= value

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([3,8], [4,7]) == [[3,0],[1,7]]
	assert candidate([2,2], [2,2]) == [[2,0], [0,2]]
	assert candidate([5,7,10], [8,7,7]) == [[5,0,0], [3,4,0], [0,3,7]]
	assert candidate([100,100], [100,100]) == [[100,0], [0,100]]
	assert candidate([1,2,3,4,5], [3,4,5,6,7]) == [[1,0,0,0,0], [2,0,0,0,0], [0,3,0,0,0], [0,1,3,0,0], [0,0,2,3,0]]
	assert candidate([10,10], [10,10]) == [[10,0], [0,10]]
	assert candidate([100,100,100], [100,100,100]) == [[100,0,0], [0,100,0], [0,0,100]]
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1]) == [[1,0,0,0,0,0,0,0,0,0], [0,1,0,0,0,0,0,0,0,0], [0,0,1,0,0,0,0,0,0,0], [0,0,0,1,0,0,0,0,0,0], [0,0,0,0,1,0,0,0,0,0], [0,0,0,0,0,1,0,0,0,0], [0,0,0,0,0,0,1,0,0,0], [0,0,0,0,0,0,0,1,0,0], [0,0,0,0,0,0,0,0,1,0], [0,0,0,0,0,0,0,0,0,1]]
	assert candidate([3,8], [4,7]) == [[3,0], [1,7]]
def test_check():
	check(restoreMatrix)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,matrix
# Metadata Coverage: 100
