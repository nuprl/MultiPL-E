from typing import List

def findMissingAndRepeatedValues(grid: List[List[int]]) -> List[int]:
    """
    You are given a 0-indexed 2D integer matrix grid of size n * n with values in the range [1, n2]. Each integer appears exactly once except a which appears twice and b which is missing. The task is to find the repeating and missing numbers a and b.
    Return a 0-indexed integer array ans of size 2 where ans[0] equals to a and ans[1] equals to b.
    
    Example 1:
    
    Input: grid = [[1,3],[2,2]]
    Output: [2,4]
    Explanation: Number 2 is repeated and number 4 is missing so the answer is [2,4].
    
    Example 2:
    
    Input: grid = [[9,1,7],[8,9,2],[3,4,6]]
    Output: [9,5]
    Explanation: Number 9 is repeated and number 5 is missing so the answer is [9,5].
    
    
    Constraints:
    
    2 <= n == grid.length == grid[i].length <= 50
    1 <= grid[i][j] <= n * n
    For all x that 1 <= x <= n * n there is exactly one x that is not equal to any of the grid members.
    For all x that 1 <= x <= n * n there is exactly one x that is equal to exactly two of the grid members.
    For all x that 1 <= x <= n * n except two of them there is exatly one pair of i, j that 0 <= i, j <= n - 1 and grid[i][j] == x.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 3], [2, 2]]) == [2,4]
    assert candidate([[9, 1, 7], [8, 9, 2], [3, 4, 6]]) == [9,5]
    assert candidate([[1, 1], [3, 2]]) == [1,4]
    assert candidate([[1, 1], [3, 4]]) == [1,2]
    assert candidate([[1, 2], [1, 3]]) == [1,4]
    assert candidate([[1, 2], [1, 4]]) == [1,3]
    assert candidate([[1, 2], [3, 3]]) == [3,4]
    assert candidate([[1, 2], [4, 1]]) == [1,3]
    assert candidate([[1, 2], [4, 2]]) == [2,3]
    assert candidate([[1, 2], [4, 4]]) == [4,3]
    assert candidate([[1, 4], [1, 3]]) == [1,2]
    assert candidate([[1, 4], [2, 1]]) == [1,3]
    assert candidate([[1, 4], [3, 1]]) == [1,2]
    assert candidate([[1, 4], [3, 4]]) == [4,2]
    assert candidate([[1, 4], [4, 2]]) == [4,3]
    assert candidate([[2, 1], [4, 2]]) == [2,3]
    assert candidate([[2, 1], [4, 4]]) == [4,3]
    assert candidate([[2, 2], [3, 4]]) == [2,1]
    assert candidate([[2, 2], [4, 1]]) == [2,3]
    assert candidate([[2, 3], [2, 1]]) == [2,4]
    assert candidate([[2, 3], [4, 3]]) == [3,1]
    assert candidate([[2, 4], [3, 2]]) == [2,1]
    assert candidate([[2, 4], [3, 4]]) == [4,1]
    assert candidate([[2, 4], [4, 1]]) == [4,3]
    assert candidate([[3, 1], [3, 2]]) == [3,4]
    assert candidate([[3, 1], [3, 4]]) == [3,2]
    assert candidate([[3, 1], [4, 4]]) == [4,2]
    assert candidate([[3, 3], [1, 4]]) == [3,2]
    assert candidate([[3, 4], [2, 2]]) == [2,1]
    assert candidate([[3, 4], [2, 4]]) == [4,1]
    assert candidate([[3, 4], [3, 1]]) == [3,2]
    assert candidate([[3, 4], [4, 1]]) == [4,2]
    assert candidate([[4, 1], [1, 2]]) == [1,3]
    assert candidate([[4, 1], [2, 2]]) == [2,3]
    assert candidate([[4, 1], [2, 4]]) == [4,3]
    assert candidate([[4, 1], [3, 1]]) == [1,2]
    assert candidate([[4, 1], [3, 3]]) == [3,2]
    assert candidate([[4, 1], [4, 2]]) == [4,3]
    assert candidate([[4, 2], [2, 3]]) == [2,1]
    assert candidate([[4, 2], [4, 1]]) == [4,3]
    assert candidate([[4, 3], [1, 1]]) == [1,2]
    assert candidate([[4, 3], [2, 2]]) == [2,1]
    assert candidate([[4, 3], [2, 4]]) == [4,1]
    assert candidate([[4, 3], [3, 1]]) == [3,2]
    assert candidate([[4, 4], [2, 3]]) == [4,1]
    assert candidate([[1, 3, 4], [9, 7, 5], [8, 2, 3]]) == [3,6]
    assert candidate([[1, 5, 2], [8, 4, 3], [7, 8, 6]]) == [8,9]
    assert candidate([[1, 5, 8], [2, 7, 3], [6, 1, 4]]) == [1,9]
    assert candidate([[1, 6, 1], [4, 3, 7], [5, 2, 8]]) == [1,9]
    assert candidate([[1, 6, 4], [9, 7, 5], [7, 8, 2]]) == [7,3]
    assert candidate([[1, 6, 7], [3, 6, 8], [9, 5, 4]]) == [6,2]
    assert candidate([[1, 7, 4], [8, 6, 2], [8, 3, 5]]) == [8,9]
    assert candidate([[1, 7, 8], [4, 5, 6], [3, 9, 9]]) == [9,2]
    assert candidate([[1, 8, 4], [9, 2, 7], [6, 3, 8]]) == [8,5]
    assert candidate([[1, 8, 5], [4, 3, 2], [7, 9, 4]]) == [4,6]
    assert candidate([[1, 9, 3], [2, 7, 8], [2, 4, 5]]) == [2,6]
    assert candidate([[1, 9, 7], [8, 4, 2], [6, 3, 9]]) == [9,5]
    assert candidate([[2, 1, 3], [2, 9, 4], [6, 8, 5]]) == [2,7]
    assert candidate([[2, 2, 4], [7, 5, 3], [1, 6, 8]]) == [2,9]
    assert candidate([[2, 3, 9], [5, 6, 4], [2, 8, 7]]) == [2,1]
    assert candidate([[2, 4, 6], [4, 8, 9], [7, 3, 5]]) == [4,1]
    assert candidate([[2, 5, 5], [4, 8, 7], [9, 3, 6]]) == [5,1]
    assert candidate([[2, 6, 4], [6, 9, 5], [3, 7, 8]]) == [6,1]
    assert candidate([[2, 6, 9], [1, 7, 9], [4, 8, 5]]) == [9,3]
    assert candidate([[2, 7, 1], [8, 6, 2], [9, 3, 4]]) == [2,5]
    assert candidate([[2, 7, 5], [7, 6, 4], [1, 3, 9]]) == [7,8]
    assert candidate([[2, 7, 9], [6, 8, 1], [4, 1, 5]]) == [1,3]
    assert candidate([[2, 9, 7], [8, 5, 1], [6, 7, 4]]) == [7,3]
    assert candidate([[3, 4, 5], [8, 2, 4], [6, 1, 7]]) == [4,9]
    assert candidate([[3, 5, 7], [8, 6, 9], [1, 5, 2]]) == [5,4]
    assert candidate([[3, 6, 1], [5, 9, 2], [1, 7, 8]]) == [1,4]
    assert candidate([[3, 9, 4], [3, 6, 1], [5, 7, 2]]) == [3,8]
    assert candidate([[4, 2, 6], [3, 5, 8], [3, 1, 9]]) == [3,7]
    assert candidate([[4, 3, 2], [6, 9, 9], [8, 7, 5]]) == [9,1]
    assert candidate([[4, 6, 5], [3, 5, 7], [2, 8, 9]]) == [5,1]
    assert candidate([[4, 8, 7], [4, 6, 9], [3, 2, 1]]) == [4,5]
    assert candidate([[4, 9, 6], [2, 5, 8], [3, 7, 7]]) == [7,1]
    assert candidate([[5, 3, 6], [1, 4, 2], [9, 8, 2]]) == [2,7]
    assert candidate([[5, 6, 9], [3, 7, 8], [2, 2, 4]]) == [2,1]
    assert candidate([[5, 7, 8], [1, 3, 2], [7, 6, 9]]) == [7,4]
    assert candidate([[6, 1, 3], [2, 4, 2], [8, 9, 7]]) == [2,5]
    assert candidate([[6, 4, 2], [3, 7, 8], [5, 6, 9]]) == [6,1]
    assert candidate([[6, 4, 5], [7, 9, 3], [1, 2, 9]]) == [9,8]
    assert candidate([[6, 4, 8], [8, 1, 2], [9, 3, 7]]) == [8,5]
    assert candidate([[6, 9, 3], [8, 9, 7], [5, 4, 2]]) == [9,1]
    assert candidate([[7, 2, 1], [6, 5, 3], [2, 9, 4]]) == [2,8]
    assert candidate([[7, 2, 4], [5, 8, 7], [9, 3, 1]]) == [7,6]
    assert candidate([[7, 3, 1], [8, 9, 2], [4, 5, 2]]) == [2,6]
    assert candidate([[7, 4, 2], [9, 1, 9], [8, 3, 5]]) == [9,6]
    assert candidate([[7, 4, 8], [1, 1, 3], [2, 6, 9]]) == [1,5]
    assert candidate([[7, 5, 3], [4, 6, 3], [9, 2, 8]]) == [3,1]
    assert candidate([[7, 5, 7], [3, 1, 6], [8, 9, 4]]) == [7,2]
    assert candidate([[8, 2, 6], [1, 8, 9], [4, 5, 3]]) == [8,7]
    assert candidate([[8, 2, 7], [3, 5, 1], [9, 6, 3]]) == [3,4]
    assert candidate([[8, 6, 3], [1, 9, 5], [5, 4, 7]]) == [5,2]
    assert candidate([[8, 6, 5], [3, 9, 1], [8, 7, 4]]) == [8,2]
    assert candidate([[8, 9, 6], [6, 1, 3], [2, 7, 5]]) == [6,4]
    assert candidate([[8, 9, 6], [7, 4, 2], [7, 1, 5]]) == [7,3]
    assert candidate([[9, 2, 3], [7, 6, 4], [5, 8, 8]]) == [8,1]
    assert candidate([[9, 2, 7], [3, 8, 7], [1, 5, 4]]) == [7,6]


def test_check():
    check(findMissingAndRepeatedValues)


### Metadata below ###
# question_id = 3227
# question_title = Find Missing and Repeated Values
# question_title_slug = find-missing-and-repeated-values
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 90
# question_dislikes = 3