from typing import List


def kthSmallest(mat: List[List[int]], k: int) -> int:
    """
    You are given an m x n matrix mat that has its rows sorted in non-decreasing order and an integer k.
    You are allowed to choose exactly one element from each row to form an array.
    Return the kth smallest array sum among all possible arrays.
 
    Example 1:

    Input: mat = [[1,3,11],[2,4,6]], k = 5
    Output: 7
    Explanation: Choosing one element from each row, the first k smallest sum are:
    [1,2], [1,4], [3,2], [3,4], [1,6]. Where the 5th sum is 7.

    Example 2:

    Input: mat = [[1,3,11],[2,4,6]], k = 9
    Output: 17

    Example 3:

    Input: mat = [[1,10,10],[1,4,5],[2,3,6]], k = 7
    Output: 9
    Explanation: Choosing one element from each row, the first k smallest sum are:
    [1,1,2], [1,1,3], [1,4,2], [1,4,3], [1,1,6], [1,5,2], [1,5,3]. Where the 7th sum is 9.  

 
    Constraints:

    m == mat.length
    n == mat.length[i]
    1 <= m, n <= 40
    1 <= mat[i][j] <= 5000
    1 <= k <= min(200, nm)
    mat[i] is a non-decreasing array.

    """
    ### Canonical solution below ###
    import heapq
    m, n = len(mat), len(mat[0])

    minHeap = [(mat[0][0], 0, 0)]
    visited = [[False for _ in range(n)] for _ in range(m)]
    visited[0][0] = True

    for _ in range(k):
        res, i, j = heapq.heappop(minHeap)

        if i < m - 1 and not visited[i+1][j]:
            heapq.heappush(minHeap, (res - mat[i][j] + mat[i + 1][j], i + 1, j))
            visited[i+1][j] = True
        if j < n - 1 and not visited[i][j+1]:
            heapq.heappush(minHeap, (res - mat[i][j] + mat[i][j + 1], i, j + 1))
            visited[i][j+1] = True

    return res




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 6) == 6
	assert candidate([[1,1,1],[1,1,1],[1,1,1]], 5) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 7) == 7
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 2) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 5) == 5
	assert candidate([[1,4,7,10,13,16,19],[2,5,8,11,14,17,20],[3,6,9,12,15,18,21]], 8) == 8
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 4) == 4
	assert candidate([[1,4,7],[3,5,8],[1,1,2]], 9) == 8
	assert candidate([[1,2,3],[1,2,3],[1,2,3]], 3) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 1) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 3) == 3
	assert candidate([[1,4,7],[3,5,8],[1,1,2]], 8) == 7
	assert candidate([[10,20,30,40],[15,25,35,45],[24,29,37,48],[32,33,39,50]], 7) == 30
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 8) == 8
	assert candidate([[1,10,15],[2,11,20],[3,12,30]], 5) == 11
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 9) == 9
	assert candidate([[1,4,7,10,13,16,19],[2,5,8,11,14,17,20],[3,6,9,12,15,18,21]], 1) == 1
def test_check():
	check(kthSmallest)
# Metadata Difficulty: Hard
# Metadata Topics: array,binary-search,heap-priority-queue,matrix
# Metadata Coverage: 100
