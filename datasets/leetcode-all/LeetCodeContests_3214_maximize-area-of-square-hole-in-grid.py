from typing import List

def maximizeSquareHoleArea(n: int, m: int, hBars: List[int], vBars: List[int]) -> int:
    """
    There is a grid with n + 2 horizontal bars and m + 2 vertical bars, and initially containing 1 x 1 unit cells.
    The bars are 1-indexed.
    You are given the two integers, n and m.
    You are also given two integer arrays: hBars and vBars.
    
    hBars contains distinct horizontal bars in the range [2, n + 1].
    vBars contains distinct vertical bars in the range [2, m + 1].
    
    You are allowed to remove bars that satisfy any of the following conditions:
    
    If it is a horizontal bar, it must correspond to a value in hBars.
    If it is a vertical bar, it must correspond to a value in vBars.
    
    Return an integer denoting the maximum area of a square-shaped hole in the grid after removing some bars (possibly none).
    
    Example 1:
    
    
    Input: n = 2, m = 1, hBars = [2,3], vBars = [2]
    Output: 4
    Explanation: The left image shows the initial grid formed by the bars.
    The horizontal bars are in the range [1,4], and the vertical bars are in the range [1,3].
    It is allowed to remove horizontal bars [2,3] and the vertical bar [2].
    One way to get the maximum square-shaped hole is by removing horizontal bar 2 and vertical bar 2.
    The resulting grid is shown on the right.
    The hole has an area of 4.
    It can be shown that it is not possible to get a square hole with an area more than 4.
    Hence, the answer is 4.
    
    Example 2:
    
    
    Input: n = 1, m = 1, hBars = [2], vBars = [2]
    Output: 4
    Explanation: The left image shows the initial grid formed by the bars.
    The horizontal bars are in the range [1,3], and the vertical bars are in the range [1,3].
    It is allowed to remove the horizontal bar [2] and the vertical bar [2].
    To get the maximum square-shaped hole, we remove horizontal bar 2 and vertical bar 2.
    The resulting grid is shown on the right.
    The hole has an area of 4.
    Hence, the answer is 4, and it is the maximum possible.
    
    Example 3:
    
    
    Input: n = 2, m = 3, hBars = [2,3], vBars = [2,3,4]
    Output: 9
    Explanation: The left image shows the initial grid formed by the bars.
    The horizontal bars are in the range [1,4], and the vertical bars are in the range [1,5].
    It is allowed to remove horizontal bars [2,3] and vertical bars [2,3,4].
    One way to get the maximum square-shaped hole is by removing horizontal bars 2 and 3, and vertical bars 3 and 4.
    The resulting grid is shown on the right.
    The hole has an area of 9.
    It can be shown that it is not possible to get a square hole with an area more than 9.
    Hence, the answer is 9.
    
    
    Constraints:
    
    1 <= n <= 109
    1 <= m <= 109
    1 <= hBars.length <= 100
    2 <= hBars[i] <= n + 1
    1 <= vBars.length <= 100
    2 <= vBars[i] <= m + 1
    All values in hBars are distinct.
    All values in vBars are distinct.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 1, [2, 3], [2]) == 4
    assert candidate(1, 1, [2], [2]) == 4
    assert candidate(2, 3, [2, 3], [2, 3, 4]) == 9
    assert candidate(1, 5, [2], [2, 3]) == 4
    assert candidate(2, 4, [3, 2], [4, 2]) == 4
    assert candidate(1, 4, [2], [2, 3, 5, 4]) == 4
    assert candidate(1, 4, [2], [4, 3, 2, 5]) == 4
    assert candidate(3, 2, [3, 2, 4], [3, 2]) == 9
    assert candidate(3, 2, [4, 2, 3], [3, 2]) == 9
    assert candidate(14, 4, [13], [3, 4, 5, 2]) == 4
    assert candidate(19, 7, [6, 12, 4], [6, 3]) == 4
    assert candidate(2, 4, [2, 3], [4, 2, 3, 5]) == 9
    assert candidate(4, 2, [2, 5, 4, 3], [3, 2]) == 9
    assert candidate(5, 1, [2, 4, 3, 6, 5], [2]) == 4
    assert candidate(1, 6, [2], [3, 2, 7, 4, 6, 5]) == 4
    assert candidate(1, 13, [2], [4, 14, 2, 12, 11, 3]) == 4
    assert candidate(2, 5, [2, 3], [6, 2, 5, 4, 3]) == 9
    assert candidate(5, 2, [2, 3, 6, 4, 5], [2, 3]) == 9
    assert candidate(6, 1, [7, 4, 3, 2, 5, 6], [2]) == 4
    assert candidate(4, 4, [2, 3, 4, 5], [5, 4, 3, 2]) == 25
    assert candidate(4, 4, [3, 4, 2, 5], [2, 5, 3, 4]) == 25
    assert candidate(6, 2, [7, 3, 5, 4, 6, 2], [3, 2]) == 9
    assert candidate(7, 11, [7, 4, 5, 2, 8, 6, 3], [4]) == 4
    assert candidate(1, 8, [2], [9, 7, 8, 2, 5, 6, 4, 3]) == 4
    assert candidate(1, 9, [2], [5, 2, 10, 4, 3, 6, 8, 7]) == 4
    assert candidate(2, 7, [2, 3], [2, 5, 6, 8, 7, 3, 4]) == 9
    assert candidate(2, 7, [2, 3], [2, 8, 6, 7, 5, 3, 4]) == 9
    assert candidate(4, 5, [3, 2, 4, 5], [4, 3, 6, 5, 2]) == 25
    assert candidate(4, 5, [5, 3, 4, 2], [5, 3, 6, 4, 2]) == 25
    assert candidate(4, 40, [5, 3, 2, 4], [36, 41, 6, 34, 33]) == 9
    assert candidate(8, 1, [4, 7, 9, 8, 6, 2, 3, 5], [2]) == 4
    assert candidate(11, 6, [8, 9, 6], [5, 3, 6, 4, 2, 7]) == 9
    assert candidate(22, 50, [6, 19, 8, 17, 23], [51, 3, 32, 44]) == 4
    assert candidate(27, 2, [2, 26, 28, 22, 4, 8, 23], [3, 2]) == 9
    assert candidate(1, 9, [2], [3, 6, 10, 4, 8, 5, 9, 7, 2]) == 4
    assert candidate(1, 9, [2], [3, 7, 5, 9, 10, 2, 4, 8, 6]) == 4
    assert candidate(3, 7, [2, 4, 3], [5, 4, 2, 3, 7, 6, 8]) == 16
    assert candidate(3, 7, [4, 3, 2], [2, 7, 3, 6, 5, 4, 8]) == 16
    assert candidate(3, 7, [4, 3, 2], [3, 7, 5, 2, 6, 4, 8]) == 16
    assert candidate(3, 7, [4, 3, 2], [8, 2, 5, 3, 6, 4, 7]) == 16
    assert candidate(3, 13, [2, 4, 3], [4, 6, 7, 12, 10, 13, 2]) == 9
    assert candidate(4, 6, [2, 3, 4, 5], [7, 2, 4, 6, 3, 5]) == 25
    assert candidate(5, 5, [4, 6, 5, 2, 3], [2, 4, 5, 6, 3]) == 36
    assert candidate(7, 3, [8, 6, 4, 5, 7, 2, 3], [4, 3, 2]) == 16
    assert candidate(8, 2, [4, 2, 6, 8, 7, 5, 3, 9], [3, 2]) == 9
    assert candidate(9, 1, [2, 9, 3, 10, 4, 6, 7, 8, 5], [2]) == 4
    assert candidate(9, 1, [9, 5, 4, 8, 7, 10, 3, 2, 6], [2]) == 4
    assert candidate(12, 5, [10, 9, 13, 6, 3], [3, 4, 2, 5, 6]) == 9
    assert candidate(29, 2, [25, 14, 11, 29, 7, 10, 16, 8], [2, 3]) == 9
    assert candidate(1, 10, [2], [3, 4, 6, 8, 5, 7, 9, 10, 11, 2]) == 4
    assert candidate(1, 10, [2], [10, 6, 5, 7, 4, 3, 11, 8, 9, 2]) == 4
    assert candidate(2, 9, [2, 3], [6, 7, 9, 3, 10, 2, 5, 4, 8]) == 9
    assert candidate(2, 9, [3, 2], [4, 8, 2, 6, 7, 3, 5, 9, 10]) == 9
    assert candidate(4, 7, [5, 4, 3, 2], [8, 7, 5, 2, 4, 3, 6]) == 25
    assert candidate(5, 6, [2, 6, 5, 3, 4], [4, 2, 5, 3, 7, 6]) == 36
    assert candidate(5, 6, [5, 3, 6, 2, 4], [5, 7, 2, 4, 3, 6]) == 36
    assert candidate(5, 6, [6, 4, 3, 5, 2], [2, 4, 5, 7, 6, 3]) == 36
    assert candidate(5, 11, [4, 2, 6, 3, 5], [8, 11, 10, 12, 6, 2]) == 16
    assert candidate(6, 5, [4, 5, 3, 2, 7, 6], [6, 3, 5, 4, 2]) == 36
    assert candidate(6, 5, [5, 2, 3, 7, 4, 6], [6, 2, 4, 3, 5]) == 36
    assert candidate(6, 5, [6, 3, 4, 2, 7, 5], [2, 5, 4, 3, 6]) == 36
    assert candidate(6, 5, [7, 2, 3, 4, 5, 6], [6, 5, 4, 2, 3]) == 36
    assert candidate(8, 3, [4, 6, 9, 3, 8, 2, 7, 5], [2, 4, 3]) == 16
    assert candidate(8, 3, [5, 6, 9, 3, 2, 4, 8, 7], [2, 4, 3]) == 16
    assert candidate(8, 3, [8, 6, 4, 3, 7, 2, 9, 5], [4, 2, 3]) == 16
    assert candidate(8, 3, [9, 2, 7, 6, 8, 3, 4, 5], [4, 2, 3]) == 16
    assert candidate(9, 2, [5, 4, 6, 8, 9, 10, 2, 3, 7], [3, 2]) == 9
    assert candidate(9, 2, [6, 3, 5, 4, 8, 9, 2, 10, 7], [3, 2]) == 9
    assert candidate(10, 1, [4, 3, 10, 2, 11, 5, 6, 9, 8, 7], [2]) == 4
    assert candidate(1, 11, [2], [7, 12, 6, 3, 4, 9, 5, 10, 11, 2, 8]) == 4
    assert candidate(2, 10, [2, 3], [11, 10, 2, 8, 7, 5, 6, 9, 3, 4]) == 9
    assert candidate(4, 8, [5, 2, 3, 4], [8, 7, 5, 9, 4, 2, 3, 6]) == 25
    assert candidate(5, 7, [2, 3, 6, 4, 5], [6, 8, 4, 5, 3, 7, 2]) == 36
    assert candidate(6, 10, [2, 4, 3, 6, 5, 7], [11, 3, 9, 6, 10, 4]) == 16
    assert candidate(10, 2, [8, 5, 4, 3, 10, 2, 11, 9, 6, 7], [3, 2]) == 9
    assert candidate(11, 1, [2, 6, 9, 7, 5, 11, 3, 10, 4, 12, 8], [2]) == 4
    assert candidate(44, 2, [5, 16, 18, 28, 3, 9, 6, 35, 14, 10], [3, 2]) == 9
    assert candidate(1, 12, [2], [12, 9, 3, 13, 7, 2, 6, 11, 10, 8, 4, 5]) == 4
    assert candidate(2, 11, [2, 3], [3, 7, 2, 5, 12, 9, 10, 4, 8, 11, 6]) == 9
    assert candidate(2, 11, [2, 3], [12, 10, 6, 7, 2, 3, 5, 11, 4, 8, 9]) == 9
    assert candidate(5, 8, [2, 4, 6, 3, 5], [8, 7, 9, 4, 2, 5, 6, 3]) == 36
    assert candidate(6, 7, [5, 4, 6, 3, 2, 7], [4, 7, 6, 5, 2, 8, 3]) == 49
    assert candidate(6, 7, [6, 3, 2, 7, 4, 5], [6, 7, 5, 2, 3, 4, 8]) == 49
    assert candidate(8, 5, [7, 4, 3, 9, 2, 8, 6, 5], [5, 2, 6, 3, 4]) == 36
    assert candidate(9, 4, [4, 5, 6, 10, 7, 2, 3, 9, 8], [5, 3, 2, 4]) == 25
    assert candidate(9, 4, [9, 6, 3, 10, 2, 8, 4, 5, 7], [4, 3, 2, 5]) == 25
    assert candidate(10, 3, [5, 4, 9, 8, 3, 6, 11, 2, 10, 7], [4, 3, 2]) == 16
    assert candidate(10, 6, [6, 2, 8, 3, 11, 9, 10, 7, 4, 5], [6, 2, 5]) == 9
    assert candidate(11, 2, [8, 12, 9, 3, 5, 2, 10, 6, 7, 4, 11], [3, 2]) == 9
    assert candidate(28, 31, [29, 24, 4], [22, 24, 2, 14, 26, 4, 29, 13, 15, 25]) == 4
    assert candidate(1, 13, [2], [9, 5, 2, 6, 8, 11, 7, 10, 3, 13, 14, 4, 12]) == 4
    assert candidate(2, 12, [3, 2], [13, 2, 7, 4, 12, 9, 10, 3, 6, 5, 8, 11]) == 9
    assert candidate(2, 12, [3, 2], [13, 4, 7, 8, 3, 2, 11, 12, 5, 9, 6, 10]) == 9
    assert candidate(5, 9, [2, 5, 6, 3, 4], [2, 7, 3, 9, 4, 10, 8, 6, 5]) == 36
    assert candidate(6, 9, [4, 2, 5, 7, 6, 3], [4, 2, 6, 8, 10, 3, 7, 5]) == 49
    assert candidate(8, 6, [4, 8, 6, 7, 2, 9, 3, 5], [4, 7, 6, 3, 2, 5]) == 49
    assert candidate(9, 5, [2, 5, 4, 8, 3, 7, 6, 10, 9], [6, 3, 5, 2, 4]) == 36
    assert candidate(9, 5, [8, 9, 5, 2, 6, 7, 4, 10, 3], [6, 2, 3, 4, 5]) == 36
    assert candidate(10, 4, [4, 8, 6, 3, 10, 2, 7, 9, 5, 11], [5, 4, 3, 2]) == 25
    assert candidate(11, 3, [2, 8, 5, 3, 12, 10, 4, 11, 6, 7, 9], [3, 4, 2]) == 16


def test_check():
    check(maximizeSquareHoleArea)


### Metadata below ###
# question_id = 3214
# question_title = Maximize Area of Square Hole in Grid
# question_title_slug = maximize-area-of-square-hole-in-grid
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 73
# question_dislikes = 110