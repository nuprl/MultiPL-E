from typing import List


def kthSmallest(matrix: List[List[int]], k: int) -> int:
    """
    Given an n x n matrix where each of the rows and columns is sorted in ascending order, return the kth smallest element in the matrix.
    Note that it is the kth smallest element in the sorted order, not the kth distinct element.
    You must find a solution with a memory complexity better than O(n2).
 
    Example 1:

    Input: matrix = [[1,5,9],[10,11,13],[12,13,15]], k = 8
    Output: 13
    Explanation: The elements in the matrix are [1,5,9,10,11,12,13,13,15], and the 8th smallest number is 13

    Example 2:

    Input: matrix = [[-5]], k = 1
    Output: -5

 
    Constraints:

    n == matrix.length == matrix[i].length
    1 <= n <= 300
    -109 <= matrix[i][j] <= 109
    All the rows and columns of matrix are guaranteed to be sorted in non-decreasing order.
    1 <= k <= n2

 
    Follow up:

    Could you solve the problem with a constant memory (i.e., O(1) memory complexity)?
    Could you solve the problem in O(n) time complexity? The solution may be too advanced for an interview but you may find reading this paper fun.

    """
    ### Canonical solution below ###
    import heapq
    n = len(matrix)
    min_heap = []

    for i in range(n):
        heapq.heappush(min_heap, (matrix[i][0], i, 0))

    while k > 1:
        val, row, col = heapq.heappop(min_heap)

        if col + 1 < n:
            heapq.heappush(min_heap, (matrix[row][col + 1], row, col + 1))

        k -= 1

    return min_heap[0][0]




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 2) == 2
	assert candidate([[-5]], 1) == -5
	assert candidate([[1,1,1],[1,1,1],[1,1,1]], 9) == 1
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 7) == 7
	assert candidate([[10,20,30],[40,50,60],[70,80,90]], 6) == 60
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 6) == 6
	assert candidate([[1,1,2,3,4],[2,4,4,5,5],[4,5,5,6,7],[5,5,7,7,7],[6,7,7,8,9]], 20) == 7
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 5) == 5
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 6) == 6
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 9) == 9
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 1) == 1
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 3) == 3
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 6) == 6
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 5) == 5
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 1) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 5) == 5
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 4) == 4
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 2) == 2
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 1) == 1
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 7) == 7
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 2) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 8) == 8
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 9) == 9
	assert candidate([[1,5,9],[10,11,13],[12,13,15]], 8) == 13
	assert candidate([[10,20,30],[40,50,60],[70,80,90]], 5) == 50
	assert candidate([[1,1,1],[2,2,2],[3,3,3]], 4) == 2
	assert candidate([[1,2,3],[4,5,6],[7,8,9]], 3) == 3
	assert candidate([[1,4,7],[2,5,8],[3,6,9]], 4) == 4
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 7) == 7
	assert candidate([[1,1,1],[2,2,2],[3,3,3]], 1) == 1
	assert candidate([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]], 4) == 4
def test_check():
	check(kthSmallest)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,sorting,heap-priority-queue,matrix
# Metadata Coverage: 100
