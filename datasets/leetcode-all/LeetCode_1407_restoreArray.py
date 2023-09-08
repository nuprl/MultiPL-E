from typing import List


def restoreArray(adjacentPairs: List[List[int]]) -> List[int]:
    """
    There is an integer array nums that consists of n unique elements, but you have forgotten it. However, you do remember every pair of adjacent elements in nums.
    You are given a 2D integer array adjacentPairs of size n - 1 where each adjacentPairs[i] = [ui, vi] indicates that the elements ui and vi are adjacent in nums.
    It is guaranteed that every adjacent pair of elements nums[i] and nums[i+1] will exist in adjacentPairs, either as [nums[i], nums[i+1]] or [nums[i+1], nums[i]]. The pairs can appear in any order.
    Return the original array nums. If there are multiple solutions, return any of them.
 
    Example 1:

    Input: adjacentPairs = [[2,1],[3,4],[3,2]]
    Output: [1,2,3,4]
    Explanation: This array has all its adjacent pairs in adjacentPairs.
    Notice that adjacentPairs[i] may not be in left-to-right order.

    Example 2:

    Input: adjacentPairs = [[4,-2],[1,4],[-3,1]]
    Output: [-2,4,1,-3]
    Explanation: There can be negative numbers.
    Another solution is [-3,1,4,-2], which would also be accepted.

    Example 3:

    Input: adjacentPairs = [[100000,-100000]]
    Output: [100000,-100000]

 
    Constraints:

    nums.length == n
    adjacentPairs.length == n - 1
    adjacentPairs[i].length == 2
    2 <= n <= 105
    -105 <= nums[i], ui, vi <= 105
    There exists some nums that has adjacentPairs as its pairs.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    graph = defaultdict(list)
    for pair in adjacentPairs:
        graph[pair[0]].append(pair[1])
        graph[pair[1]].append(pair[0])

    n = len(graph)
    nums = [0] * n
    for key, nodes in graph.items():
        if len(nodes) == 1:
            nums[0] = key
            break

    nums[1] = graph[nums[0]][0]
    for i in range(2, n):
        nums[i] = (graph[nums[i - 1]][1]
                   if (nums[i - 2] == graph[nums[i - 1]][0])
                   else graph[nums[i - 1]][0])

    return nums




### Unit tests below ###
def check(candidate):
	assert candidate([[4, -2], [1, 4], [-3, 1]]) == [-2, 4, 1, -3]
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5]]) == [1, 2, 3, 4, 5]
	assert candidate([[1, 2], [2, 3]]) == [1, 2, 3]
	assert candidate([[1, 2], [1, 3]]) == [2, 1, 3]
	assert candidate([[5, 1], [1, 2], [2, 3], [3, 4]]) == [5, 1, 2, 3, 4]
	assert candidate([[100000, -100000]]) == [100000, -100000]
	assert candidate([[4, 3], [3, 2], [2, 1]]) == [4, 3, 2, 1]
	assert candidate([[1, 3], [2, 1], [3, 4]]) == [2, 1, 3, 4]
	assert candidate([[2, 1], [1, 3]]) == [2, 1, 3]
	assert candidate([[3, 2], [3, 4]]) == [2, 3, 4]
	assert candidate([[1, 2], [2, 3], [3, 4]]) == [1, 2, 3, 4]
	assert candidate([[1, 2], [3, 4], [2, 3]]) == [1, 2, 3, 4]
	assert candidate([[1, 5], [2, 1], [3, 2], [4, 3]]) == [5, 1, 2, 3, 4]
	assert candidate([[2, 1], [3, 4], [3, 2]]) == [1, 2, 3, 4]
def test_check():
	check(restoreArray)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
