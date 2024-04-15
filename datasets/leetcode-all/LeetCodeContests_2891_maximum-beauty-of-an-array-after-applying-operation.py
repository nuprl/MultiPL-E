from typing import List

def maximumBeauty(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed array nums and a non-negative integer k.
    
    In one operation, you can do the following:
    
     * Choose an index i that hasn't been chosen before from the range [0, nums.length - 1].
     * Replace nums[i] with any integer from the range [nums[i] - k, nums[i] + k].
    
    The beauty of the array is the length of the longest subsequence consisting of equal elements.
    
    Return the maximum possible beauty of the array nums after applying the operation any number of times.
    
    Note that you can apply the operation to each index only once.
    
    A subsequence of an array is a new array generated from the original array by deleting some elements (possibly none) without changing the order of the remaining elements.
    
    Example 1:
    
    Input: nums = [4,6,1,2], k = 2
    Output: 3
    Explanation: In this example, we apply the following operations:
    - Choose index 1, replace it with 4 (from range [4,8]), nums = [4,4,1,2].
    - Choose index 3, replace it with 4 (from range [0,4]), nums = [4,4,1,4].
    After the applied operations, the beauty of the array nums is 3 (subsequence consisting of indices 0, 1, and 3).
    It can be proven that 3 is the maximum possible length we can achieve.
    
    Example 2:
    
    Input: nums = [1,1,1,1], k = 10
    Output: 4
    Explanation: In this example we don't have to apply any operations.
    The beauty of the array nums is 4 (whole array).
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 0 <= nums[i], k <= 105
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([4, 6, 1, 2], 2) == 3
    assert candidate([1, 1, 1, 1], 10) == 4
    assert candidate([12, 71], 10) == 1
    assert candidate([27, 55], 1) == 1
    assert candidate([52, 34], 21) == 2
    assert candidate([76, 0], 16) == 1
    assert candidate([56, 40], 26) == 2
    assert candidate([49, 26], 12) == 2
    assert candidate([69, 66], 14) == 2
    assert candidate([64, 98], 12) == 1
    assert candidate([83, 81], 7) == 2
    assert candidate([44, 93], 15) == 1
    assert candidate([44, 31], 26) == 2
    assert candidate([70, 60], 15) == 2
    assert candidate([60, 22], 11) == 1
    assert candidate([33, 20], 1) == 1
    assert candidate([64, 24], 4) == 1
    assert candidate([59, 20], 28) == 2
    assert candidate([10, 98], 27) == 1
    assert candidate([54, 21], 20) == 2
    assert candidate([61, 11], 15) == 1
    assert candidate([99, 40], 27) == 1
    assert candidate([32, 91], 3) == 1
    assert candidate([91, 57], 21) == 2
    assert candidate([60, 92], 26) == 2
    assert candidate([4, 45], 6) == 1
    assert candidate([24, 35], 6) == 2
    assert candidate([11, 29], 3) == 1
    assert candidate([51, 29], 3) == 1
    assert candidate([43, 21], 14) == 2
    assert candidate([32, 25], 18) == 2
    assert candidate([13, 66], 5) == 1
    assert candidate([89, 71], 28) == 2
    assert candidate([36, 29], 20) == 2
    assert candidate([11, 43], 21) == 2
    assert candidate([15, 36], 4) == 1
    assert candidate([11, 51], 1) == 1
    assert candidate([2, 57], 20) == 1
    assert candidate([94, 66], 26) == 2
    assert candidate([87, 51], 8) == 1
    assert candidate([5, 57, 46], 15) == 2
    assert candidate([81, 46, 85], 23) == 3
    assert candidate([51, 83, 0], 11) == 1
    assert candidate([75, 15, 9], 28) == 2
    assert candidate([10, 59, 86], 23) == 2
    assert candidate([41, 11, 59], 17) == 2
    assert candidate([62, 77, 100], 5) == 1
    assert candidate([27, 35, 15], 6) == 2
    assert candidate([81, 76, 40], 5) == 2
    assert candidate([84, 43, 96], 7) == 2
    assert candidate([62, 1, 93], 30) == 2
    assert candidate([13, 46, 71], 29) == 3
    assert candidate([92, 99, 44], 28) == 3
    assert candidate([73, 30, 40], 26) == 3
    assert candidate([83, 89, 17], 5) == 2
    assert candidate([38, 20, 11], 9) == 2
    assert candidate([63, 56, 23], 14) == 2
    assert candidate([32, 16, 98], 0) == 1
    assert candidate([57, 58, 71], 2) == 2
    assert candidate([61, 50, 35], 2) == 1
    assert candidate([22, 97, 13], 22) == 2
    assert candidate([89, 52, 33], 14) == 2
    assert candidate([89, 4, 77], 20) == 2
    assert candidate([50, 26, 72], 30) == 3
    assert candidate([72, 75, 47], 7) == 2
    assert candidate([23, 1, 73], 25) == 2
    assert candidate([36, 74, 20], 20) == 2
    assert candidate([34, 64, 11], 18) == 2
    assert candidate([29, 94, 45], 27) == 2
    assert candidate([22, 80, 34], 28) == 2
    assert candidate([52, 63, 75], 11) == 2
    assert candidate([53, 63, 93, 89], 23) == 4
    assert candidate([47, 76, 100, 51], 27) == 4
    assert candidate([73, 83, 46, 88], 13) == 3
    assert candidate([50, 28, 30, 51], 2) == 2
    assert candidate([88, 87, 9, 17], 10) == 2
    assert candidate([27, 56, 27, 40], 6) == 2
    assert candidate([88, 19, 2, 30], 6) == 2
    assert candidate([58, 50, 0, 97], 18) == 2
    assert candidate([83, 10, 99, 99], 18) == 3
    assert candidate([58, 75, 1, 25], 12) == 2
    assert candidate([77, 35, 1, 69], 15) == 2
    assert candidate([23, 33, 62, 20], 12) == 3
    assert candidate([42, 34, 18, 0], 5) == 2
    assert candidate([10, 58, 37, 46], 0) == 1
    assert candidate([34, 73, 57, 55], 27) == 4
    assert candidate([53, 100, 74, 5], 4) == 1
    assert candidate([48, 93, 96, 19], 24) == 3
    assert candidate([91, 12, 29, 31], 22) == 3
    assert candidate([48, 9, 35, 36], 12) == 3
    assert candidate([24, 64, 40, 30], 3) == 2
    assert candidate([19, 58, 41, 42], 14) == 3
    assert candidate([72, 44, 29, 76], 4) == 2
    assert candidate([37, 19, 10, 16], 16) == 4
    assert candidate([54, 84, 73, 31], 30) == 4
    assert candidate([83, 92, 30, 60], 19) == 3
    assert candidate([14, 51, 99, 64], 15) == 2
    assert candidate([7, 60, 16, 2], 17) == 3
    assert candidate([7, 89, 54, 54], 5) == 2
    assert candidate([43, 86, 33, 18], 23) == 3


def test_check():
    check(maximumBeauty)


### Metadata below ###
# question_id = 2891
# question_title = Maximum Beauty of an Array After Applying Operation
# question_title_slug = maximum-beauty-of-an-array-after-applying-operation
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 559
# question_dislikes = 12