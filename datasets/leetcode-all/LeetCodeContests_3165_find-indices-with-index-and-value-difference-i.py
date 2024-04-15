from typing import List

def findIndices(nums: List[int], indexDifference: int, valueDifference: int) -> List[int]:
    """
    You are given a 0-indexed integer array nums having length n, an integer indexDifference, and an integer valueDifference.
    
    Your task is to find two indices i and j, both in the range [0, n - 1], that satisfy the following conditions:
    
     * abs(i - j) >= indexDifference, and
     * abs(nums[i] - nums[j]) >= valueDifference
    
    Return an integer array answer, where answer = [i, j] if there are two such indices, and answer = [-1, -1] otherwise. If there are multiple choices for the two indices, return any of them.
    
    Note: i and j may be equal.
    
    Example 1:
    
    Input: nums = [5,1,4,1], indexDifference = 2, valueDifference = 4
    Output: [0,3]
    Explanation: In this example, i = 0 and j = 3 can be selected.
    abs(0 - 3) >= 2 and abs(nums[0] - nums[3]) >= 4.
    Hence, a valid answer is [0,3].
    [3,0] is also a valid answer.
    
    Example 2:
    
    Input: nums = [2,1], indexDifference = 0, valueDifference = 0
    Output: [0,0]
    Explanation: In this example, i = 0 and j = 0 can be selected.
    abs(0 - 0) >= 0 and abs(nums[0] - nums[0]) >= 0.
    Hence, a valid answer is [0,0].
    Other valid answers are [0,1], [1,0], and [1,1].
    
    Example 3:
    
    Input: nums = [1,2,3], indexDifference = 2, valueDifference = 4
    Output: [-1,-1]
    Explanation: In this example, it can be shown that it is impossible to find two indices that satisfy both conditions.
    Hence, [-1,-1] is returned.
    
    Constraints:
    
     * 1 <= n == nums.length <= 100
     * 0 <= nums[i] <= 50
     * 0 <= indexDifference <= 100
     * 0 <= valueDifference <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 1, 4, 1], 2, 4) == [0,3]
    assert candidate([2, 1], 0, 0) == [0,0]
    assert candidate([1, 2, 3], 2, 4) == [-1,-1]
    assert candidate([0], 0, 0) == [0,0]
    assert candidate([3], 0, 0) == [0,0]
    assert candidate([3], 1, 1) == [-1,-1]
    assert candidate([4], 1, 0) == [-1,-1]
    assert candidate([5], 1, 3) == [-1,-1]
    assert candidate([7], 1, 7) == [-1,-1]
    assert candidate([8], 0, 2) == [-1,-1]
    assert candidate([8], 1, 7) == [-1,-1]
    assert candidate([10], 0, 9) == [-1,-1]
    assert candidate([11], 1, 0) == [-1,-1]
    assert candidate([18], 1, 4) == [-1,-1]
    assert candidate([38], 1, 34) == [-1,-1]
    assert candidate([40], 1, 2) == [-1,-1]
    assert candidate([5, 10], 1, 2) == [0,1]
    assert candidate([5, 48], 0, 29) == [0,1]
    assert candidate([6, 3], 1, 2) == [0,1]
    assert candidate([7, 6], 1, 0) == [0,1]
    assert candidate([8, 8], 1, 1) == [-1,-1]
    assert candidate([17, 31], 1, 9) == [0,1]
    assert candidate([21, 22], 1, 21) == [-1,-1]
    assert candidate([48, 40], 2, 31) == [-1,-1]
    assert candidate([2, 8, 0], 2, 7) == [-1,-1]
    assert candidate([2, 29, 0], 0, 12) == [0,1]
    assert candidate([3, 0, 7], 2, 4) == [0,2]
    assert candidate([4, 22, 43], 0, 34) == [0,2]
    assert candidate([5, 0, 3], 1, 4) == [0,1]
    assert candidate([5, 9, 2], 0, 1) == [0,1]
    assert candidate([6, 2, 7], 2, 5) == [-1,-1]
    assert candidate([6, 5, 1], 2, 6) == [-1,-1]
    assert candidate([6, 8, 0], 1, 3) == [0,2]
    assert candidate([7, 36, 21], 1, 20) == [0,1]
    assert candidate([9, 4, 7], 0, 9) == [-1,-1]
    assert candidate([9, 50, 31], 1, 8) == [0,1]
    assert candidate([31, 23, 36], 1, 11) == [1,2]
    assert candidate([40, 21, 1], 2, 0) == [0,2]
    assert candidate([0, 5, 10, 5], 3, 0) == [0,3]
    assert candidate([1, 28, 24, 35], 3, 2) == [0,3]
    assert candidate([2, 7, 10, 4], 0, 5) == [0,1]
    assert candidate([3, 1, 0, 3], 2, 0) == [0,2]
    assert candidate([7, 5, 6, 2], 2, 2) == [0,3]
    assert candidate([9, 3, 6, 4], 1, 5) == [0,1]
    assert candidate([34, 46, 11, 45], 1, 3) == [0,1]
    assert candidate([36, 37, 40, 9], 2, 8) == [0,3]
    assert candidate([37, 25, 48, 13], 0, 0) == [0,0]
    assert candidate([45, 6, 29, 21], 3, 36) == [-1,-1]
    assert candidate([1, 5, 7, 9, 2], 3, 8) == [0,3]
    assert candidate([7, 2, 1, 8, 3], 0, 7) == [2,3]
    assert candidate([8, 9, 8, 0, 4], 1, 6) == [0,3]
    assert candidate([9, 1, 10, 0, 10], 0, 3) == [0,1]
    assert candidate([9, 9, 4, 5, 5], 2, 9) == [-1,-1]
    assert candidate([10, 1, 10, 12, 1], 1, 3) == [0,1]
    assert candidate([17, 46, 31, 28, 28], 0, 46) == [-1,-1]
    assert candidate([17, 49, 1, 47, 12], 2, 17) == [0,3]
    assert candidate([32, 49, 3, 40, 44], 1, 37) == [1,2]
    assert candidate([46, 43, 16, 16, 34], 3, 13) == [0,3]
    assert candidate([49, 36, 18, 4, 33], 3, 20) == [0,3]
    assert candidate([0, 7, 10, 6, 6, 5], 1, 5) == [0,1]
    assert candidate([2, 0, 3, 4, 0, 5], 3, 5) == [1,5]
    assert candidate([3, 8, 9, 7, 2, 3], 3, 6) == [1,4]
    assert candidate([3, 27, 38, 47, 38, 4], 0, 10) == [0,1]
    assert candidate([4, 13, 48, 50, 1, 26], 4, 34) == [-1,-1]
    assert candidate([6, 1, 2, 6, 4, 6], 2, 2) == [0,2]
    assert candidate([7, 1, 0, 9, 5, 9], 2, 5) == [0,2]
    assert candidate([7, 3, 7, 5, 7, 9], 1, 2) == [0,1]
    assert candidate([12, 37, 7, 16, 5, 34], 3, 27) == [1,4]
    assert candidate([17, 46, 48, 25, 22, 4], 2, 30) == [0,2]
    assert candidate([18, 18, 7, 10, 9, 50], 2, 32) == [0,5]
    assert candidate([18, 42, 37, 13, 49, 42], 3, 46) == [-1,-1]
    assert candidate([23, 31, 14, 42, 0, 49], 4, 44) == [-1,-1]
    assert candidate([50, 46, 15, 16, 48, 7], 1, 7) == [0,2]
    assert candidate([5, 6, 8, 5, 6, 3, 1], 0, 4) == [0,6]
    assert candidate([5, 50, 13, 3, 44, 7, 29], 1, 45) == [0,1]
    assert candidate([8, 7, 18, 47, 27, 25, 41], 0, 45) == [-1,-1]
    assert candidate([9, 1, 0, 6, 7, 5, 8], 1, 1) == [0,1]
    assert candidate([11, 3, 36, 17, 13, 0, 26], 2, 33) == [2,5]
    assert candidate([13, 0, 16, 32, 47, 27, 25], 1, 35) == [1,4]
    assert candidate([13, 16, 30, 33, 50, 50, 38], 3, 30) == [0,4]
    assert candidate([21, 44, 22, 1, 21, 9, 17], 1, 41) == [1,3]
    assert candidate([35, 31, 36, 28, 49, 4, 46], 4, 27) == [0,5]
    assert candidate([39, 18, 49, 25, 40, 41, 26], 1, 43) == [-1,-1]
    assert candidate([40, 46, 11, 36, 25, 46, 47], 0, 37) == [-1,-1]
    assert candidate([46, 7, 6, 3, 43, 7, 48], 0, 48) == [-1,-1]
    assert candidate([0, 1, 6, 8, 8, 3, 9, 10], 2, 6) == [0,2]
    assert candidate([1, 0, 6, 4, 8, 7, 2, 5], 3, 7) == [0,4]
    assert candidate([3, 8, 3, 8, 0, 5, 5, 7], 4, 6) == [-1,-1]
    assert candidate([5, 10, 4, 4, 8, 6, 0, 4], 2, 7) == [1,6]
    assert candidate([6, 1, 3, 7, 4, 4, 2, 1], 0, 5) == [0,1]
    assert candidate([9, 36, 31, 2, 46, 1, 27, 37], 3, 45) == [-1,-1]
    assert candidate([10, 4, 0, 1, 4, 7, 2, 0], 5, 8) == [0,6]
    assert candidate([26, 20, 19, 36, 20, 28, 33, 39], 0, 0) == [0,0]
    assert candidate([29, 3, 30, 34, 25, 40, 10, 37], 5, 22) == [1,7]
    assert candidate([39, 26, 46, 9, 5, 34, 0, 20], 0, 24) == [0,3]
    assert candidate([46, 12, 38, 21, 12, 9, 18, 29], 3, 35) == [0,5]
    assert candidate([1, 7, 7, 2, 4, 10, 1, 5, 9], 4, 4) == [0,5]
    assert candidate([2, 4, 1, 5, 2, 0, 3, 5, 7], 5, 2) == [0,5]
    assert candidate([2, 5, 6, 5, 9, 7, 2, 3, 6], 4, 2) == [0,4]
    assert candidate([2, 6, 9, 4, 9, 4, 10, 9, 2], 0, 4) == [0,1]


def test_check():
    check(findIndices)


### Metadata below ###
# question_id = 3165
# question_title = Find Indices With Index and Value Difference I
# question_title_slug = find-indices-with-index-and-value-difference-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 97
# question_dislikes = 7