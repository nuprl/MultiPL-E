from typing import List


def minSetSize(arr: List[int]) -> int:
    """
    You are given an integer array arr. You can choose a set of integers and remove all the occurrences of these integers in the array.
    Return the minimum size of the set so that at least half of the integers of the array are removed.
 
    Example 1:

    Input: arr = [3,3,3,3,5,5,5,2,2,7]
    Output: 2
    Explanation: Choosing {3,7} will make the new array [5,5,5,2,2] which has size 5 (i.e equal to half of the size of the old array).
    Possible sets of size 2 are {3,5},{3,2},{5,2}.
    Choosing set {2,7} is not possible as it will make the new array [3,3,3,3,5,5,5] which has a size greater than half of the size of the old array.

    Example 2:

    Input: arr = [7,7,7,7,7,7]
    Output: 1
    Explanation: The only possible set you can choose is {7}. This will make the new array empty.

 
    Constraints:

    2 <= arr.length <= 105
    arr.length is even.
    1 <= arr[i] <= 105

    """
    ### Canonical solution below ###
    import heapq
    from collections import Counter
    freq_map = Counter(arr)
    max_heap = [-cnt for cnt in freq_map.values()]
    heapq.heapify(max_heap)
    half = len(arr) // 2
    cnt = 0
    size = 0
    while size < half:
        size -= heapq.heappop(max_heap)
        cnt += 1
    return cnt




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,2,2,3,3,4,4,5,5]) == 3
	assert candidate([1,1,1,1,2,2,2,2,2,2]) == 1
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10]) == 5
	assert candidate([7,7,7,7,7,7]) == 1
	assert candidate([3,3,3,3,5,5,5,2,2,7]) == 2
	assert candidate([5,5,5,5,5,5,6,6,6,6]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 5
	assert candidate([1]*10 + [2]*20 + [3]*30 + [4]*40) == 2
	assert candidate([1]*53 + [2]*52) == 1
	assert candidate([1,1,1,1,2,2,2,2,3,3]) == 2
	assert candidate([2]*50 + [3]*50) == 1
	assert candidate([1,2,2,3,3,3,4,4,4,4]) == 2
	assert candidate([1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4]) == 2
def test_check():
	check(minSetSize)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
