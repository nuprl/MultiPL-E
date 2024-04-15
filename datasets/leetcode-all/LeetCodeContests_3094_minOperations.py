from typing import List

def minOperations(nums: List[int]) -> int:
    """
    You are given a 0-indexed array nums consisting of positive integers.
    
    There are two types of operations that you can apply on the array any number of times:
    
     * Choose two elements with equal values and delete them from the array.
     * Choose three elements with equal values and delete them from the array.
    
    Return the minimum number of operations required to make the array empty, or -1 if it is not possible.
    
    Example 1:
    
    Input: nums = [2,3,3,2,2,4,2,3,4]
    Output: 4
    Explanation: We can apply the following operations to make the array empty:
    - Apply the first operation on the elements at indices 0 and 3. The resulting array is nums = [3,3,2,4,2,3,4].
    - Apply the first operation on the elements at indices 2 and 4. The resulting array is nums = [3,3,4,3,4].
    - Apply the second operation on the elements at indices 0, 1, and 3. The resulting array is nums = [4,4].
    - Apply the first operation on the elements at indices 0 and 1. The resulting array is nums = [].
    It can be shown that we cannot make the array empty in less than 4 operations.
    
    Example 2:
    
    Input: nums = [2,1,2,2,3,3]
    Output: -1
    Explanation: It is impossible to empty the array.
    
    
    Constraints:
    
     * 2 <= nums.length <= 105
     * 1 <= nums[i] <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 3, 3, 2, 2, 4, 2, 3, 4]) == 4
    assert candidate([2, 1, 2, 2, 3, 3]) == -1
    assert candidate([3, 3]) == 1
    assert candidate([14, 12, 14, 14, 12, 14, 14, 12, 12, 12, 12, 14, 14, 12, 14, 14, 14, 12, 12]) == 7
    assert candidate([2, 2, 2, 2, 2, 2, 2, 2, 2]) == 3
    assert candidate([15, 3, 3, 15, 15, 13, 8, 15, 6, 15, 3, 1, 8, 8, 15]) == -1
    assert candidate([19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19]) == 5
    assert candidate([13, 7, 13, 7, 13, 7, 13, 13, 7]) == 4
    assert candidate([5, 5]) == 1
    assert candidate([3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3]) == 5
    assert candidate([3, 14, 3, 14, 3, 14, 14, 3, 3, 14, 14, 14, 3, 14, 14, 3, 14, 14, 14, 3]) == 7
    assert candidate([16, 16, 16, 19, 16, 3, 16, 8, 16, 16, 16, 19, 3, 16, 16]) == -1
    assert candidate([11, 11, 11, 11, 19, 11, 11, 11, 11, 11, 19, 11, 11, 11, 11, 11, 19]) == 6
    assert candidate([1, 1, 1, 5, 1, 5, 1, 1, 1, 1, 1, 1, 1]) == 5
    assert candidate([16, 16, 16, 3, 16, 16, 3]) == 3
    assert candidate([14, 4, 4, 19, 19]) == -1
    assert candidate([1, 14, 1, 1, 1]) == -1
    assert candidate([3, 10, 11, 3, 3, 11, 3, 3, 3, 3, 3, 3, 3, 3, 10, 3, 3, 3]) == 7
    assert candidate([3, 8, 8, 8, 8, 3, 8, 8, 8, 8, 8, 8, 8, 8]) == 5
    assert candidate([9, 9, 9]) == 1
    assert candidate([6, 6, 6, 6, 6, 8, 8, 8, 8, 6, 8, 6, 15, 15, 6, 15, 6, 6]) == 7
    assert candidate([9, 19, 19, 19, 9, 9, 19, 19, 19, 9, 9, 19, 9, 19, 19, 19]) == 6
    assert candidate([9, 4, 9, 20, 20, 4, 20]) == 3
    assert candidate([6, 9, 18, 16, 18, 1, 9, 1, 1, 1, 1, 16, 1, 6, 1, 1, 9, 6]) == 7
    assert candidate([11, 18, 11, 18, 11, 18, 11]) == 3
    assert candidate([20, 20, 20, 20, 20]) == 2
    assert candidate([12, 7, 7]) == -1
    assert candidate([10, 7, 9, 9, 10, 9, 9, 10, 10, 9, 10, 9, 10, 10]) == -1
    assert candidate([9, 9, 9, 8, 9, 9, 9, 9, 2, 9, 9, 9, 9, 9]) == -1
    assert candidate([5, 5, 18, 1, 5, 5]) == -1
    assert candidate([13, 13, 16, 4, 16, 13, 2, 16, 16, 16, 2, 16, 6, 16, 13, 18, 9]) == -1
    assert candidate([8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 8, 8, 8, 8, 8, 7, 8]) == 6
    assert candidate([20, 20, 19, 19, 20, 19, 20, 20, 20, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20]) == 7
    assert candidate([4, 4, 20, 20, 4, 20, 1, 4, 4, 4, 4, 4, 4, 4, 20, 4, 4]) == -1
    assert candidate([16, 17, 17, 8, 17, 17, 16, 8, 17, 16, 17]) == 4
    assert candidate([10, 10, 10, 9, 10, 10, 10, 9, 10, 18, 10, 4, 20, 2, 10, 10]) == -1
    assert candidate([11, 20, 20, 11, 11, 20, 14, 20, 11, 11, 20, 1]) == -1
    assert candidate([14, 14, 14, 14, 15, 20, 15]) == -1
    assert candidate([17, 7, 17, 5, 17, 17, 17, 7, 17, 17, 17, 17, 5, 17, 17, 7, 5]) == 6
    assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4]) == 3
    assert candidate([17, 17]) == 1
    assert candidate([15, 2, 15, 2, 8, 15, 15, 15, 15, 15, 15, 8, 2]) == 5
    assert candidate([1, 12, 12, 1, 1, 1, 1, 12, 1]) == 3
    assert candidate([12, 4, 9, 10, 17, 12, 5, 17, 4, 12, 12, 12, 4, 10, 4]) == -1
    assert candidate([7, 7, 7, 7, 7, 7, 7, 16, 7, 7, 7, 16, 7, 16, 7, 16, 16, 16, 16, 7]) == 8
    assert candidate([20, 20, 20, 20, 19]) == -1
    assert candidate([13, 13, 13, 13, 13, 13, 13, 13]) == 3
    assert candidate([15, 12, 18, 18, 15, 15, 15, 12, 12, 12, 12, 12, 12, 15, 18]) == 6
    assert candidate([14, 14, 14, 1]) == -1
    assert candidate([2, 2, 2, 2, 2, 2, 8, 2, 8, 2, 2, 2, 2]) == 5
    assert candidate([10, 16, 6, 6, 10, 6]) == -1
    assert candidate([18, 17, 3, 18, 6, 13, 3, 6, 14, 6, 15, 3]) == -1
    assert candidate([15, 15]) == 1
    assert candidate([9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9]) == 4
    assert candidate([11, 4, 4, 18, 11, 12, 18, 18, 12, 4, 4, 12, 4]) == 5
    assert candidate([2, 5, 20, 20, 5, 20, 20, 16, 20, 20, 20, 20, 20, 20, 3, 20, 20, 20]) == -1
    assert candidate([12, 13, 13, 13, 12, 13, 13, 13, 13, 13, 11, 13, 13, 13]) == -1
    assert candidate([1, 1, 1, 1]) == 2
    assert candidate([10, 10, 10, 10, 3, 10, 10, 3, 10]) == 4
    assert candidate([7, 14, 7, 7, 2, 2, 7]) == -1
    assert candidate([1, 10, 1, 10, 1]) == 2
    assert candidate([11, 11, 11, 11, 11, 11, 11, 11, 11, 11]) == 4
    assert candidate([18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18]) == 7
    assert candidate([13, 13, 13, 13, 13, 13, 13]) == 3
    assert candidate([19, 19, 19, 19, 18, 19, 15, 7, 19, 19, 15, 5]) == -1
    assert candidate([2, 12, 12, 12, 17, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12]) == -1
    assert candidate([19, 16, 19, 19, 16, 16, 16, 16]) == 3
    assert candidate([15, 15, 15, 15, 15, 15, 11, 13, 15, 15, 11, 15, 13, 15, 11, 13]) == 6
    assert candidate([15, 16, 16, 15, 16]) == 2
    assert candidate([9, 7, 14, 9, 14, 7, 7, 9, 9, 9, 9, 9, 9, 14, 14]) == 6
    assert candidate([12, 16, 5, 5, 7, 10, 2, 16, 12, 7, 2, 12, 5, 16, 2, 11]) == -1
    assert candidate([11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11]) == 6
    assert candidate([18, 13, 13, 18, 18, 13, 13, 18, 13, 13]) == 4
    assert candidate([4, 4, 8, 10, 8, 10, 19, 19, 19, 19, 8, 8, 19, 4]) == 6
    assert candidate([1, 18, 14, 16, 14]) == -1
    assert candidate([7, 7, 7, 7, 3, 7, 7, 3, 7, 7]) == 4
    assert candidate([13, 13]) == 1
    assert candidate([6, 11, 6, 8, 6, 13, 17, 14]) == -1
    assert candidate([10, 2, 2, 10]) == 2
    assert candidate([19, 17, 17, 17, 17, 17, 17, 17, 19, 19, 19, 17, 19, 17]) == 5
    assert candidate([4, 16, 12, 7, 16, 16, 16]) == -1
    assert candidate([11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11]) == 5
    assert candidate([6, 6, 6, 13, 6, 18, 13, 18, 5, 18, 12, 3, 12, 12, 18, 6, 18, 3, 18, 6]) == -1
    assert candidate([4, 4, 3, 3, 4, 4]) == 3
    assert candidate([11, 11, 11, 11, 9, 11, 9, 9, 11, 11, 9, 9, 11, 11, 9]) == 5
    assert candidate([16, 16]) == 1
    assert candidate([4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]) == 5
    assert candidate([17, 16, 16, 17, 16, 16, 16]) == 3
    assert candidate([10, 18, 10, 10]) == -1
    assert candidate([8, 8]) == 1
    assert candidate([8, 6, 6, 6, 8, 8, 6, 8, 8, 6, 8, 6, 8, 8, 6, 6, 6, 8]) == 6
    assert candidate([15, 14, 20, 15, 20, 14, 14, 14, 20, 14, 20, 20]) == 5
    assert candidate([19, 3, 3, 3, 3, 3, 3, 15, 17, 3, 3, 18, 10, 17, 17, 15, 17, 3, 3]) == -1
    assert candidate([1, 1, 16, 2, 16, 1, 2, 2, 2, 2, 2, 1, 2, 2, 2, 16]) == 6
    assert candidate([1, 1, 4, 4, 4]) == 2
    assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 7
    assert candidate([16, 18, 18, 20]) == -1
    assert candidate([2, 2, 2, 20, 15, 2, 20, 15, 2, 15]) == 4
    assert candidate([16, 16, 16, 16, 16]) == 2
    assert candidate([1, 14, 14, 14, 14, 1, 14, 14, 1, 14, 14, 14, 14, 1, 14, 14, 1, 14]) == 7


def test_check():
    check(minOperations)


### Metadata below ###
# question_id = 3094
# question_title = Minimum Number of Operations to Make Array Empty
# question_title_slug = minimum-number-of-operations-to-make-array-empty
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 147
# question_dislikes = 5