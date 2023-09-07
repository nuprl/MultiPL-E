from typing import List


def findLeastNumOfUniqueInts(arr: List[int], k: int) -> int:
    """
    Given an array of integers arr and an integer k. Find the least number of unique integers after removing exactly k elements.


 
    Example 1:

    Input: arr = [5,5,4], k = 1
    Output: 1
    Explanation: Remove the single 4, only 5 is left.

    Example 2:

    Input: arr = [4,3,1,1,3,3,2], k = 3
    Output: 2
    Explanation: Remove 4, 2 and either one of the two 1s or three 3s. 1 and 3 will be left.
 
    Constraints:

    1 <= arr.length <= 10^5
    1 <= arr[i] <= 10^9
    0 <= k <= arr.length
    """
    ### Canonical solution below ###
    import heapq
    from collections import Counter
    count = Counter(arr)
    pq = list(count.values())
    heapq.heapify(pq)
    while k > 0:
        k -= heapq.heappop(pq)
    return len(pq) if k == 0 else len(pq) + 1




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,2,2,3,3,3,3,3], 3) == 2
	assert candidate([1,1,1,1], 4) == 0
	assert candidate([2,2,1,1,1,3,3,3,3], 5) == 1
	assert candidate([2,2,1,1,1,3,3,3,3], 6) == 1
	assert candidate([1000000000,1000000000,1000000000,1000000000], 1) == 1
	assert candidate(list(range(1000000)), 1000000-1) == 1
	assert candidate([1,2,2,2,3,3,3,3,3], 4) == 1
	assert candidate([1000000000], 1) == 0
	assert candidate(list(range(1000000)), 1000000) == 0
	assert candidate(
    [1,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9], 2) == 8
	assert candidate([1,2,2,2,3,3,3,3,3], 1) == 2
	assert candidate([2,1,1,3,3,3,4,4,4,4,5,5,5,5,5], 8) == 2
	assert candidate([4,3,1,1,3,3,2], 3) == 2
	assert candidate([1,1,1,1], 2) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], 10) == 0
	assert candidate([1,2,2,2,3,3,3,3,3], 0) == 3
	assert candidate([2,2,1,1,1,3,3,3,3], 3) == 2
	assert candidate([2,2,1,1,1,3,3,3,3], 9) == 0
	assert candidate([2,2,1,1,1,3,3,3,3], 4) == 2
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == 5
	assert candidate([5,5,4], 1) == 1
	assert candidate(list(range(10000)), 9999) == 1
	assert candidate([2,2,1,1,1,3,3,3,3], 7) == 1
	assert candidate([1000000000], 0) == 1
def test_check():
	check(findLeastNumOfUniqueInts)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting,counting
# Metadata Coverage: 100
