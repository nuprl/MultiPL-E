from typing import List


def findFarmland(land: List[List[int]]) -> List[List[int]]:
    """
    You are given a 0-indexed m x n binary matrix land where a 0 represents a hectare of forested land and a 1 represents a hectare of farmland.
    To keep the land organized, there are designated rectangular areas of hectares that consist entirely of farmland. These rectangular areas are called groups. No two groups are adjacent, meaning farmland in one group is not four-directionally adjacent to another farmland in a different group.
    land can be represented by a coordinate system where the top left corner of land is (0, 0) and the bottom right corner of land is (m-1, n-1). Find the coordinates of the top left and bottom right corner of each group of farmland. A group of farmland with a top left corner at (r1, c1) and a bottom right corner at (r2, c2) is represented by the 4-length array [r1, c1, r2, c2].
    Return a 2D array containing the 4-length arrays described above for each group of farmland in land. If there are no groups of farmland, return an empty array. You may return the answer in any order.
 
    Example 1:


    Input: land = [[1,0,0],[0,1,1],[0,1,1]]
    Output: [[0,0,0,0],[1,1,2,2]]
    Explanation:
    The first group has a top left corner at land[0][0] and a bottom right corner at land[0][0].
    The second group has a top left corner at land[1][1] and a bottom right corner at land[2][2].

    Example 2:


    Input: land = [[1,1],[1,1]]
    Output: [[0,0,1,1]]
    Explanation:
    The first group has a top left corner at land[0][0] and a bottom right corner at land[1][1].

    Example 3:


    Input: land = [[0]]
    Output: []
    Explanation:
    There are no groups of farmland.

 
    Constraints:

    m == land.length
    n == land[i].length
    1 <= m, n <= 300
    land consists of only 0's and 1's.
    Groups of farmland are rectangular in shape.

    """
    ### Canonical solution below ###
    m, n = len(land), len(land[0])
    groups = []

    for i in range(m):
        for j in range(n):
            if land[i][j] == 1:
                r1, c1 = i, j
                while j + 1 < n and land[i][j + 1] == 1:
                    j += 1
                r2, c2 = i, j
                while r2 + 1 < m and land[r2 + 1][j] == 1:
                    r2 += 1
                for r in range(r1, r2 + 1):
                    for c in range(c1, c2 + 1):
                        land[r][c] = 0
                groups.append([r1, c1, r2, c2])

    return groups




### Unit tests below ###
def check(candidate):
	assert candidate([[1,0,0,0,1],[0,1,1,1,0],[0,1,1,1,0],[1,0,0,0,1]]) == [[0,0,0,0],[0,4,0,4],[1,1,2,3],[3,0,3,0],[3,4,3,4]]
	assert candidate([[1,1,0],[1,1,0],[0,0,1]]) == [[0,0,1,1],[2,2,2,2]]
	assert candidate([[0,0,0,0,0,0,0,0,0]]) == []
	assert candidate([[1,0,0],[0,1,1],[0,1,1]]) == [[0,0,0,0],[1,1,2,2]]
	assert candidate([[1,0,0,0,0,0,1,0,1],[0,1,1,1,0,0,0,1,0],[0,1,1,1,0,0,1,0,0],[0,1,1,1,0,0,0,0,1],[1,0,0,0,1,1,1,0,0]]) == [[0,0,0,0],[0,6,0,6],[0,8,0,8],[1,1,3,3],[1,7,1,7],[2,6,2,6],[3,8,3,8],[4,0,4,0],[4,4,4,6]]
	assert candidate([[0,0],[0,1]]) == [[1,1,1,1]]
	assert candidate([[1,0,1],[0,1,0],[1,0,1]]) == [[0,0,0,0],[0,2,0,2],[1,1,1,1],[2,0,2,0],[2,2,2,2]]
	assert candidate([[1,1],[1,1]]) == [[0,0,1,1]]
	assert candidate([[1,1,1,1,1,1,1,1,1]]) == [[0,0,0,8]]
	assert candidate([[0]]) == []
	assert candidate([[1]]) == [[0,0,0,0]]
def test_check():
	check(findFarmland)
# Metadata Difficulty: Medium
# Metadata Topics: array,depth-first-search,breadth-first-search,matrix
# Metadata Coverage: 100
