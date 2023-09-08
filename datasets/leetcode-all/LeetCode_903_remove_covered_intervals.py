from typing import List


def remove_covered_intervals(intervals: List[List[int]]) -> int:
    """
    Given an array intervals where intervals[i] = [li, ri] represent the interval [li, ri), remove all intervals that are covered by another interval in the list.
    The interval [a, b) is covered by the interval [c, d) if and only if c <= a and b <= d.
    Return the number of remaining intervals.
 
    Example 1:

    Input: intervals = [[1,4],[3,6],[2,8]]
    Output: 2
    Explanation: Interval [3,6] is covered by [2,8], therefore it is removed.

    Example 2:

    Input: intervals = [[1,4],[2,3]]
    Output: 1

 
    Constraints:

    1 <= intervals.length <= 1000
    intervals[i].length == 2
    0 <= li < ri <= 105
    All the given intervals are unique.

    """
    ### Canonical solution below ###
    intervals.sort(key=lambda x: (x[0], -x[1]))

    count = 0
    end = 0
    for i in intervals:
        if i[1] > end:
            count += 1
            end = i[1]
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[0,1],[0,2],[0,3],[0,4],[0,5]]) == 1
	assert candidate([[1,1]]) == 1
	assert candidate([[1,4],[2,3]]) == 1
	assert candidate([[1, 3], [2, 6], [3, 5]]) == 2
	assert candidate([[0, 0], [0, 1], [0, 2], [0, 3]]) == 1
	assert candidate([[0,0],[0,1],[0,2],[0,3]]) == 1
	assert candidate([[1,1],[0,0]]) == 1
	assert candidate([[1, 4], [2, 4], [3, 4]]) == 1
	assert candidate([[1,4],[2,3],[3,4]]) == 1
	assert candidate([[1, 1], [1, 1]]) == 1
	assert candidate([[1, 4], [3, 4], [1, 3]]) == 1
	assert candidate([[0,0],[0,1],[0,2],[0,3],[0,4]]) == 1
	assert candidate(
    [[1, 4], [3, 6], [2, 8]]) == 2, "Should remove [3,6] because it is covered by [2,8]"
	assert candidate([[0, 1000000000]]) == 1
	assert candidate([[1, 4], [2, 3]]) == 1
	assert candidate(
    [[1, 4], [3, 6], [2, 8], [4, 10]]) == 3, "Should remove [3,6] and [4,10] because they are covered by [2,8]"
	assert candidate([[0,0],[1,1],[2,2],[3,4],[3,5],[4,4],[4,5]]) == 3
	assert candidate(
    [[1, 4], [3, 6], [2, 8], [4, 10], [4, 6]]) == 3, "Should remove [3,6], [4,10] and [4,6] because they are covered by [2,8]"
def test_check():
	check(remove_covered_intervals)
# Metadata Difficulty: Medium
# Metadata Topics: array,sorting
# Metadata Coverage: 100
