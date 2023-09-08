from typing import List


def min_groups(intervals: List[List[int]]) -> int:
    """
    You are given a 2D integer array intervals where intervals[i] = [lefti, righti] represents the inclusive interval [lefti, righti].
    You have to divide the intervals into one or more groups such that each interval is in exactly one group, and no two intervals that are in the same group intersect each other.
    Return the minimum number of groups you need to make.
    Two intervals intersect if there is at least one common number between them. For example, the intervals [1, 5] and [5, 8] intersect.
 
    Example 1:

    Input: intervals = [[5,10],[6,8],[1,5],[2,3],[1,10]]
    Output: 3
    Explanation: We can divide the intervals into the following groups:
    - Group 1: [1, 5], [6, 8].
    - Group 2: [2, 3], [5, 10].
    - Group 3: [1, 10].
    It can be proven that it is not possible to divide the intervals into fewer than 3 groups.

    Example 2:

    Input: intervals = [[1,3],[5,6],[8,10],[11,13]]
    Output: 1
    Explanation: None of the intervals overlap, so we can put all of them in one group.

 
    Constraints:

    1 <= intervals.length <= 105
    intervals[i].length == 2
    1 <= lefti <= righti <= 106

    """
    ### Canonical solution below ###
    import heapq
    intervals.sort()
    pq = []
    for interval in intervals:
        if pq and pq[0] < interval[0]:
            heapq.heappop(pq)
        heapq.heappush(pq, interval[1])
    return len(pq)




### Unit tests below ###
def check(candidate):
	assert candidate([[1,10],[5,10],[6,8],[1,5],[2,3],[11,15],[15,20]]) == 3
	assert candidate([[1,2],[3,4],[5,6],[7,8],[8,9],[10,11],[11,12]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8],[8,9],[10,11],[11,12],[13,14]]) == 2
	assert candidate([[1,10],[5,10],[6,8],[1,5],[2,3],[11,15]]) == 3
	assert candidate([[1,3],[5,7],[9,11],[13,15],[17,19],[21,23],[25,27],[29,31]]) == 1
	assert candidate([[1,10],[5,10],[6,8],[1,5],[2,3]]) == 3
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10],[11,12],[13,14],[15,16]]) == 1
	assert candidate([[1, 5], [1, 5], [1, 5], [1, 5]]) == 4
	assert candidate([[1,2],[3,4],[5,6],[7,8],[8,9],[10,11],[11,12],[12,13]]) == 2
	assert candidate([[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9]]) == 8
	assert candidate([[1,3],[3,5],[5,7],[7,9],[9,11],[11,13],[13,15],[15,17]]) == 2
	assert candidate([[1,2],[3,4],[5,6],[7,8],[9,10]]) == 1
	assert candidate([[1, 2], [5, 6], [9, 10], [4, 5], [7, 8], [13, 14], [11, 12], [3, 4], [15, 16], [20, 21], [24, 25]]) == 2
	assert candidate([[1, 10], [5, 10], [6, 8], [1, 5], [2, 3], [11, 15], [15, 20]]) == 3
	assert candidate([[1,3],[5,6],[8,10],[11,13],[14,16]]) == 1
	assert candidate([[1,2],[2,3],[3,4],[4,5],[5,6]]) == 2
	assert candidate([[1,3],[5,6],[8,10],[11,13]]) == 1
	assert candidate([[5,10],[6,8],[1,5],[2,3],[1,10]]) == 3
def test_check():
	check(min_groups)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,greedy,sorting,heap-priority-queue,prefix-sum
# Metadata Coverage: 100
