from typing import List

def areaOfMaxDiagonal(dimensions: List[List[int]]) -> int:
    """
    You are given a 2D 0-indexed integer array dimensions.
    For all indices i, 0 <= i < dimensions.length, dimensions[i][0] represents the length and dimensions[i][1] represents the width of the rectangle i.
    Return the area of the rectangle having the longest diagonal. If there are multiple rectangles with the longest diagonal, return the area of the rectangle having the maximum area.
    
    Example 1:
    
    Input: dimensions = [[9,3],[8,6]]
    Output: 48
    Explanation: 
    For index = 0, length = 9 and width = 3. Diagonal length = sqrt(9 * 9 + 3 * 3) = sqrt(90) ≈ 9.487.
    For index = 1, length = 8 and width = 6. Diagonal length = sqrt(8 * 8 + 6 * 6) = sqrt(100) = 10.
    So, the rectangle at index 1 has a greater diagonal length therefore we return area = 8 * 6 = 48.
    
    Example 2:
    
    Input: dimensions = [[3,4],[4,3]]
    Output: 12
    Explanation: Length of diagonal is the same for both which is 5, so maximum area = 12.
    
    
    Constraints:
    
    1 <= dimensions.length <= 100
    dimensions[i].length == 2
    1 <= dimensions[i][0], dimensions[i][1] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[9, 3], [8, 6]]) == 48
    assert candidate([[3, 4], [4, 3]]) == 12
    assert candidate([[4, 10], [4, 9], [9, 3], [10, 8]]) == 80
    assert candidate([[2, 6], [5, 1], [3, 10], [8, 4]]) == 30
    assert candidate([[3, 7], [2, 10], [3, 4], [9, 9], [5, 10]]) == 81
    assert candidate([[10, 4]]) == 40
    assert candidate([[9, 9], [1, 8], [10, 5], [2, 8], [6, 3], [7, 1]]) == 81
    assert candidate([[10, 3], [5, 9], [8, 3]]) == 30
    assert candidate([[2, 7], [3, 2], [3, 3], [10, 4], [5, 3], [8, 10], [8, 8], [4, 7]]) == 80
    assert candidate([[1, 10], [3, 10], [4, 4], [2, 6], [6, 3], [6, 4], [9, 1], [6, 1], [2, 3]]) == 30
    assert candidate([[4, 7], [10, 10], [3, 7], [9, 1], [5, 7], [3, 9], [10, 4], [4, 8]]) == 100
    assert candidate([[1, 1], [6, 8], [6, 9], [7, 2], [6, 8], [1, 3], [3, 1], [1, 9]]) == 54
    assert candidate([[6, 6], [1, 3], [8, 10], [10, 1], [3, 10], [7, 7], [10, 8]]) == 80
    assert candidate([[6, 5], [8, 6], [2, 10], [8, 1], [9, 2], [3, 5], [3, 5]]) == 20
    assert candidate([[5, 1], [4, 9], [9, 1], [5, 8], [2, 9], [3, 2], [10, 10], [5, 2]]) == 100
    assert candidate([[8, 3], [9, 10], [7, 7], [6, 5], [6, 9], [9, 10], [5, 10]]) == 90
    assert candidate([[6, 10], [8, 6], [10, 1], [7, 10], [10, 10], [9, 5]]) == 100
    assert candidate([[9, 5], [9, 2], [2, 2], [8, 9], [5, 7], [8, 10], [3, 5]]) == 80
    assert candidate([[3, 9], [9, 5]]) == 45
    assert candidate([[10, 10], [5, 5], [3, 2], [2, 6], [3, 1], [10, 7], [4, 8], [7, 9], [9, 9], [1, 2]]) == 100
    assert candidate([[2, 3], [3, 5], [2, 1]]) == 15
    assert candidate([[4, 4], [7, 7]]) == 49
    assert candidate([[7, 5], [9, 6], [9, 4], [5, 7], [2, 6], [10, 3], [9, 9], [9, 4], [8, 2]]) == 81
    assert candidate([[5, 1], [9, 1], [7, 1], [7, 1], [3, 1], [10, 7], [9, 1], [7, 2], [4, 6], [3, 6]]) == 70
    assert candidate([[8, 4], [7, 4], [1, 5], [7, 8], [5, 6], [5, 2]]) == 56
    assert candidate([[5, 10], [3, 7], [8, 6], [8, 6], [5, 9], [10, 5], [7, 8], [1, 9], [2, 5], [6, 6]]) == 50
    assert candidate([[9, 4]]) == 36
    assert candidate([[7, 6], [2, 8], [9, 6], [1, 10], [5, 1]]) == 54
    assert candidate([[4, 2], [1, 6], [2, 1], [4, 10], [10, 1], [7, 5], [8, 3]]) == 40
    assert candidate([[1, 4]]) == 4
    assert candidate([[9, 4], [6, 7]]) == 36
    assert candidate([[7, 5]]) == 35
    assert candidate([[1, 9], [9, 7], [8, 4], [6, 6], [7, 8], [4, 6], [7, 4], [9, 9], [9, 8], [8, 8]]) == 81
    assert candidate([[3, 8], [6, 3], [5, 2], [3, 7], [1, 3], [9, 8], [4, 2], [3, 8]]) == 72
    assert candidate([[5, 4], [2, 4], [8, 5], [8, 4], [1, 2], [6, 4]]) == 40
    assert candidate([[7, 2], [4, 6]]) == 14
    assert candidate([[8, 10], [5, 2], [4, 9]]) == 80
    assert candidate([[9, 2], [5, 6], [4, 2]]) == 18
    assert candidate([[3, 8], [2, 9], [7, 7], [1, 5], [1, 1]]) == 49
    assert candidate([[6, 2], [8, 2], [6, 8], [7, 6], [1, 2], [6, 8], [10, 9], [2, 8]]) == 90
    assert candidate([[3, 8], [4, 1], [5, 2], [2, 6], [4, 9], [10, 6], [6, 10], [3, 4], [6, 6], [4, 3]]) == 60
    assert candidate([[5, 5], [3, 8], [2, 8]]) == 24
    assert candidate([[8, 1], [5, 8], [3, 8]]) == 40
    assert candidate([[2, 8], [8, 1], [7, 10], [5, 7], [2, 4], [3, 10], [2, 10], [7, 10], [5, 6]]) == 70
    assert candidate([[3, 10], [1, 3], [10, 5], [5, 9]]) == 50
    assert candidate([[10, 6], [4, 3]]) == 60
    assert candidate([[7, 8], [8, 6], [10, 10], [6, 7], [7, 10]]) == 100
    assert candidate([[7, 2], [7, 3], [4, 6], [4, 4], [7, 8], [2, 4]]) == 56
    assert candidate([[4, 7], [3, 1], [1, 10], [4, 2], [4, 10], [8, 8]]) == 64
    assert candidate([[1, 8], [4, 3], [7, 7], [10, 6], [5, 5], [1, 3], [9, 1], [8, 3], [3, 2], [5, 8]]) == 60
    assert candidate([[6, 7], [1, 7], [5, 10], [10, 1], [8, 3]]) == 50
    assert candidate([[3, 5], [2, 7], [4, 4], [4, 9], [7, 6], [2, 4], [5, 2]]) == 36
    assert candidate([[8, 8], [6, 10], [6, 6]]) == 60
    assert candidate([[10, 2], [3, 3], [5, 9], [3, 7]]) == 45
    assert candidate([[4, 3], [4, 1], [8, 9], [10, 1], [2, 7], [7, 7], [9, 3], [8, 6], [1, 5], [8, 3]]) == 72
    assert candidate([[6, 8], [2, 3], [4, 9], [1, 1]]) == 48
    assert candidate([[1, 6], [2, 10], [1, 5], [9, 3], [9, 1], [2, 2]]) == 20
    assert candidate([[6, 5], [7, 10], [1, 2], [10, 3], [4, 2], [4, 8], [5, 10], [5, 9]]) == 70
    assert candidate([[1, 2], [1, 2], [2, 4], [9, 9], [3, 8], [3, 9], [2, 3]]) == 81
    assert candidate([[4, 4], [6, 1], [1, 10], [10, 7], [10, 5]]) == 70
    assert candidate([[3, 2], [2, 8], [10, 9], [9, 8], [2, 2], [9, 1]]) == 90
    assert candidate([[4, 10], [9, 6], [4, 10], [6, 7], [2, 3], [7, 9], [9, 2], [1, 9]]) == 63
    assert candidate([[7, 4], [10, 2], [10, 8], [4, 9], [4, 9], [10, 3], [5, 4], [4, 5], [10, 6], [3, 9]]) == 80
    assert candidate([[2, 5], [7, 4], [5, 3], [2, 4], [3, 10], [3, 5], [4, 5], [4, 4], [6, 5]]) == 30
    assert candidate([[3, 2], [7, 10], [8, 10], [7, 4], [6, 1]]) == 80
    assert candidate([[3, 8], [4, 5], [3, 8]]) == 24
    assert candidate([[6, 8], [9, 9], [1, 7]]) == 81
    assert candidate([[8, 1], [7, 5]]) == 35
    assert candidate([[10, 6], [5, 1], [9, 5], [5, 7], [5, 8], [6, 5], [8, 3]]) == 60
    assert candidate([[8, 6]]) == 48
    assert candidate([[5, 2], [5, 9], [9, 5], [5, 5], [8, 6]]) == 45
    assert candidate([[7, 8], [9, 9], [3, 5], [8, 1], [1, 3], [8, 2], [8, 6]]) == 81
    assert candidate([[3, 10], [6, 8], [4, 5], [8, 1], [7, 2], [9, 8], [3, 7], [3, 3], [9, 10]]) == 90
    assert candidate([[1, 1], [8, 7], [4, 6], [5, 2], [5, 9]]) == 56
    assert candidate([[6, 2], [8, 4], [8, 6], [2, 10], [6, 1], [9, 8], [10, 8], [10, 10], [5, 9]]) == 100
    assert candidate([[10, 2], [9, 7], [4, 2], [8, 6], [9, 10], [10, 7], [7, 5], [5, 10], [5, 9]]) == 90
    assert candidate([[1, 4], [7, 2], [2, 6], [7, 7]]) == 49
    assert candidate([[2, 5], [10, 10], [4, 4]]) == 100
    assert candidate([[2, 10], [10, 4], [3, 9], [6, 10], [2, 10], [10, 1], [4, 1]]) == 60
    assert candidate([[3, 6], [5, 4], [9, 5], [6, 2], [4, 4], [7, 2], [6, 7]]) == 45
    assert candidate([[1, 1], [1, 7]]) == 7
    assert candidate([[1, 2], [8, 8]]) == 64
    assert candidate([[3, 7]]) == 21
    assert candidate([[6, 7], [1, 5], [10, 9], [10, 2]]) == 90
    assert candidate([[7, 8]]) == 56
    assert candidate([[2, 6], [10, 3], [10, 5], [1, 9], [5, 2], [9, 10], [7, 2], [7, 7], [1, 10]]) == 90
    assert candidate([[3, 4], [8, 2], [9, 3], [2, 9], [6, 5], [10, 5], [4, 1], [8, 7], [3, 9]]) == 50
    assert candidate([[7, 6], [6, 8], [5, 7], [1, 1], [4, 5], [6, 10], [9, 3], [4, 4]]) == 60
    assert candidate([[1, 3], [2, 4], [4, 9], [10, 9], [3, 9], [7, 5], [2, 3], [10, 7], [2, 3], [1, 5]]) == 90
    assert candidate([[1, 8], [6, 10], [4, 8], [3, 8], [4, 3]]) == 60
    assert candidate([[6, 5], [3, 10], [8, 7], [10, 10], [2, 8], [5, 8], [10, 8], [9, 10], [2, 8], [8, 9]]) == 100
    assert candidate([[1, 6], [8, 3], [6, 1], [2, 10], [2, 5], [3, 8]]) == 20
    assert candidate([[7, 2], [3, 8], [10, 10], [7, 1], [6, 8], [6, 7], [10, 6], [4, 6], [5, 7], [10, 4]]) == 100
    assert candidate([[9, 6]]) == 54
    assert candidate([[8, 2], [7, 6], [1, 4], [1, 6], [4, 8], [10, 9], [9, 4], [1, 5]]) == 90
    assert candidate([[7, 3], [2, 5], [7, 1], [10, 7], [7, 4], [8, 1]]) == 70
    assert candidate([[9, 2]]) == 18
    assert candidate([[9, 2], [7, 2], [2, 7]]) == 18
    assert candidate([[2, 8], [10, 6], [8, 10], [9, 9]]) == 80
    assert candidate([[3, 3]]) == 9


def test_check():
    check(areaOfMaxDiagonal)


### Metadata below ###
# question_id = 3251
# question_title = Maximum Area of Longest Diagonal Rectangle
# question_title_slug = maximum-area-of-longest-diagonal-rectangle
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 38
# question_dislikes = 7