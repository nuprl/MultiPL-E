from typing import List


def kthLargestValue(matrix: List[List[int]], k: int) -> int:
    """
    You are given a 2D matrix of size m x n, consisting of non-negative integers. You are also given an integer k.
    The value of coordinate (a, b) of the matrix is the XOR of all matrix[i][j] where 0 <= i <= a < m and 0 <= j <= b < n (0-indexed).
    Find the kth largest value (1-indexed) of all the coordinates of matrix.
 
    Example 1:

    Input: matrix = [[5,2],[1,6]], k = 1
    Output: 7
    Explanation: The value of coordinate (0,1) is 5 XOR 2 = 7, which is the largest value.

    Example 2:

    Input: matrix = [[5,2],[1,6]], k = 2
    Output: 5
    Explanation: The value of coordinate (0,0) is 5 = 5, which is the 2nd largest value.

    Example 3:

    Input: matrix = [[5,2],[1,6]], k = 3
    Output: 4
    Explanation: The value of coordinate (1,0) is 5 XOR 1 = 4, which is the 3rd largest value.
 
    Constraints:

    m == matrix.length
    n == matrix[i].length
    1 <= m, n <= 1000
    0 <= matrix[i][j] <= 106
    1 <= k <= m * n

    """
    ### Canonical solution below ###
    import heapq
    m, n = len(matrix), len(matrix[0])
    prefix_xor = [[0] * (n + 1) for _ in range(m + 1)]
    pq = []

    for i in range(1, m + 1):
        for j in range(1, n + 1):
            prefix_xor[i][j] = matrix[i - 1][j - 1] ^ prefix_xor[i - 1][j] ^ prefix_xor[i][j - 1] ^ prefix_xor[i - 1][j - 1]
            heapq.heappush(pq, prefix_xor[i][j])
            if len(pq) > k:
                heapq.heappop(pq)
    return pq[0]




### Unit tests below ###
def check(candidate):
	assert candidate([[5,2],[1,6]], 4) == 0
	assert candidate([[5,2,8],[1,6,11]], 9) == 0
	assert candidate([[5,2],[1,6]], 2) == 5
	assert candidate([[5,2,8,15],[1,6,11,12],[3,7,9,10]], 1) == 15
def test_check():
	check(kthLargestValue)
# Metadata Difficulty: Medium
# Metadata Topics: array,divide-and-conquer,bit-manipulation,heap-priority-queue,matrix,prefix-sum,quickselect
# Metadata Coverage: 100
