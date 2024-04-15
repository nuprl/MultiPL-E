from typing import List

def maxSubarrays(nums: List[int]) -> int:
    """
    You are given an array nums consisting of non-negative integers.
    
    We define the score of subarray nums[l..r] such that l <= r as nums[l] AND nums[l + 1] AND ... AND nums[r] where AND is the bitwise AND operation.
    
    Consider splitting the array into one or more subarrays such that the following conditions are satisfied:
    
     * Each element of the array belongs to exactly one subarray.
     * The sum of scores of the subarrays is the minimum possible.
    
    Return the maximum number of subarrays in a split that satisfies the conditions above.
    
    A subarray is a contiguous part of an array.
    
    Example 1:
    
    Input: nums = [1,0,2,0,1,2]
    Output: 3
    Explanation: We can split the array into the following subarrays:
    - [1,0]. The score of this subarray is 1 AND 0 = 0.
    - [2,0]. The score of this subarray is 2 AND 0 = 0.
    - [1,2]. The score of this subarray is 1 AND 2 = 0.
    The sum of scores is 0 + 0 + 0 = 0, which is the minimum possible score that we can obtain.
    It can be shown that we cannot split the array into more than 3 subarrays with a total score of 0. So we return 3.
    
    Example 2:
    
    Input: nums = [5,7,1,3]
    Output: 1
    Explanation: We can split the array into one subarray: [5,7,1,3] with a score of 1, which is the minimum possible score that we can obtain.
    It can be shown that we cannot split the array into more than 1 subarray with a total score of 1. So we return 1.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 0 <= nums[i] <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 0, 2, 0, 1, 2]) == 3
    assert candidate([5, 7, 1, 3]) == 1
    assert candidate([1, 0, 2, 1]) == 2
    assert candidate([0]) == 1
    assert candidate([0, 0]) == 2
    assert candidate([100000]) == 1
    assert candidate([1, 2, 2, 1]) == 2
    assert candidate([30, 18, 19, 20, 11, 21, 12, 22, 26]) == 2
    assert candidate([0, 8, 0, 0, 0, 23]) == 4
    assert candidate([8, 10, 23, 26, 21, 28, 21, 14, 21, 14, 9, 16, 24, 29, 7, 26]) == 4
    assert candidate([18, 12, 16, 28, 7, 15, 24, 7, 8, 26, 22, 6, 23, 7, 17, 1, 16]) == 6
    assert candidate([22]) == 1
    assert candidate([15, 24, 20, 28, 11, 16, 0, 0, 0, 22, 7, 18]) == 5
    assert candidate([0, 0, 27]) == 2
    assert candidate([18, 7, 20, 10, 0, 14, 0, 28, 7, 0, 0, 9, 12, 0]) == 6
    assert candidate([0, 29, 16, 0, 6, 17]) == 3
    assert candidate([4, 7, 13, 0, 23, 6, 4]) == 1
    assert candidate([4, 27]) == 1
    assert candidate([29, 5, 0, 25, 0, 15, 19, 24, 20, 0, 23]) == 4
    assert candidate([24, 6]) == 1
    assert candidate([13, 20, 16, 16, 27, 0, 7, 18, 3, 0, 23, 16, 25, 0, 5, 1, 4]) == 5
    assert candidate([0, 0, 30, 20, 6, 13]) == 2
    assert candidate([21, 24, 8, 8, 20, 12, 24, 28, 17, 9, 17]) == 3
    assert candidate([0, 0, 18, 0, 0, 4, 5, 25, 0, 0, 0, 30, 0, 18, 0, 0, 12, 21, 21, 18]) == 12
    assert candidate([12, 3, 0, 27, 23, 0, 29, 18, 0, 0, 0, 20, 29, 0, 2, 0, 17, 10, 0, 0]) == 11
    assert candidate([26, 28, 7, 14, 24, 15, 1, 16, 5, 24, 4, 10, 24]) == 4
    assert candidate([30, 11, 0, 9, 15, 0, 0, 0]) == 4
    assert candidate([16, 18, 14, 6, 25, 30, 7, 0, 22, 0, 15, 0]) == 5
    assert candidate([16, 12, 6, 21, 26, 25, 2, 0, 6, 0, 13]) == 5
    assert candidate([13, 1, 13, 18, 2, 15, 15, 27, 3, 3, 14, 12, 23, 8, 29, 10, 29, 15, 10]) == 3
    assert candidate([0, 29, 0, 28, 20, 0, 21, 8, 0, 0, 26, 8, 0, 0, 8, 12]) == 8
    assert candidate([0, 18, 0, 0, 0, 22, 0, 15]) == 5
    assert candidate([0, 30, 26]) == 1
    assert candidate([0, 1, 3, 29, 16, 0, 0, 0, 11]) == 5
    assert candidate([0, 10, 11, 14, 0, 19, 1, 0, 28, 10, 27, 27, 25, 17, 0, 25, 19]) == 5
    assert candidate([18, 4, 0, 6, 0, 10, 23, 3, 26, 0]) == 4
    assert candidate([11, 22, 22, 22, 18, 15, 8, 8, 19, 12, 20, 11]) == 3
    assert candidate([0, 23, 0, 0, 0, 17, 0, 0]) == 6
    assert candidate([0, 23, 0, 14, 4, 5, 23, 23, 8, 8, 15, 0, 0, 13, 6, 26, 0]) == 7
    assert candidate([0, 3, 0, 16, 15, 0, 1, 0, 24, 16, 27, 0, 23, 15, 0, 13, 0, 0]) == 9
    assert candidate([12, 0, 16, 0, 0, 0, 29, 18]) == 4
    assert candidate([0, 27, 15, 13]) == 1
    assert candidate([15, 10, 0, 2, 0, 3, 8, 0, 0, 26, 25, 27, 0, 0, 0, 28, 0, 10, 27, 3]) == 9
    assert candidate([11, 10, 12, 6, 15, 25, 17, 21, 22]) == 2
    assert candidate([2, 19, 13]) == 1
    assert candidate([27, 4]) == 1
    assert candidate([0, 0, 12, 0, 7, 0, 18, 26, 9, 29, 0, 4, 30, 21, 0, 1]) == 7
    assert candidate([6, 8, 0, 0, 25, 0, 30, 18, 18, 0]) == 5
    assert candidate([21, 5, 18, 18, 18, 0, 0, 17, 0]) == 4
    assert candidate([25, 29, 23, 27]) == 1
    assert candidate([28, 28, 0, 16, 21, 27, 12, 3, 10, 0, 19, 0, 0]) == 5
    assert candidate([9, 2, 22, 14, 17, 3, 21, 1, 29, 3, 30, 13, 16, 17, 25, 26, 17]) == 4
    assert candidate([0, 9, 4, 25, 21, 0, 25, 11, 13, 9, 0, 0, 19, 0, 16, 8, 17, 26, 0, 0]) == 9
    assert candidate([11, 0, 0, 2, 3, 0, 9, 26, 0, 0, 25, 7, 1, 12, 16, 14]) == 7
    assert candidate([7, 11, 27, 13, 23, 16, 13, 5, 27, 5, 16]) == 2
    assert candidate([18]) == 1
    assert candidate([20, 19, 2, 20, 26, 1, 17, 6, 23, 25, 7, 14, 16, 8]) == 5
    assert candidate([28, 0, 29, 9, 0, 11, 13, 22, 10, 16, 21, 30, 18, 19, 0, 0, 0]) == 7
    assert candidate([20, 26, 0, 0, 0, 11, 30]) == 3
    assert candidate([16, 12, 0, 2, 15, 30, 0, 16, 7, 25]) == 4
    assert candidate([0, 7, 16, 17, 29, 0, 18, 0, 14, 21, 17, 2, 28, 7, 26, 0, 14]) == 7
    assert candidate([29, 0, 19, 23, 13]) == 1
    assert candidate([0, 13, 1, 12, 18, 24, 11, 26, 7]) == 3
    assert candidate([7, 26, 28, 12, 24, 10, 11, 26, 19, 29, 1, 26]) == 3
    assert candidate([28, 15, 24, 9, 0]) == 1
    assert candidate([22, 6, 21, 16, 24, 7, 18, 25, 25, 26, 15, 10, 26, 22, 23, 15]) == 3
    assert candidate([0, 23, 0, 1, 26, 5, 18, 12, 25, 23, 5, 19]) == 5
    assert candidate([16, 19, 0, 0]) == 2
    assert candidate([13]) == 1
    assert candidate([8, 9]) == 1
    assert candidate([0, 0, 0, 11, 0, 24, 8, 0, 0, 17, 21, 7, 0, 25, 25]) == 7
    assert candidate([0, 0, 10, 0, 0, 30, 5, 0]) == 5
    assert candidate([29, 22, 30, 22, 19, 26]) == 1
    assert candidate([17, 15, 14, 24, 30, 14, 25, 28, 10, 11]) == 1
    assert candidate([0, 0, 13, 2, 12, 2, 27]) == 4
    assert candidate([0, 18, 9, 0, 20, 0, 30, 22, 0]) == 5
    assert candidate([2, 6, 23, 0, 0, 6, 12, 22, 0, 19, 18, 0, 0, 14, 19, 3, 11, 28, 0, 17]) == 7
    assert candidate([16, 12, 7]) == 1
    assert candidate([0, 22, 0, 0, 0, 26, 7]) == 4
    assert candidate([0, 19, 5, 25, 0, 0, 4, 0, 0, 1, 0, 10, 25, 2, 3]) == 7
    assert candidate([7, 8, 18, 14, 4, 6, 22, 22, 7]) == 2
    assert candidate([8, 9, 13, 0, 0, 20]) == 2
    assert candidate([29, 20, 13, 11, 19, 27, 20, 4, 24, 20, 10, 21, 18, 26, 3, 23, 15, 18, 23, 25]) == 5
    assert candidate([25, 0, 18, 13, 22, 5, 0, 0]) == 4
    assert candidate([9, 3, 0, 2, 18, 11, 15, 1, 10, 0, 0, 16, 0, 11]) == 5
    assert candidate([9, 0, 0, 11, 14, 0, 23, 0]) == 4
    assert candidate([6, 3, 22, 28, 0, 0, 25, 2, 23, 0, 0, 23, 15, 0]) == 7
    assert candidate([0, 10, 11, 25, 14]) == 1
    assert candidate([26, 9, 27, 25, 30, 25, 10, 3, 14, 29, 2, 6, 5, 7, 8, 18]) == 3
    assert candidate([5, 9, 0, 28, 23, 11, 1, 3]) == 2
    assert candidate([0, 22, 3, 0, 15, 0, 11, 3, 20, 23, 0, 7, 13, 20, 11, 6, 19]) == 6
    assert candidate([0, 16, 6]) == 2
    assert candidate([26, 9, 20, 26, 22, 12, 18, 21, 23, 30, 3, 9, 12, 19, 16]) == 4
    assert candidate([14, 10, 8]) == 1
    assert candidate([0, 0, 0, 19, 0]) == 4
    assert candidate([3, 27]) == 1
    assert candidate([7, 14, 27]) == 1
    assert candidate([16, 4, 29, 17, 0, 0, 13, 22, 1, 6, 0, 29, 1, 3, 0, 7]) == 6
    assert candidate([5, 0, 0, 9, 0, 0, 19, 0, 0, 0, 0, 7, 19, 14, 3, 0, 10, 29]) == 9
    assert candidate([16, 22, 0, 0, 0, 0, 27, 0, 0, 0, 24, 22, 0, 0]) == 9


def test_check():
    check(maxSubarrays)


### Metadata below ###
# question_id = 3080
# question_title = Split Array Into Maximum Number of Subarrays
# question_title_slug = split-array-into-maximum-number-of-subarrays
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 188
# question_dislikes = 24