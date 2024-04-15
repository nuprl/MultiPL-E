from typing import List

def numberOfSets(n: int, maxDistance: int, roads: List[List[int]]) -> int:
    """
    There is a company with n branches across the country, some of which are connected by roads. Initially, all branches are reachable from each other by traveling some roads.
    The company has realized that they are spending an excessive amount of time traveling between their branches. As a result, they have decided to close down some of these branches (possibly none). However, they want to ensure that the remaining branches have a distance of at most maxDistance from each other.
    The distance between two branches is the minimum total traveled length needed to reach one branch from another.
    You are given integers n, maxDistance, and a 0-indexed 2D array roads, where roads[i] = [ui, vi, wi] represents the undirected road between branches ui and vi with length wi.
    Return the number of possible sets of closing branches, so that any branch has a distance of at most maxDistance from any other.
    Note that, after closing a branch, the company will no longer have access to any roads connected to it.
    Note that, multiple roads are allowed.
    
    Example 1:
    
    
    Input: n = 3, maxDistance = 5, roads = [[0,1,2],[1,2,10],[0,2,10]]
    Output: 5
    Explanation: The possible sets of closing branches are:
    - The set [2], after closing, active branches are [0,1] and they are reachable to each other within distance 2.
    - The set [0,1], after closing, the active branch is [2].
    - The set [1,2], after closing, the active branch is [0].
    - The set [0,2], after closing, the active branch is [1].
    - The set [0,1,2], after closing, there are no active branches.
    It can be proven, that there are only 5 possible sets of closing branches.
    
    Example 2:
    
    
    Input: n = 3, maxDistance = 5, roads = [[0,1,20],[0,1,10],[1,2,2],[0,2,2]]
    Output: 7
    Explanation: The possible sets of closing branches are:
    - The set [], after closing, active branches are [0,1,2] and they are reachable to each other within distance 4.
    - The set [0], after closing, active branches are [1,2] and they are reachable to each other within distance 2.
    - The set [1], after closing, active branches are [0,2] and they are reachable to each other within distance 2.
    - The set [0,1], after closing, the active branch is [2].
    - The set [1,2], after closing, the active branch is [0].
    - The set [0,2], after closing, the active branch is [1].
    - The set [0,1,2], after closing, there are no active branches.
    It can be proven, that there are only 7 possible sets of closing branches.
    
    Example 3:
    
    Input: n = 1, maxDistance = 10, roads = []
    Output: 2
    Explanation: The possible sets of closing branches are:
    - The set [], after closing, the active branch is [0].
    - The set [0], after closing, there are no active branches.
    It can be proven, that there are only 2 possible sets of closing branches.
    
    
    Constraints:
    
    1 <= n <= 10
    1 <= maxDistance <= 105
    0 <= roads.length <= 1000
    roads[i].length == 3
    0 <= ui, vi <= n - 1
    ui != vi
    1 <= wi <= 1000
    All branches are reachable from each other by traveling some roads.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, 5, [[0, 1, 2], [1, 2, 10], [0, 2, 10]]) == 5
    assert candidate(3, 5, [[0, 1, 20], [0, 1, 10], [1, 2, 2], [0, 2, 2]]) == 7
    assert candidate(1, 10, []) == 2
    assert candidate(3, 12, [[1, 0, 11], [1, 0, 16], [0, 2, 13]]) == 5
    assert candidate(3, 3, [[2, 0, 14], [1, 0, 15], [1, 0, 7]]) == 4
    assert candidate(3, 19, [[1, 0, 7], [0, 2, 18]]) == 6
    assert candidate(3, 5, [[2, 0, 4], [1, 0, 3], [1, 0, 2]]) == 6
    assert candidate(4, 3, [[2, 1, 8], [1, 0, 3], [0, 3, 8]]) == 6
    assert candidate(5, 20, [[3, 2, 20], [1, 0, 10], [0, 2, 19], [0, 3, 13], [0, 4, 19]]) == 12
    assert candidate(2, 30, [[1, 0, 33]]) == 3
    assert candidate(3, 12, [[2, 1, 4], [0, 1, 4], [0, 2, 6]]) == 8
    assert candidate(3, 3, [[1, 0, 4], [0, 2, 5]]) == 4
    assert candidate(3, 27, [[2, 1, 23], [0, 1, 14], [0, 2, 18]]) == 8
    assert candidate(4, 20, [[2, 0, 16], [0, 1, 13], [0, 3, 11]]) == 8
    assert candidate(3, 22, [[1, 0, 21], [2, 1, 28]]) == 5
    assert candidate(2, 2, [[1, 0, 6]]) == 3
    assert candidate(3, 22, [[1, 0, 16], [1, 0, 12], [0, 2, 14]]) == 6
    assert candidate(2, 8, [[1, 0, 9]]) == 3
    assert candidate(2, 18, [[1, 0, 3]]) == 4
    assert candidate(4, 27, [[3, 2, 3], [0, 1, 27], [0, 2, 6], [0, 3, 17]]) == 10
    assert candidate(5, 14, [[1, 0, 13], [2, 0, 19], [0, 3, 16], [0, 4, 18]]) == 7
    assert candidate(5, 8, [[1, 0, 3], [3, 1, 10], [4, 0, 6], [2, 0, 9], [3, 2, 11], [4, 0, 12]]) == 8
    assert candidate(2, 4, [[1, 0, 7]]) == 3
    assert candidate(4, 39, [[2, 0, 44], [3, 2, 42], [2, 1, 45]]) == 5
    assert candidate(5, 2, [[4, 1, 11], [3, 1, 5], [1, 0, 4], [0, 2, 7]]) == 6
    assert candidate(3, 9, [[1, 0, 17], [0, 2, 22]]) == 4
    assert candidate(2, 1, [[1, 0, 3]]) == 3
    assert candidate(3, 39, [[1, 0, 28], [0, 2, 35]]) == 6
    assert candidate(4, 17, [[2, 1, 28], [2, 0, 6], [1, 0, 28], [1, 0, 24], [1, 0, 18], [1, 0, 25], [0, 3, 10]]) == 8
    assert candidate(5, 16, [[2, 1, 27], [3, 0, 22], [2, 1, 4], [1, 0, 11], [2, 1, 48], [1, 0, 40], [4, 2, 33], [4, 3, 44], [1, 0, 1]]) == 9
    assert candidate(3, 23, [[2, 1, 20], [0, 1, 12], [0, 2, 10]]) == 8
    assert candidate(5, 3, [[4, 0, 5], [1, 0, 2], [3, 0, 5], [3, 0, 4], [4, 2, 5], [4, 2, 1]]) == 8
    assert candidate(3, 5, [[1, 0, 6], [2, 0, 7]]) == 4
    assert candidate(3, 21, [[2, 1, 30], [0, 1, 36], [0, 2, 44]]) == 4
    assert candidate(5, 25, [[1, 0, 17], [1, 0, 1], [2, 1, 24], [3, 2, 12], [1, 0, 7], [3, 2, 4], [2, 1, 15], [0, 4, 14]]) == 14
    assert candidate(2, 3, [[1, 0, 6]]) == 3
    assert candidate(3, 4, [[1, 0, 6], [2, 1, 6], [2, 0, 2]]) == 5
    assert candidate(4, 21, [[3, 2, 18], [1, 0, 15], [2, 1, 15], [3, 0, 19], [3, 2, 19]]) == 9
    assert candidate(4, 1, [[1, 0, 4], [1, 0, 2], [3, 1, 2], [2, 1, 1], [1, 0, 3], [2, 0, 3]]) == 6
    assert candidate(3, 33, [[2, 1, 2], [1, 0, 40], [2, 1, 43]]) == 5
    assert candidate(4, 29, [[2, 1, 20], [1, 0, 38], [2, 1, 15], [2, 0, 32], [0, 3, 18]]) == 7
    assert candidate(3, 1, [[2, 1, 4], [2, 0, 2], [1, 0, 12]]) == 4
    assert candidate(2, 2, [[1, 0, 3]]) == 3
    assert candidate(3, 13, [[1, 0, 18], [2, 0, 1], [2, 1, 2]]) == 7
    assert candidate(3, 1, [[1, 0, 23], [0, 2, 37]]) == 4
    assert candidate(3, 18, [[2, 0, 39], [0, 1, 47]]) == 4
    assert candidate(4, 6, [[3, 0, 6], [0, 1, 3], [0, 2, 9]]) == 7
    assert candidate(3, 35, [[1, 0, 10], [1, 0, 15], [0, 2, 32]]) == 6
    assert candidate(5, 10, [[4, 0, 38], [4, 0, 11], [2, 0, 24], [3, 0, 5], [2, 1, 18], [2, 0, 38], [1, 0, 7], [2, 1, 3], [2, 1, 2], [3, 1, 36]]) == 10
    assert candidate(5, 16, [[2, 0, 32], [4, 0, 17], [2, 0, 22], [3, 1, 38], [3, 0, 13], [3, 1, 34], [3, 1, 36], [1, 0, 36], [3, 1, 18], [3, 2, 10]]) == 8
    assert candidate(2, 4, [[1, 0, 18]]) == 3
    assert candidate(5, 13, [[3, 0, 5], [2, 1, 3], [1, 0, 6], [3, 2, 19], [2, 1, 29], [2, 1, 30], [1, 0, 5], [2, 0, 29], [4, 3, 15], [2, 1, 23]]) == 12
    assert candidate(3, 23, [[2, 1, 12], [1, 0, 8], [2, 1, 7]]) == 7
    assert candidate(5, 38, [[2, 0, 8], [2, 1, 10], [0, 3, 25], [0, 4, 48]]) == 11
    assert candidate(2, 4, [[1, 0, 2]]) == 4
    assert candidate(4, 12, [[2, 1, 18], [0, 1, 25], [0, 2, 24], [0, 3, 16]]) == 5
    assert candidate(4, 1, [[2, 0, 1], [3, 2, 2], [2, 0, 2], [2, 0, 1], [1, 0, 1], [1, 0, 1]]) == 7
    assert candidate(3, 1, [[1, 0, 1], [0, 2, 1]]) == 6
    assert candidate(2, 3, [[1, 0, 24]]) == 3
    assert candidate(2, 10, [[1, 0, 13]]) == 3
    assert candidate(3, 1, [[2, 1, 1], [0, 1, 1], [0, 2, 1]]) == 8
    assert candidate(5, 13, [[1, 0, 17], [1, 0, 21], [3, 0, 9], [1, 0, 10], [2, 0, 11], [4, 1, 12], [2, 1, 11], [1, 0, 18]]) == 12
    assert candidate(2, 19, [[1, 0, 28]]) == 3
    assert candidate(3, 8, [[2, 0, 7], [2, 0, 28], [0, 1, 34]]) == 5
    assert candidate(5, 7, [[1, 0, 32], [0, 2, 35], [0, 3, 20], [0, 4, 27]]) == 6
    assert candidate(4, 1, [[1, 0, 4], [1, 0, 3], [3, 0, 4], [1, 0, 7], [0, 2, 11]]) == 5
    assert candidate(2, 34, [[1, 0, 11]]) == 4
    assert candidate(5, 10, [[2, 1, 32], [4, 3, 14], [3, 2, 3], [2, 1, 21], [3, 1, 37], [2, 1, 30], [0, 1, 18], [0, 2, 26], [0, 3, 19], [0, 4, 23]]) == 7
    assert candidate(5, 14, [[2, 0, 19], [3, 1, 24], [4, 3, 10], [4, 1, 15], [0, 1, 21], [0, 3, 21], [0, 4, 12]]) == 8
    assert candidate(4, 30, [[2, 0, 5], [0, 1, 27], [0, 3, 24]]) == 9
    assert candidate(2, 6, [[1, 0, 23]]) == 3
    assert candidate(5, 6, [[4, 0, 17], [2, 1, 7], [4, 1, 23], [1, 0, 1], [1, 0, 19], [0, 3, 20]]) == 7
    assert candidate(3, 5, [[1, 0, 1], [1, 0, 3], [2, 0, 4]]) == 7
    assert candidate(4, 19, [[3, 2, 21], [2, 1, 3], [0, 1, 15], [0, 2, 22], [0, 3, 8]]) == 9
    assert candidate(2, 5, [[1, 0, 4]]) == 4
    assert candidate(4, 18, [[2, 1, 7], [2, 0, 5], [0, 3, 10]]) == 10
    assert candidate(5, 35, [[1, 0, 39], [1, 0, 3], [3, 1, 45], [2, 0, 21], [3, 2, 40], [3, 0, 27], [2, 1, 44], [4, 2, 6], [4, 2, 45], [3, 0, 22]]) == 14
    assert candidate(4, 2, [[1, 0, 2], [1, 0, 3], [1, 0, 15], [1, 0, 7], [0, 2, 4], [0, 3, 6]]) == 6
    assert candidate(4, 5, [[2, 0, 1], [1, 0, 3], [0, 3, 4]]) == 10
    assert candidate(3, 19, [[1, 0, 9], [0, 2, 4]]) == 7
    assert candidate(4, 1, [[3, 0, 4], [2, 1, 4], [1, 0, 4]]) == 5
    assert candidate(2, 29, [[1, 0, 18]]) == 4
    assert candidate(2, 11, [[1, 0, 28]]) == 3
    assert candidate(2, 12, [[1, 0, 10]]) == 4
    assert candidate(5, 9, [[3, 2, 23], [4, 3, 11], [1, 0, 16], [2, 0, 11], [2, 0, 16], [1, 0, 20], [4, 0, 16], [2, 0, 36], [3, 0, 7]]) == 7
    assert candidate(5, 17, [[3, 2, 22], [3, 2, 3], [4, 0, 19], [3, 0, 21], [4, 3, 4], [1, 0, 24], [3, 0, 7], [3, 2, 12], [1, 0, 17]]) == 14
    assert candidate(4, 5, [[2, 0, 26], [1, 0, 15], [3, 2, 17]]) == 5
    assert candidate(4, 4, [[1, 0, 11], [0, 2, 3], [0, 3, 3]]) == 7
    assert candidate(5, 13, [[3, 1, 16], [0, 1, 3], [0, 2, 19], [0, 3, 10], [0, 4, 2]]) == 13
    assert candidate(4, 5, [[1, 0, 21], [1, 0, 13], [1, 0, 19], [2, 1, 15], [1, 0, 17], [1, 0, 3], [0, 3, 1]]) == 8
    assert candidate(5, 25, [[1, 0, 18], [3, 0, 20], [2, 0, 17], [2, 1, 21], [0, 4, 3]]) == 16
    assert candidate(5, 15, [[2, 1, 33], [1, 0, 18], [2, 0, 16], [3, 1, 37], [3, 0, 26], [0, 4, 18]]) == 6
    assert candidate(4, 1, [[1, 0, 1], [1, 0, 1], [0, 2, 1], [0, 3, 1]]) == 8
    assert candidate(4, 10, [[2, 0, 22], [2, 1, 6], [2, 0, 21], [2, 1, 27], [3, 1, 12]]) == 6
    assert candidate(2, 13, [[1, 0, 21]]) == 3
    assert candidate(4, 31, [[3, 1, 7], [2, 1, 10], [2, 0, 25], [2, 0, 27]]) == 9
    assert candidate(3, 17, [[1, 0, 8], [1, 0, 8], [0, 2, 14]]) == 6
    assert candidate(2, 3, [[1, 0, 3]]) == 4
    assert candidate(5, 5, [[4, 1, 37], [4, 1, 7], [2, 1, 6], [3, 2, 8], [2, 1, 35], [1, 0, 28], [4, 1, 3], [2, 1, 2]]) == 9
    assert candidate(4, 1, [[2, 0, 2], [2, 0, 1], [0, 1, 2], [0, 3, 2]]) == 6


def test_check():
    check(numberOfSets)


### Metadata below ###
# question_id = 3217
# question_title = Number of Possible Sets of Closing Branches
# question_title_slug = number-of-possible-sets-of-closing-branches
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 110
# question_dislikes = 9