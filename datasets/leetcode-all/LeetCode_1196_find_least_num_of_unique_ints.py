from typing import List


def find_least_num_of_unique_ints(arr: List[int], k: int) -> int:
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
    freq_map = Counter(arr)
    min_heap = list(freq_map.values())
    heapq.heapify(min_heap)

    while k > 0:
        k -= heapq.heappop(min_heap)

    return len(min_heap) if k == 0 else len(min_heap) + 1




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5], 7) == 2
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2) == 8
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) == 0
	assert candidate([1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5], 3) == 3
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3], 4) == 2
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], 10) == 1
def test_check():
	check(find_least_num_of_unique_ints)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting,counting
# Metadata Coverage: 100
