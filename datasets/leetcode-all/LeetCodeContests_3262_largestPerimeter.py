from typing import List

def largestPerimeter(nums: List[int]) -> int:
    """
    You are given an array of positive integers nums of length n.
    A polygon is a closed plane figure that has at least 3 sides. The longest side of a polygon is smaller than the sum of its other sides.
    Conversely, if you have k (k >= 3) positive real numbers a1, a2, a3, ..., ak where a1 <= a2 <= a3 <= ... <= ak and a1 + a2 + a3 + ... + ak-1 > ak, then there always exists a polygon with k sides whose lengths are a1, a2, a3, ..., ak.
    The perimeter of a polygon is the sum of lengths of its sides.
    Return the largest possible perimeter of a polygon whose sides can be formed from nums, or -1 if it is not possible to create a polygon.
    
    Example 1:
    
    Input: nums = [5,5,5]
    Output: 15
    Explanation: The only possible polygon that can be made from nums has 3 sides: 5, 5, and 5. The perimeter is 5 + 5 + 5 = 15.
    
    Example 2:
    
    Input: nums = [1,12,1,2,5,50,3]
    Output: 12
    Explanation: The polygon with the largest perimeter which can be made from nums has 5 sides: 1, 1, 2, 3, and 5. The perimeter is 1 + 1 + 2 + 3 + 5 = 12.
    We cannot have a polygon with either 12 or 50 as the longest side because it is not possible to include 2 or more smaller sides that have a greater sum than either of them.
    It can be shown that the largest possible perimeter is 12.
    
    Example 3:
    
    Input: nums = [5,5,50]
    Output: -1
    Explanation: There is no possible way to form a polygon from nums, as a polygon has at least 3 sides and 50 > 5 + 5.
    
    
    Constraints:
    
    3 <= n <= 105
    1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 5, 5]) == 15
    assert candidate([1, 12, 1, 2, 5, 50, 3]) == 12
    assert candidate([5, 5, 50]) == -1
    assert candidate([1, 1, 1]) == 3
    assert candidate([1, 1, 2]) == -1
    assert candidate([1, 1, 3]) == -1
    assert candidate([1, 1, 4]) == -1
    assert candidate([1, 1, 5]) == -1
    assert candidate([1, 2, 1]) == -1
    assert candidate([1, 2, 2]) == 5
    assert candidate([1, 2, 3]) == -1
    assert candidate([1, 2, 4]) == -1
    assert candidate([1, 2, 5]) == -1
    assert candidate([1, 3, 1]) == -1
    assert candidate([1, 3, 2]) == -1
    assert candidate([1, 3, 3]) == 7
    assert candidate([1, 3, 4]) == -1
    assert candidate([1, 3, 5]) == -1
    assert candidate([1, 4, 1]) == -1
    assert candidate([1, 4, 2]) == -1
    assert candidate([1, 4, 3]) == -1
    assert candidate([1, 4, 4]) == 9
    assert candidate([1, 4, 5]) == -1
    assert candidate([1, 5, 1]) == -1
    assert candidate([1, 5, 2]) == -1
    assert candidate([1, 5, 3]) == -1
    assert candidate([1, 5, 4]) == -1
    assert candidate([1, 5, 5]) == 11
    assert candidate([2, 1, 1]) == -1
    assert candidate([2, 1, 2]) == 5
    assert candidate([2, 1, 3]) == -1
    assert candidate([2, 1, 4]) == -1
    assert candidate([2, 1, 5]) == -1
    assert candidate([2, 2, 1]) == 5
    assert candidate([2, 2, 2]) == 6
    assert candidate([2, 2, 3]) == 7
    assert candidate([2, 2, 4]) == -1
    assert candidate([2, 2, 5]) == -1
    assert candidate([2, 3, 1]) == -1
    assert candidate([2, 3, 2]) == 7
    assert candidate([2, 3, 3]) == 8
    assert candidate([2, 3, 4]) == 9
    assert candidate([2, 3, 5]) == -1
    assert candidate([2, 4, 1]) == -1
    assert candidate([2, 4, 2]) == -1
    assert candidate([2, 4, 3]) == 9
    assert candidate([2, 4, 4]) == 10
    assert candidate([2, 4, 5]) == 11
    assert candidate([2, 5, 1]) == -1
    assert candidate([2, 5, 2]) == -1
    assert candidate([2, 5, 3]) == -1
    assert candidate([2, 5, 4]) == 11
    assert candidate([2, 5, 5]) == 12
    assert candidate([3, 1, 1]) == -1
    assert candidate([3, 1, 2]) == -1
    assert candidate([3, 1, 3]) == 7
    assert candidate([3, 1, 4]) == -1
    assert candidate([3, 1, 5]) == -1
    assert candidate([3, 2, 1]) == -1
    assert candidate([3, 2, 2]) == 7
    assert candidate([3, 2, 3]) == 8
    assert candidate([3, 2, 4]) == 9
    assert candidate([3, 2, 5]) == -1
    assert candidate([3, 3, 1]) == 7
    assert candidate([3, 3, 2]) == 8
    assert candidate([3, 3, 3]) == 9
    assert candidate([3, 3, 4]) == 10
    assert candidate([3, 3, 5]) == 11
    assert candidate([3, 4, 1]) == -1
    assert candidate([3, 4, 2]) == 9
    assert candidate([3, 4, 3]) == 10
    assert candidate([3, 4, 4]) == 11
    assert candidate([3, 4, 5]) == 12
    assert candidate([3, 5, 1]) == -1
    assert candidate([3, 5, 2]) == -1
    assert candidate([3, 5, 3]) == 11
    assert candidate([3, 5, 4]) == 12
    assert candidate([3, 5, 5]) == 13
    assert candidate([4, 1, 1]) == -1
    assert candidate([4, 1, 2]) == -1
    assert candidate([4, 1, 3]) == -1
    assert candidate([4, 1, 4]) == 9
    assert candidate([4, 1, 5]) == -1
    assert candidate([4, 2, 1]) == -1
    assert candidate([4, 2, 2]) == -1
    assert candidate([4, 2, 3]) == 9
    assert candidate([4, 2, 4]) == 10
    assert candidate([4, 2, 5]) == 11
    assert candidate([4, 3, 1]) == -1
    assert candidate([4, 3, 2]) == 9
    assert candidate([4, 3, 3]) == 10
    assert candidate([4, 3, 4]) == 11
    assert candidate([4, 3, 5]) == 12
    assert candidate([4, 4, 1]) == 9
    assert candidate([4, 4, 2]) == 10
    assert candidate([4, 4, 3]) == 11
    assert candidate([4, 4, 4]) == 12
    assert candidate([4, 4, 5]) == 13
    assert candidate([4, 5, 1]) == -1
    assert candidate([4, 5, 2]) == 11


def test_check():
    check(largestPerimeter)


### Metadata below ###
# question_id = 3262
# question_title = Find Polygon With the Largest Perimeter
# question_title_slug = find-polygon-with-the-largest-perimeter
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 53
# question_dislikes = 6