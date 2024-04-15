def isReachableAtTime(sx: int, sy: int, fx: int, fy: int, t: int) -> bool:
    """
    You are given four integers sx, sy, fx, fy, and a non-negative integer t.
    
    In an infinite 2D grid, you start at the cell (sx, sy). Each second, you must move to any of its adjacent cells.
    
    Return true if you can reach cell (fx, fy) after exactly t seconds, or false otherwise.
    
    A cell's adjacent cells are the 8 cells around it that share at least one corner with it. You can visit the same cell several times.
    
    Example 1:
    
    [https://assets.leetcode.com/uploads/2023/08/05/example2.svg]
    
    Input: sx = 2, sy = 4, fx = 7, fy = 7, t = 6
    Output: true
    Explanation: Starting at cell (2, 4), we can reach cell (7, 7) in exactly 6 seconds by going through the cells depicted in the picture above.
    
    Example 2:
    
    [https://assets.leetcode.com/uploads/2023/08/05/example1.svg]
    
    Input: sx = 3, sy = 1, fx = 7, fy = 3, t = 3
    Output: false
    Explanation: Starting at cell (3, 1), it takes at least 4 seconds to reach cell (7, 3) by going through the cells depicted in the picture above. Hence, we cannot reach cell (7, 3) at the third second.
    
    
    Constraints:
    
     * 1 <= sx, sy, fx, fy <= 109
     * 0 <= t <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, 1, 7, 3, 3) == False
    assert candidate(2, 4, 7, 7, 6) == True
    assert candidate(1, 1, 1, 2, 0) == False
    assert candidate(1, 1, 2, 4, 0) == False
    assert candidate(1, 1, 3, 4, 1) == False
    assert candidate(1, 1, 3, 5, 1) == False
    assert candidate(1, 1, 1, 1, 3) == True
    assert candidate(1, 1, 1, 3, 2) == True
    assert candidate(1, 1, 4, 1, 0) == False
    assert candidate(1, 1, 4, 2, 1) == False
    assert candidate(1, 1, 1, 4, 3) == True
    assert candidate(1, 1, 1, 5, 8) == True
    assert candidate(1, 1, 2, 1, 2) == True
    assert candidate(1, 1, 4, 3, 2) == False
    assert candidate(1, 1, 2, 2, 1) == True
    assert candidate(1, 1, 4, 4, 0) == False
    assert candidate(1, 1, 5, 1, 0) == False
    assert candidate(1, 1, 2, 3, 2) == True
    assert candidate(1, 1, 5, 2, 0) == False
    assert candidate(1, 1, 2, 5, 6) == True
    assert candidate(1, 1, 3, 1, 3) == True
    assert candidate(1, 1, 3, 2, 4) == True
    assert candidate(1, 1, 3, 3, 9) == True
    assert candidate(1, 1, 4, 5, 9) == True
    assert candidate(1, 1, 5, 3, 9) == True
    assert candidate(1, 1, 5, 4, 0) == False
    assert candidate(1, 2, 1, 1, 2) == True
    assert candidate(1, 1, 5, 5, 0) == False
    assert candidate(1, 2, 1, 2, 1) == False
    assert candidate(1, 2, 1, 3, 6) == True
    assert candidate(1, 2, 1, 4, 4) == True
    assert candidate(1, 2, 2, 5, 0) == False
    assert candidate(1, 2, 3, 4, 0) == False
    assert candidate(1, 2, 1, 5, 5) == True
    assert candidate(1, 2, 3, 5, 0) == False
    assert candidate(1, 2, 4, 1, 0) == False
    assert candidate(1, 2, 2, 1, 10) == True
    assert candidate(1, 2, 2, 2, 9) == True
    assert candidate(1, 2, 2, 3, 1) == True
    assert candidate(1, 2, 4, 2, 1) == False
    assert candidate(1, 2, 2, 4, 2) == True
    assert candidate(1, 2, 4, 3, 1) == False
    assert candidate(1, 2, 4, 4, 0) == False
    assert candidate(1, 2, 3, 1, 2) == True
    assert candidate(1, 2, 3, 2, 2) == True
    assert candidate(1, 2, 4, 5, 2) == False
    assert candidate(1, 2, 3, 3, 4) == True
    assert candidate(1, 2, 5, 1, 0) == False
    assert candidate(1, 2, 5, 3, 0) == False
    assert candidate(1, 2, 5, 2, 4) == True
    assert candidate(1, 2, 5, 4, 0) == False
    assert candidate(1, 3, 1, 1, 2) == True
    assert candidate(1, 3, 1, 2, 3) == True
    assert candidate(1, 2, 5, 5, 2) == False
    assert candidate(1, 3, 2, 1, 0) == False
    assert candidate(1, 3, 2, 4, 0) == False
    assert candidate(1, 3, 1, 3, 0) == True
    assert candidate(1, 3, 1, 4, 4) == True
    assert candidate(1, 3, 1, 5, 4) == True
    assert candidate(1, 3, 2, 2, 2) == True
    assert candidate(1, 3, 2, 3, 3) == True
    assert candidate(1, 3, 3, 1, 3) == True
    assert candidate(1, 3, 2, 5, 0) == False
    assert candidate(1, 3, 4, 1, 1) == False
    assert candidate(1, 3, 3, 2, 2) == True
    assert candidate(1, 3, 3, 3, 8) == True
    assert candidate(1, 3, 4, 5, 1) == False
    assert candidate(1, 3, 5, 1, 3) == False
    assert candidate(1, 3, 5, 2, 2) == False
    assert candidate(1, 3, 5, 3, 3) == False
    assert candidate(1, 3, 5, 4, 3) == False
    assert candidate(1, 3, 5, 5, 1) == False
    assert candidate(1, 3, 3, 4, 4) == True
    assert candidate(1, 3, 3, 5, 2) == True
    assert candidate(1, 4, 1, 2, 1) == False
    assert candidate(1, 3, 4, 2, 3) == True
    assert candidate(1, 3, 4, 3, 10) == True
    assert candidate(1, 3, 4, 4, 10) == True
    assert candidate(1, 4, 1, 1, 4) == True
    assert candidate(1, 4, 1, 3, 1) == True
    assert candidate(1, 4, 1, 4, 6) == True
    assert candidate(1, 4, 2, 2, 0) == False
    assert candidate(1, 4, 1, 5, 6) == True
    assert candidate(1, 4, 2, 4, 0) == False
    assert candidate(1, 4, 2, 1, 4) == True
    assert candidate(1, 4, 3, 3, 0) == False
    assert candidate(1, 4, 2, 3, 3) == True
    assert candidate(1, 4, 2, 5, 3) == True
    assert candidate(1, 4, 3, 1, 4) == True
    assert candidate(1, 4, 3, 2, 5) == True
    assert candidate(1, 4, 4, 1, 7) == True
    assert candidate(1, 4, 3, 4, 1) == False
    assert candidate(1, 4, 4, 4, 10) == True
    assert candidate(1, 4, 4, 5, 3) == True
    assert candidate(1, 4, 3, 5, 0) == False
    assert candidate(1, 4, 4, 2, 0) == False
    assert candidate(1, 4, 4, 3, 1) == False
    assert candidate(1, 4, 5, 2, 1) == False
    assert candidate(1, 4, 5, 4, 3) == False
    assert candidate(1, 4, 5, 5, 0) == False


def test_check():
    check(isReachableAtTime)


### Metadata below ###
# question_id = 3056
# question_title = Determine if a Cell Is Reachable at a Given Time
# question_title_slug = determine-if-a-cell-is-reachable-at-a-given-time
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 782
# question_dislikes = 730