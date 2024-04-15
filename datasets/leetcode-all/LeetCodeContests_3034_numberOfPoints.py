from typing import List

def numberOfPoints(nums: List[List[int]]) -> int:
    """
    You are given a 0-indexed 2D integer array nums representing the coordinates of the cars parking on a number line. For any index i, nums[i] = [starti, endi] where starti is the starting point of the ith car and endi is the ending point of the ith car.
    
    Return the number of integer points on the line that are covered with any part of a car.
    
    Example 1:
    
    Input: nums = [[3,6],[1,5],[4,7]]
    Output: 7
    Explanation: All the points from 1 to 7 intersect at least one car, therefore the answer would be 7.
    
    Example 2:
    
    Input: nums = [[1,3],[5,8]]
    Output: 7
    Explanation: Points intersecting at least one car are 1, 2, 3, 5, 6, 7, 8. There are a total of 7 points, therefore the answer would be 7.
    
    
    Constraints:
    
     * 1 <= nums.length <= 100
     * nums[i].length == 2
     * 1 <= starti <= endi <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[3, 6], [1, 5], [4, 7]]) == 7
    assert candidate([[1, 3], [5, 8]]) == 7
    assert candidate([[4, 4], [9, 10], [9, 10], [3, 8]]) == 8
    assert candidate([[2, 5], [3, 8], [1, 6], [4, 10]]) == 10
    assert candidate([[2, 3], [3, 9], [5, 7], [4, 10], [9, 10]]) == 9
    assert candidate([[4, 10]]) == 7
    assert candidate([[1, 9], [2, 10], [6, 7], [8, 9], [5, 8], [1, 3]]) == 10
    assert candidate([[5, 10], [3, 8], [3, 9]]) == 8
    assert candidate([[2, 3], [3, 10], [5, 8], [4, 8], [2, 7], [3, 4], [3, 10], [7, 8]]) == 9
    assert candidate([[1, 3], [2, 4], [6, 6], [6, 9], [2, 10], [4, 10], [3, 6], [1, 4], [1, 3]]) == 10
    assert candidate([[4, 10], [3, 9], [3, 5], [4, 10], [7, 10], [1, 7], [7, 9], [4, 8]]) == 10
    assert candidate([[1, 6], [6, 7], [1, 6], [1, 3], [1, 8], [2, 9], [3, 8], [1, 9]]) == 9
    assert candidate([[1, 6], [8, 10], [3, 7], [6, 10], [3, 10], [1, 10], [7, 8]]) == 10
    assert candidate([[6, 8], [2, 8], [3, 9], [3, 5], [6, 10], [1, 2], [5, 5]]) == 10
    assert candidate([[4, 5], [5, 9], [2, 3], [5, 10], [1, 9], [1, 8], [2, 9], [2, 10]]) == 10
    assert candidate([[8, 9], [6, 7], [6, 9], [3, 5], [7, 10], [5, 9], [10, 10]]) == 8
    assert candidate([[6, 8], [7, 10], [9, 10], [6, 10], [1, 10], [5, 10]]) == 10
    assert candidate([[9, 9], [2, 8], [5, 8], [3, 5], [2, 2], [7, 9], [5, 10]]) == 9
    assert candidate([[3, 9], [5, 9]]) == 7
    assert candidate([[5, 10], [2, 3], [3, 10], [4, 7], [1, 9], [5, 10], [2, 6], [1, 7], [8, 9], [2, 9]]) == 10
    assert candidate([[2, 3], [2, 3], [1, 5]]) == 5
    assert candidate([[4, 7], [4, 7]]) == 4
    assert candidate([[7, 9], [5, 9], [2, 10], [9, 9], [5, 8], [4, 6], [6, 7], [3, 9], [2, 4]]) == 9
    assert candidate([[5, 9], [7, 7], [3, 10], [7, 9], [3, 4], [1, 1], [1, 1], [1, 7], [1, 2], [6, 6]]) == 10
    assert candidate([[7, 8], [1, 7], [5, 5], [4, 4], [5, 8], [2, 6]]) == 8
    assert candidate([[3, 5], [8, 8], [5, 10], [1, 7], [2, 6], [7, 10], [6, 6], [5, 9], [8, 9], [5, 6]]) == 10
    assert candidate([[4, 9]]) == 6
    assert candidate([[2, 7], [1, 9], [5, 6], [6, 8], [1, 10]]) == 10
    assert candidate([[1, 4], [2, 4], [7, 10], [2, 8], [1, 6], [1, 10], [3, 5]]) == 10
    assert candidate([[1, 4]]) == 4
    assert candidate([[6, 9], [4, 7]]) == 6
    assert candidate([[5, 7]]) == 3
    assert candidate([[1, 9], [6, 8], [4, 7], [7, 9], [8, 9], [7, 9], [4, 6], [6, 8], [4, 9], [8, 8]]) == 9
    assert candidate([[3, 6], [3, 5], [1, 9], [3, 4], [3, 8], [2, 7], [3, 8], [2, 8]]) == 9
    assert candidate([[2, 5], [8, 8], [1, 6], [4, 4], [4, 5], [2, 4]]) == 7
    assert candidate([[4, 7], [2, 6]]) == 6
    assert candidate([[5, 8], [4, 10], [2, 9]]) == 9
    assert candidate([[5, 9], [2, 4], [2, 6]]) == 8
    assert candidate([[2, 3], [1, 7], [1, 8], [7, 9], [1, 5]]) == 9
    assert candidate([[6, 8], [6, 7], [1, 6], [2, 10], [2, 2], [6, 8], [2, 8], [8, 9]]) == 10
    assert candidate([[3, 4], [2, 5], [4, 10], [3, 6], [4, 6], [1, 8], [2, 6], [6, 9], [4, 10], [3, 6]]) == 10
    assert candidate([[3, 5], [2, 5], [8, 8]]) == 5
    assert candidate([[5, 8], [1, 3], [8, 8]]) == 7
    assert candidate([[2, 8], [5, 7], [2, 3], [2, 7], [5, 8], [1, 10], [4, 7], [10, 10], [6, 10]]) == 10
    assert candidate([[1, 3], [5, 10], [3, 10], [5, 9]]) == 10
    assert candidate([[4, 10], [3, 6]]) == 8
    assert candidate([[7, 8], [6, 10], [7, 8], [6, 10], [7, 10]]) == 5
    assert candidate([[7, 7], [4, 4], [2, 7], [2, 3], [4, 6], [4, 8]]) == 7
    assert candidate([[3, 4], [1, 4], [4, 8], [1, 7], [2, 10], [8, 10]]) == 10
    assert candidate([[1, 4], [7, 10], [1, 5], [8, 9], [3, 5], [3, 8], [6, 7], [3, 5], [1, 3], [2, 8]]) == 10
    assert candidate([[1, 6], [5, 10], [7, 8], [7, 10], [1, 3]]) == 10
    assert candidate([[2, 3], [4, 4], [2, 7], [5, 5], [4, 7], [6, 9], [2, 4]]) == 8
    assert candidate([[6, 8], [6, 8], [6, 10]]) == 5
    assert candidate([[3, 10], [3, 5], [2, 3], [7, 9]]) == 9
    assert candidate([[4, 4], [8, 10], [2, 7], [8, 9], [1, 8], [1, 3], [1, 9], [7, 7], [3, 6], [3, 5]]) == 10
    assert candidate([[2, 6], [1, 4], [3, 8], [1, 9]]) == 9
    assert candidate([[1, 2], [1, 9], [2, 9], [6, 10], [3, 5], [1, 2]]) == 10
    assert candidate([[6, 7], [1, 10], [4, 4], [5, 5], [5, 10], [2, 3], [2, 8], [9, 10]]) == 10
    assert candidate([[1, 1], [2, 9], [3, 3], [2, 2], [2, 4], [8, 9], [3, 9]]) == 9
    assert candidate([[4, 6], [1, 10], [4, 10], [1, 10], [5, 7]]) == 10
    assert candidate([[2, 3], [9, 10], [2, 9], [2, 8], [8, 9], [1, 2]]) == 10
    assert candidate([[4, 9], [4, 6], [2, 7], [1, 9], [6, 10], [7, 10], [3, 9], [2, 9]]) == 10
    assert candidate([[7, 10], [4, 10], [4, 10], [4, 5], [3, 10], [2, 4], [8, 9], [3, 9], [4, 5], [6, 9]]) == 9
    assert candidate([[2, 7], [2, 5], [3, 3], [4, 4], [5, 6], [3, 4], [4, 10], [5, 5], [4, 5]]) == 9
    assert candidate([[3, 7], [7, 8], [2, 6], [10, 10], [1, 4]]) == 9
    assert candidate([[3, 4], [3, 8], [5, 8]]) == 6
    assert candidate([[6, 9], [1, 8], [7, 9]]) == 9
    assert candidate([[7, 8], [1, 5]]) == 7
    assert candidate([[5, 10], [5, 9], [5, 6], [6, 8], [1, 5], [7, 8], [3, 5]]) == 10
    assert candidate([[6, 8]]) == 3
    assert candidate([[5, 5], [5, 9], [2, 8], [5, 9], [5, 6]]) == 8
    assert candidate([[7, 9], [3, 8], [1, 8], [8, 8], [5, 9], [1, 3], [2, 6]]) == 9
    assert candidate([[3, 6], [4, 8], [7, 9], [3, 3], [9, 10], [5, 8], [1, 2], [7, 8], [3, 10]]) == 10
    assert candidate([[1, 8], [4, 5], [1, 5], [6, 7], [2, 9]]) == 9
    assert candidate([[6, 8], [2, 8], [6, 9], [10, 10], [2, 5], [4, 6], [1, 10], [8, 8], [9, 10]]) == 10
    assert candidate([[9, 10], [4, 8], [9, 10], [5, 7], [2, 5], [2, 7], [6, 10], [5, 7], [9, 10]]) == 9
    assert candidate([[1, 7], [2, 7], [2, 4], [6, 7]]) == 7
    assert candidate([[2, 10], [4, 5], [4, 10]]) == 9
    assert candidate([[2, 10], [3, 6], [2, 10], [4, 10], [4, 9], [10, 10], [1, 1]]) == 10
    assert candidate([[3, 5], [6, 9], [4, 7], [6, 6], [4, 5], [2, 4], [2, 7]]) == 8
    assert candidate([[1, 1], [1, 7]]) == 7
    assert candidate([[1, 8], [2, 8]]) == 8
    assert candidate([[3, 7]]) == 5
    assert candidate([[1, 6], [10, 10], [5, 7], [2, 9]]) == 10
    assert candidate([[7, 8]]) == 2
    assert candidate([[2, 10], [1, 10], [5, 9], [7, 7], [1, 6], [3, 5], [2, 9], [2, 10], [7, 10]]) == 10
    assert candidate([[3, 8], [2, 9], [6, 10], [4, 8], [3, 4], [2, 3], [5, 9], [1, 5], [7, 9]]) == 10
    assert candidate([[6, 7], [1, 5], [4, 6], [4, 9], [6, 8], [1, 7], [5, 10], [3, 4]]) == 10
    assert candidate([[1, 2], [4, 10], [3, 7], [2, 10], [1, 2], [3, 4], [9, 9], [5, 9], [3, 7], [3, 5]]) == 10
    assert candidate([[1, 6], [3, 4], [4, 8], [8, 10], [3, 8]]) == 10
    assert candidate([[3, 6], [8, 10], [2, 5], [9, 10], [2, 8], [5, 10], [7, 10], [8, 8], [8, 10], [8, 9]]) == 9
    assert candidate([[1, 8], [2, 6], [2, 3], [3, 6], [1, 10], [5, 8]]) == 10
    assert candidate([[3, 7], [7, 10], [6, 6], [4, 10], [5, 10], [2, 8], [1, 10], [7, 8], [6, 6], [4, 7]]) == 10
    assert candidate([[6, 9]]) == 4
    assert candidate([[7, 8], [1, 1], [4, 10], [1, 9], [2, 6], [4, 6], [8, 9], [4, 5]]) == 10
    assert candidate([[2, 7], [7, 10], [7, 8], [3, 5], [1, 7], [1, 4]]) == 10
    assert candidate([[2, 9]]) == 8
    assert candidate([[7, 9], [2, 2], [2, 7]]) == 8
    assert candidate([[2, 10], [8, 9], [6, 8], [9, 10]]) == 9
    assert candidate([[3, 3]]) == 1


def test_check():
    check(numberOfPoints)


### Metadata below ###
# question_id = 3034
# question_title = Points That Intersect With Cars
# question_title_slug = points-that-intersect-with-cars
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 211
# question_dislikes = 13