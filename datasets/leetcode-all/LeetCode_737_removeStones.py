from typing import List


def removeStones(stones: List[List[int]]) -> int:
    """
    On a 2D plane, we place n stones at some integer coordinate points. Each coordinate point may have at most one stone.
    A stone can be removed if it shares either the same row or the same column as another stone that has not been removed.
    Given an array stones of length n where stones[i] = [xi, yi] represents the location of the ith stone, return the largest possible number of stones that can be removed.
 
    Example 1:

    Input: stones = [[0,0],[0,1],[1,0],[1,2],[2,1],[2,2]]
    Output: 5
    Explanation: One way to remove 5 stones is as follows:
    1. Remove stone [2,2] because it shares the same row as [2,1].
    2. Remove stone [2,1] because it shares the same column as [0,1].
    3. Remove stone [1,2] because it shares the same row as [1,0].
    4. Remove stone [1,0] because it shares the same column as [0,0].
    5. Remove stone [0,1] because it shares the same row as [0,0].
    Stone [0,0] cannot be removed since it does not share a row/column with another stone still on the plane.

    Example 2:

    Input: stones = [[0,0],[0,2],[1,1],[2,0],[2,2]]
    Output: 3
    Explanation: One way to make 3 moves is as follows:
    1. Remove stone [2,2] because it shares the same row as [2,0].
    2. Remove stone [2,0] because it shares the same column as [0,0].
    3. Remove stone [0,2] because it shares the same row as [0,0].
    Stones [0,0] and [1,1] cannot be removed since they do not share a row/column with another stone still on the plane.

    Example 3:

    Input: stones = [[0,0]]
    Output: 0
    Explanation: [0,0] is the only stone on the plane, so you cannot remove it.

 
    Constraints:

    1 <= stones.length <= 1000
    0 <= xi, yi <= 104
    No two stones are at the same coordinate point.

    """
    ### Canonical solution below ###
    from collections import defaultdict
    row_groups = defaultdict(int)
    col_groups = defaultdict(int)
    group_count = 0

    groups = defaultdict(list)

    for x, y in stones:
        if x not in row_groups:
            row_groups[x] = group_count
            group_count += 1
        if y + 10001 not in col_groups:  # Offset by max row index
            col_groups[y + 10001] = group_count
            group_count += 1

        group_x, group_y = row_groups[x], col_groups[y + 10001]
        groups[group_x].append(group_y)
        groups[group_y].append(group_x)

    visited = [False] * group_count

    def dfs(groupId):
        if visited[groupId]:
            return 0
        visited[groupId] = True
        size = 1
        for neighbor in groups[groupId]:
            size += dfs(neighbor)
        return size

    max_stones = 0
    for groupId in range(group_count):
        max_stones += dfs(groupId) - 1

    return max_stones




### Unit tests below ###
def check(candidate):
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4]]) == 0
	assert candidate([[0,0],[1,1],[2,2]]) == 0
	assert candidate([[0,0]]) == 0
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4],[5,5]]) == 0
	assert candidate([[0,0],[2,2],[4,4],[6,6],[8,8]]) == 0
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7]]) == 0
	assert candidate([[0,0],[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[8,8]]) == 0
	assert candidate([[0,0],[0,1],[0,2],[0,3]]) == 0
	assert candidate([[0,0],[2,0],[4,0],[6,0],[8,0]]) == 0
def test_check():
	check(removeStones)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,depth-first-search,union-find,graph
# Metadata Coverage: 100
