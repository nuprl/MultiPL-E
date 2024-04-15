from typing import List

def sumCounts(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums.
    
    The distinct count of a subarray of nums is defined as:
    
     * Let nums[i..j] be a subarray of nums consisting of all the indices from i to j such that 0 <= i <= j < nums.length. Then the number of distinct values in nums[i..j] is called the distinct count of nums[i..j].
    
    Return the sum of the squares of distinct counts of all subarrays of nums.
    
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [1,2,1]
    Output: 15
    Explanation: Six possible subarrays are:
    [1]: 1 distinct value
    [2]: 1 distinct value
    [1]: 1 distinct value
    [1,2]: 2 distinct values
    [2,1]: 2 distinct values
    [1,2,1]: 2 distinct values
    The sum of the squares of the distinct counts in all subarrays is equal to 12 + 12 + 12 + 22 + 22 + 22 = 15.
    
    Example 2:
    
    Input: nums = [1,1]
    Output: 3
    Explanation: Three possible subarrays are:
    [1]: 1 distinct value
    [1]: 1 distinct value
    [1,1]: 1 distinct value
    The sum of the squares of the distinct counts in all subarrays is equal to 12 + 12 + 12 = 3.
    
    Constraints:
    
     * 1 <= nums.length <= 100
     * 1 <= nums[i] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 1]) == 15
    assert candidate([1, 1]) == 3
    assert candidate([2, 2, 5, 5]) == 22
    assert candidate([5, 2, 4, 2, 1, 3, 2, 4, 3, 1]) == 578
    assert candidate([2, 3, 2, 1, 2, 5, 3, 4, 5, 2]) == 629
    assert candidate([5, 1, 5, 2, 3, 5, 1, 5, 1]) == 385
    assert candidate([4, 5, 4, 3, 4, 2]) == 120
    assert candidate([2]) == 1
    assert candidate([3, 4, 2, 5, 2, 4, 1, 2, 2, 5]) == 535
    assert candidate([4, 4, 2, 4, 1]) == 57
    assert candidate([2, 2, 5]) == 12
    assert candidate([4, 5, 1, 2, 2, 1, 3, 3]) == 266
    assert candidate([3, 1, 5, 5, 2, 3, 2, 2, 1]) == 334
    assert candidate([2, 5, 2, 5, 3, 2, 5, 2]) == 205
    assert candidate([5, 4, 1, 4, 5, 2, 4]) == 203
    assert candidate([1, 3, 3, 4, 3, 1, 2, 1]) == 253
    assert candidate([4]) == 1
    assert candidate([1, 4, 2, 1, 5, 4, 3, 1, 4]) == 507
    assert candidate([2, 4, 5, 3, 2, 5, 1, 5, 4, 4]) == 626
    assert candidate([3, 4, 1, 4, 5, 2, 2]) == 220
    assert candidate([3, 5, 1, 1, 3]) == 62
    assert candidate([4, 3, 2, 5, 3]) == 89
    assert candidate([2, 5]) == 6
    assert candidate([1, 5, 1, 4, 5]) == 70
    assert candidate([5, 1]) == 6
    assert candidate([4, 5, 4, 3, 3, 5, 3]) == 138
    assert candidate([5, 4, 3]) == 20
    assert candidate([5, 5, 3, 3, 4, 5, 4, 5, 5]) == 234
    assert candidate([3, 1, 5, 5, 3, 4, 5, 5, 1, 4]) == 456
    assert candidate([4, 2, 3, 1, 1]) == 81
    assert candidate([4, 5, 3, 1, 2, 5, 5, 3, 5]) == 434
    assert candidate([3, 2, 1, 2, 5, 2, 4, 5, 1, 5]) == 531
    assert candidate([1, 3, 1, 4, 4]) == 62
    assert candidate([5, 1, 2, 1, 2, 1, 2, 3, 1]) == 257
    assert candidate([2, 4]) == 6
    assert candidate([4, 5, 4, 5]) == 28
    assert candidate([3, 1, 5, 5, 5, 4, 3, 3, 2]) == 334
    assert candidate([3, 2, 5, 2, 1, 5, 3]) == 203
    assert candidate([4, 4, 2, 5, 5, 4, 2, 2, 1]) == 294
    assert candidate([1]) == 1
    assert candidate([1, 1, 3, 3, 3, 4, 4]) == 96
    assert candidate([3, 2, 2, 3, 4]) == 57
    assert candidate([1, 5, 3, 2, 4, 4]) == 161
    assert candidate([5, 4, 1, 1, 3]) == 69
    assert candidate([4, 3, 3, 5, 3, 4, 5, 3, 3, 1]) == 376
    assert candidate([2, 3, 4, 1, 5, 1, 3, 3, 4]) == 432
    assert candidate([5, 1, 4, 2, 1, 1]) == 129
    assert candidate([5, 4, 4, 1]) == 30
    assert candidate([1, 5, 1, 3, 2, 1]) == 139
    assert candidate([5, 3]) == 6
    assert candidate([4, 1, 4, 3]) == 38
    assert candidate([1, 5, 4, 3, 4, 2, 4, 5, 5, 4]) == 513
    assert candidate([4, 2, 3, 4, 3, 2, 5, 4, 4]) == 378
    assert candidate([2, 3, 3, 2, 1, 5, 2, 2]) == 262
    assert candidate([2, 1, 4, 2, 4, 1, 4, 3]) == 243
    assert candidate([1, 4, 4, 1, 3]) == 57
    assert candidate([2, 3, 2, 1]) == 38
    assert candidate([1, 4, 2, 1]) == 43
    assert candidate([2, 4, 3, 2, 5, 1]) == 169
    assert candidate([2, 5, 3, 2, 1, 3, 1, 3, 2]) == 348
    assert candidate([4, 1]) == 6
    assert candidate([4, 3, 1, 4, 3, 4, 3, 4, 1]) == 263
    assert candidate([5, 1, 1, 1, 4, 3]) == 89
    assert candidate([4, 5]) == 6
    assert candidate([5, 2, 2, 3, 1, 2, 5, 3]) == 289
    assert candidate([3, 2, 4]) == 20
    assert candidate([5, 3, 5, 2, 3, 2]) == 106
    assert candidate([3, 2, 1]) == 20
    assert candidate([4, 4, 2, 4, 3]) == 57
    assert candidate([1, 4, 4]) == 12
    assert candidate([1, 4, 4, 3, 1, 2, 1, 4, 3]) == 387
    assert candidate([1, 5, 4, 2, 5, 5, 5, 3]) == 249
    assert candidate([2, 1, 5, 3]) == 50
    assert candidate([2, 3, 5, 1, 5, 2, 3, 2, 3, 4]) == 533
    assert candidate([5, 3, 4, 4, 3, 5, 4, 5]) == 202
    assert candidate([4, 4, 2, 2, 4, 1]) == 80
    assert candidate([2, 3]) == 6
    assert candidate([4, 2, 3, 2]) == 38
    assert candidate([1, 2, 2]) == 12
    assert candidate([4, 1, 5, 1, 5, 4, 5, 1]) == 205
    assert candidate([4, 5, 3, 1]) == 50
    assert candidate([4, 2, 3, 4, 2, 4, 3, 3, 2]) == 275
    assert candidate([4, 3]) == 6
    assert candidate([1, 3, 5, 4, 4, 4]) == 113
    assert candidate([1, 2, 4, 2, 1, 2, 2, 4, 1, 3]) == 391
    assert candidate([4, 2, 5, 3, 2]) == 89
    assert candidate([3, 4, 5, 3, 2, 5]) == 144
    assert candidate([5, 4, 5]) == 15
    assert candidate([2, 4, 5, 1]) == 50
    assert candidate([5, 4, 1, 4, 2, 1, 5]) == 203
    assert candidate([2, 3, 3, 2, 2, 3, 1]) == 110
    assert candidate([1, 4, 2, 5]) == 50
    assert candidate([3]) == 1
    assert candidate([5]) == 1
    assert candidate([1, 3, 5, 3, 2, 1, 1, 4, 3]) == 441
    assert candidate([1, 5, 2, 2, 3, 3, 3]) == 140
    assert candidate([1, 2, 1, 4, 5, 5, 4, 1, 1, 1]) == 407
    assert candidate([2, 2, 1, 1, 1, 2, 5, 4, 5]) == 296
    assert candidate([3, 2, 3]) == 15
    assert candidate([2, 1, 5, 4, 3, 3, 2, 1, 5, 5]) == 652


def test_check():
    check(sumCounts)


### Metadata below ###
# question_id = 3163
# question_title = Subarrays Distinct Element Sum of Squares I
# question_title_slug = subarrays-distinct-element-sum-of-squares-i
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 82
# question_dislikes = 9