from typing import List


def findRightInterval(intervals: List[List[int]]) -> List[int]:
    """
    You are given an array of intervals, where intervals[i] = [starti, endi] and each starti is unique.
    The right interval for an interval i is an interval j such that startj >= endi and startj is minimized. Note that i may equal j.
    Return an array of right interval indices for each interval i. If no right interval exists for interval i, then put -1 at index i.
 
    Example 1:

    Input: intervals = [[1,2]]
    Output: [-1]
    Explanation: There is only one interval in the collection, so it outputs -1.

    Example 2:

    Input: intervals = [[3,4],[2,3],[1,2]]
    Output: [-1,0,1]
    Explanation: There is no right interval for [3,4].
    The right interval for [2,3] is [3,4] since start0 = 3 is the smallest start that is >= end1 = 3.
    The right interval for [1,2] is [2,3] since start1 = 2 is the smallest start that is >= end2 = 2.

    Example 3:

    Input: intervals = [[1,4],[2,3],[3,4]]
    Output: [-1,2,-1]
    Explanation: There is no right interval for [1,4] and [3,4].
    The right interval for [2,3] is [3,4] since start2 = 3 is the smallest start that is >= end1 = 3.

 
    Constraints:

    1 <= intervals.length <= 2 * 104
    intervals[i].length == 2
    -106 <= starti <= endi <= 106
    The start point of each interval is unique.

    """
    ### Canonical solution below ###
    starts = {interval[0]: index for index, interval in enumerate(intervals)}
    res = []

    for interval in intervals:
        right = min(filter(lambda x: x >= interval[1], starts.keys()), default=-1)
        res.append(starts[right] if right != -1 else -1)

    return res




### Unit tests below ###
def check(candidate):
	assert candidate([[1,2]]) == [-1]
	assert candidate([[10,20],[20,30],[30,40],[40,50]]) == [1, 2, 3, -1]
	assert candidate([[3,4],[2,3],[1,2]]) == [-1, 0, 1]
	assert candidate([[1,4],[2,3],[3,4]]) == [-1, 2, -1]
	assert candidate([[5,10],[10,15],[15,20]]) == [1, 2, -1]
	assert candidate([[1,5],[2,6],[3,7]]) == [-1, -1, -1]
	assert candidate([[1,2],[2,3],[3,4]]) == [1, 2, -1]
	assert candidate([[1,6],[2,7],[3,8],[4,9],[5,10]]) == [-1, -1, -1, -1, -1]
def test_check():
	check(findRightInterval)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,sorting
# Metadata Coverage: 100
