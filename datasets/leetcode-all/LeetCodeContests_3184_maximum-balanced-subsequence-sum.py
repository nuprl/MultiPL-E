from typing import List

def maxBalancedSubsequenceSum(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums.
    
    A subsequence of nums having length k and consisting of indices i0 < i1 < ... < ik-1 is balanced if the following holds:
    
     * nums[ij] - nums[ij-1] >= ij - ij-1, for every j in the range [1, k - 1].
    
    A subsequence of nums having length 1 is considered balanced.
    
    Return an integer denoting the maximum possible sum of elements in a balanced subsequence of nums.
    
    A subsequence of an array is a new non-empty array that is formed from the original array by deleting some (possibly none) of the elements without disturbing the relative positions of the remaining elements.
    
    Example 1:
    
    Input: nums = [3,3,5,6]
    Output: 14
    Explanation: In this example, the subsequence [3,5,6] consisting of indices 0, 2, and 3 can be selected.
    nums[2] - nums[0] >= 2 - 0.
    nums[3] - nums[2] >= 3 - 2.
    Hence, it is a balanced subsequence, and its sum is the maximum among the balanced subsequences of nums.
    The subsequence consisting of indices 1, 2, and 3 is also valid.
    It can be shown that it is not possible to get a balanced subsequence with a sum greater than 14.
    
    Example 2:
    
    Input: nums = [5,-1,-3,8]
    Output: 13
    Explanation: In this example, the subsequence [5,8] consisting of indices 0 and 3 can be selected.
    nums[3] - nums[0] >= 3 - 0.
    Hence, it is a balanced subsequence, and its sum is the maximum among the balanced subsequences of nums.
    It can be shown that it is not possible to get a balanced subsequence with a sum greater than 13.
    
    Example 3:
    
    Input: nums = [-2,-1]
    Output: -1
    Explanation: In this example, the subsequence [-1] can be selected.
    It is a balanced subsequence, and its sum is the maximum among the balanced subsequences of nums.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * -109 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 3, 5, 6]) == 14
    assert candidate([5, -1, -3, 8]) == 13
    assert candidate([-2, -1]) == -1
    assert candidate([0]) == 0
    assert candidate([-47]) == -47
    assert candidate([-8]) == -8
    assert candidate([-7]) == -7
    assert candidate([-6]) == -6
    assert candidate([-5]) == -5
    assert candidate([-3]) == -3
    assert candidate([-2]) == -2
    assert candidate([-1]) == -1
    assert candidate([1]) == 1
    assert candidate([3]) == 3
    assert candidate([4]) == 4
    assert candidate([5]) == 5
    assert candidate([7]) == 7
    assert candidate([8]) == 8
    assert candidate([9]) == 9
    assert candidate([45]) == 45
    assert candidate([-9, -5]) == -5
    assert candidate([-6, 8]) == 8
    assert candidate([-5, -1]) == -1
    assert candidate([-5, 0]) == 0
    assert candidate([-3, -1]) == -1
    assert candidate([-2, 3]) == 3
    assert candidate([-1, -5]) == -1
    assert candidate([-1, 0]) == 0
    assert candidate([-1, 3]) == 3
    assert candidate([0, -3]) == 0
    assert candidate([0, 5]) == 5
    assert candidate([2, 7]) == 9
    assert candidate([5, -1]) == 5
    assert candidate([6, -8]) == 6
    assert candidate([7, -2]) == 7
    assert candidate([7, 2]) == 7
    assert candidate([8, -9]) == 8
    assert candidate([9, -9]) == 9
    assert candidate([-43, 23, -49]) == 23
    assert candidate([-9, -6, -5]) == -5
    assert candidate([-9, -2, 4]) == 4
    assert candidate([-9, 5, -6]) == 5
    assert candidate([-8, 9, -9]) == 9
    assert candidate([-5, -1, -9]) == -1
    assert candidate([-4, -9, 3]) == 3
    assert candidate([-4, -2, -7]) == -2
    assert candidate([-3, -4, -2]) == -2
    assert candidate([-2, -1, -2]) == -1
    assert candidate([-1, -6, 1]) == 1
    assert candidate([0, -6, -4]) == 0
    assert candidate([0, -5, 4]) == 4
    assert candidate([1, -4, 4]) == 5
    assert candidate([4, 1, -8]) == 4
    assert candidate([5, -6, -8]) == 5
    assert candidate([5, -4, -5]) == 5
    assert candidate([6, -3, 9]) == 15
    assert candidate([6, 0, 2]) == 6
    assert candidate([7, -6, 0]) == 7
    assert candidate([8, -7, 2]) == 8
    assert candidate([14, -21, -18]) == 14
    assert candidate([-9, 7, -8, 1]) == 7
    assert candidate([-8, 2, -5, -7]) == 2
    assert candidate([-7, 1, -2, -8]) == 1
    assert candidate([-6, -8, 7, -3]) == 7
    assert candidate([-5, -1, 0, 6]) == 6
    assert candidate([-4, 8, 9, 2]) == 17
    assert candidate([-4, 9, 7, -4]) == 9
    assert candidate([-2, -6, 0, -5]) == 0
    assert candidate([-2, -3, 9, 3]) == 9
    assert candidate([0, -6, -3, 5]) == 5
    assert candidate([0, 1, 0, -2]) == 1
    assert candidate([1, -7, -8, 6]) == 7
    assert candidate([3, -7, 9, -3]) == 12
    assert candidate([3, -7, 9, 2]) == 12
    assert candidate([4, -8, -1, 8]) == 12
    assert candidate([5, 4, 1, 0]) == 5
    assert candidate([7, 7, -9, -4]) == 7
    assert candidate([8, 0, 4, -2]) == 8
    assert candidate([9, 7, -2, 1]) == 9
    assert candidate([34, 34, 32, 33]) == 65
    assert candidate([-9, -6, -8, -2, 4]) == 4
    assert candidate([-9, -5, 2, 2, 7]) == 9
    assert candidate([-9, -2, -6, 0, 6]) == 6
    assert candidate([-7, 0, -8, -9, -3]) == 0
    assert candidate([-7, 0, 9, -4, 9]) == 9
    assert candidate([-6, -2, -8, -4, -8]) == -2
    assert candidate([-6, 2, -3, 0, -5]) == 2
    assert candidate([-6, 3, -6, -3, -2]) == 3
    assert candidate([-5, -9, 1, 3, -5]) == 4
    assert candidate([-5, 1, 5, -5, -1]) == 6
    assert candidate([-3, 7, 0, 4, 6]) == 10
    assert candidate([-2, -2, 9, -2, -8]) == 9
    assert candidate([0, -6, -9, -8, -3]) == 0
    assert candidate([0, -2, -7, -1, -8]) == 0
    assert candidate([0, -1, -4, -6, -9]) == 0
    assert candidate([1, -3, -8, 9, -9]) == 10
    assert candidate([2, -6, -2, 0, -3]) == 2
    assert candidate([2, 9, -4, 4, 2]) == 11
    assert candidate([4, -1, 5, -1, -7]) == 5
    assert candidate([4, 6, -8, -8, -5]) == 10


def test_check():
    check(maxBalancedSubsequenceSum)


### Metadata below ###
# question_id = 3184
# question_title = Maximum Balanced Subsequence Sum
# question_title_slug = maximum-balanced-subsequence-sum
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 133
# question_dislikes = 6