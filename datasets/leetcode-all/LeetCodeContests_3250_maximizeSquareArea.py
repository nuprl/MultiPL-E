from typing import List

def maximizeSquareArea(m: int, n: int, hFences: List[int], vFences: List[int]) -> int:
    """
    There is a large (m - 1) x (n - 1) rectangular field with corners at (1, 1) and (m, n) containing some horizontal and vertical fences given in arrays hFences and vFences respectively.
    Horizontal fences are from the coordinates (hFences[i], 1) to (hFences[i], n) and vertical fences are from the coordinates (1, vFences[i]) to (m, vFences[i]).
    Return the maximum area of a square field that can be formed by removing some fences (possibly none) or -1 if it is impossible to make a square field.
    Since the answer may be large, return it modulo 109 + 7.
    Note: The field is surrounded by two horizontal fences from the coordinates (1, 1) to (1, n) and (m, 1) to (m, n) and two vertical fences from the coordinates (1, 1) to (m, 1) and (1, n) to (m, n). These fences cannot be removed.
    
    Example 1:
    
    
    Input: m = 4, n = 3, hFences = [2,3], vFences = [2]
    Output: 4
    Explanation: Removing the horizontal fence at 2 and the vertical fence at 2 will give a square field of area 4.
    
    Example 2:
    
    
    Input: m = 6, n = 7, hFences = [2], vFences = [4]
    Output: -1
    Explanation: It can be proved that there is no way to create a square field by removing fences.
    
    
    Constraints:
    
    3 <= m, n <= 109
    1 <= hFences.length, vFences.length <= 600
    1 < hFences[i] < m
    1 < vFences[i] < n
    hFences and vFences are unique.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(4, 3, [2, 3], [2]) == 4
    assert candidate(6, 7, [2], [4]) == -1
    assert candidate(4, 4, [2], [2, 3]) == 9
    assert candidate(8, 5, [5, 4], [4]) == 16
    assert candidate(4, 5, [2], [4]) == 9
    assert candidate(5, 6, [4, 2, 3], [4, 5]) == 16
    assert candidate(3, 9, [2], [8, 6, 5, 4]) == 4
    assert candidate(6, 4, [3], [3, 2]) == 9
    assert candidate(7, 4, [2, 3, 6, 5], [3, 2]) == 9
    assert candidate(8, 8, [2, 3, 6, 7], [6, 5, 7, 4, 2, 3]) == 49
    assert candidate(9, 9, [2, 4], [6, 4, 2]) == 64
    assert candidate(7, 7, [4, 3], [2, 6]) == 36
    assert candidate(4, 6, [2], [3, 4, 2]) == 9
    assert candidate(8, 6, [7, 5, 2, 4, 3], [5, 3]) == 25
    assert candidate(9, 3, [7, 4, 5], [2]) == 4
    assert candidate(4, 3, [3], [2]) == 4
    assert candidate(4, 3, [3, 2], [2]) == 4
    assert candidate(8, 6, [6, 4, 3, 7, 2, 5], [5, 3, 4, 2]) == 25
    assert candidate(8, 8, [6, 3, 7, 5], [6, 2, 7]) == 49
    assert candidate(5, 5, [4, 3], [4]) == 16
    assert candidate(5, 3, [4], [2]) == 1
    assert candidate(7, 9, [5], [2, 7, 6, 8, 3]) == 36
    assert candidate(8, 6, [5, 4, 6, 7, 3], [5, 3]) == 25
    assert candidate(9, 7, [6, 4, 7, 5, 8], [6, 4, 2, 3]) == 36
    assert candidate(6, 7, [5], [5, 3, 6]) == 25
    assert candidate(3, 3, [2], [2]) == 4
    assert candidate(7, 8, [4, 6, 2, 5, 3], [3, 5, 2, 4, 7]) == 36
    assert candidate(3, 5, [2], [4, 2]) == 4
    assert candidate(4, 3, [2], [2]) == 4
    assert candidate(9, 3, [3], [2]) == 4
    assert candidate(6, 7, [4, 2, 3, 5], [3, 5, 6]) == 25
    assert candidate(8, 4, [6, 3, 2, 4, 7, 5], [2, 3]) == 9
    assert candidate(4, 4, [2], [2]) == 9
    assert candidate(3, 6, [2], [4, 3, 5]) == 4
    assert candidate(8, 6, [5], [4, 2, 5]) == 16
    assert candidate(9, 9, [5, 4, 2], [8, 4, 3, 5, 6]) == 64
    assert candidate(5, 9, [3, 2, 4], [7, 6, 5]) == 16
    assert candidate(5, 5, [4, 3, 2], [3, 4, 2]) == 16
    assert candidate(7, 4, [5, 2, 4], [3]) == 9
    assert candidate(8, 5, [4, 6, 2, 3], [4]) == 16
    assert candidate(9, 5, [6], [3]) == -1
    assert candidate(9, 4, [2, 8, 3, 7, 4, 6, 5], [2, 3]) == 9
    assert candidate(5, 8, [2, 3, 4], [3, 5, 6, 4]) == 16
    assert candidate(9, 6, [7, 3, 4, 5, 8, 2], [5, 3, 2, 4]) == 25
    assert candidate(5, 4, [4], [2]) == 9
    assert candidate(9, 6, [2, 5], [5, 2]) == 16
    assert candidate(6, 9, [4, 5, 2], [5, 7, 8, 2, 3, 6]) == 25
    assert candidate(4, 5, [2], [2]) == 9
    assert candidate(9, 6, [2, 4], [5, 3]) == 25
    assert candidate(4, 7, [2], [4, 3, 6, 2, 5]) == 9
    assert candidate(8, 3, [3, 2, 5], [2]) == 4
    assert candidate(6, 8, [4, 2, 3, 5], [7, 4, 5, 6]) == 25
    assert candidate(3, 5, [2], [3]) == 4
    assert candidate(8, 8, [2, 5, 6], [3, 7, 4, 2, 5]) == 49
    assert candidate(8, 7, [3, 4, 7], [2, 6, 3, 4]) == 36
    assert candidate(7, 4, [3, 6, 5], [2]) == 9
    assert candidate(5, 6, [2, 3], [3, 2, 5]) == 16
    assert candidate(6, 7, [5], [4, 2, 5, 6]) == 25
    assert candidate(8, 8, [4, 5, 2, 7], [5, 3, 4, 2, 7, 6]) == 49
    assert candidate(7, 9, [6, 3, 4], [8, 6, 2]) == 36
    assert candidate(7, 4, [3, 4, 6], [3, 2]) == 9
    assert candidate(6, 8, [5, 4, 3], [5, 7, 3, 2, 6, 4]) == 25
    assert candidate(8, 9, [2, 3, 4, 7, 6, 5], [3, 7, 8]) == 49
    assert candidate(3, 4, [2], [2, 3]) == 4
    assert candidate(9, 9, [8, 5, 6, 2, 7], [8, 6, 4, 2]) == 64
    assert candidate(7, 6, [4, 5], [5, 3]) == 16
    assert candidate(5, 4, [2], [3]) == 9
    assert candidate(5, 5, [3], [3, 4, 2]) == 16
    assert candidate(9, 7, [3], [3, 2, 5, 4]) == 36
    assert candidate(8, 6, [4], [5, 2, 3]) == 16
    assert candidate(6, 9, [3, 4, 2], [3, 2, 8]) == 25
    assert candidate(7, 6, [3, 6, 5, 2, 4], [2, 3, 5, 4]) == 25
    assert candidate(7, 3, [5, 3, 6, 4], [2]) == 4
    assert candidate(4, 7, [3], [2]) == 1
    assert candidate(3, 7, [2], [4, 3, 2, 6, 5]) == 4
    assert candidate(5, 9, [2, 4], [4, 7]) == 9
    assert candidate(5, 9, [4, 2], [8, 7, 3, 2, 6, 4]) == 16
    assert candidate(3, 8, [2], [3, 7, 2, 5, 4]) == 4
    assert candidate(4, 7, [2, 3], [4, 2]) == 9
    assert candidate(8, 9, [7, 6, 3, 2, 5, 4], [3, 2, 6]) == 49
    assert candidate(7, 8, [6], [5]) == -1
    assert candidate(9, 7, [2, 7, 8, 5], [6, 3]) == 36
    assert candidate(9, 9, [4, 7, 2, 5, 8, 6], [7, 6, 4, 5, 8, 2, 3]) == 64
    assert candidate(7, 7, [6, 3, 2, 5], [6, 3]) == 36
    assert candidate(7, 7, [5], [2, 3, 6]) == 36
    assert candidate(4, 9, [3], [4, 3, 7, 6, 8, 5, 2]) == 9
    assert candidate(4, 5, [2, 3], [3, 4]) == 9
    assert candidate(3, 7, [2], [3, 6]) == 4
    assert candidate(4, 9, [3, 2], [4, 6]) == 9
    assert candidate(9, 9, [5], [6, 5, 2, 7, 3, 8]) == 64
    assert candidate(5, 6, [3, 4, 2], [5, 3, 2]) == 16
    assert candidate(5, 6, [3, 2], [5]) == 16
    assert candidate(5, 5, [3, 4], [3, 2, 4]) == 16
    assert candidate(9, 5, [7, 5, 8], [4, 2, 3]) == 16
    assert candidate(3, 6, [2], [2, 5, 4]) == 4
    assert candidate(5, 9, [4, 2, 3], [8, 3, 5, 6, 4, 2]) == 16
    assert candidate(4, 7, [3, 2], [5]) == 4
    assert candidate(6, 9, [4, 2], [3, 4, 7, 2]) == 25
    assert candidate(6, 5, [4], [3, 2]) == 9
    assert candidate(8, 5, [6, 7, 4, 5, 2], [4]) == 16


def test_check():
    check(maximizeSquareArea)


### Metadata below ###
# question_id = 3250
# question_title = Maximum Square Area by Removing Fences From a Field
# question_title_slug = maximum-square-area-by-removing-fences-from-a-field
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 67
# question_dislikes = 68