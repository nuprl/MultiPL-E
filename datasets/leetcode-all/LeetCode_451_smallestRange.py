from typing import List


def smallestRange(nums: List[List[int]]) -> List[int]:
    """
    You have k lists of sorted integers in non-decreasing order. Find the smallest range that includes at least one number from each of the k lists.
    We define the range [a, b] is smaller than range [c, d] if b - a < d - c or a < c if b - a == d - c.
 
    Example 1:

    Input: nums = [[4,10,15,24,26],[0,9,12,20],[5,18,22,30]]
    Output: [20,24]
    Explanation: 
    List 1: [4, 10, 15, 24,26], 24 is in range [20,24].
    List 2: [0, 9, 12, 20], 20 is in range [20,24].
    List 3: [5, 18, 22, 30], 22 is in range [20,24].

    Example 2:

    Input: nums = [[1,2,3],[1,2,3],[1,2,3]]
    Output: [1,1]

 
    Constraints:

    nums.length == k
    1 <= k <= 3500
    1 <= nums[i].length <= 50
    -105 <= nums[i][j] <= 105
    nums[i] is sorted in non-decreasing order.

    """
    ### Canonical solution below ###
    import heapq
    minHeap = []
    maxVal = -1e9

    for i, lst in enumerate(nums):
        heapq.heappush(minHeap, (lst[0], i))
        maxVal = max(maxVal, lst[0])

    listIndices = [0] * len(nums)
    minRange = 1e9
    start, end = -1, -1

    while len(minHeap) == len(nums):
        val, listIdx = heapq.heappop(minHeap)
        range_ = maxVal - val

        if range_ < minRange:
            minRange = range_
            start, end = val, maxVal

        listIndices[listIdx] += 1
        if listIndices[listIdx] < len(nums[listIdx]):
            newVal = nums[listIdx][listIndices[listIdx]]
            heapq.heappush(minHeap, (newVal, listIdx))
            maxVal = max(maxVal, newVal)

    return [start, end]




### Unit tests below ###
def check(candidate):
	assert candidate([[100,200,300,400,500],[150,250,350,450,550],[175,275,375,475,575]]) == [150,200]
	assert candidate([[4,10,15,24,26],[0,9,12,20],[5,18,22,30]]) == [20,24]
	assert candidate([[0,0,0],[0,0,0],[0,0,0]]) == [0,0]
	assert candidate([[1,2,3],[1,2,3],[1,2,3]]) == [1,1]
	assert candidate([[1,10],[2,9],[3,8]]) == [1,3]
	assert candidate([[1,2,3,4,5],[2,3,4,5,6],[3,4,5,6,7]]) == [3,3]
	assert candidate([[1,5,9],[2,6,10],[3,7,11]]) == [1,3]
def test_check():
	check(smallestRange)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,greedy,sliding-window,sorting,heap-priority-queue
# Metadata Coverage: 100
