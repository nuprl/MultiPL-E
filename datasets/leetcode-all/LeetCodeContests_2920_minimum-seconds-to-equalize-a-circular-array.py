from typing import List

def minimumSeconds(nums: List[int]) -> int:
    """
    You are given a 0-indexed array nums containing n integers.
    
    At each second, you perform the following operation on the array:
    
     * For every index i in the range [0, n - 1], replace nums[i] with either nums[i], nums[(i - 1 + n) % n], or nums[(i + 1) % n].
    
    Note that all the elements get replaced simultaneously.
    
    Return the minimum number of seconds needed to make all elements in the array nums equal.
    
    Example 1:
    
    Input: nums = [1,2,1,2]
    Output: 1
    Explanation: We can equalize the array in 1 second in the following way:
    - At 1st second, replace values at each index with [nums[3],nums[1],nums[3],nums[3]]. After replacement, nums = [2,2,2,2].
    It can be proven that 1 second is the minimum amount of seconds needed for equalizing the array.
    
    Example 2:
    
    Input: nums = [2,1,3,3,2]
    Output: 2
    Explanation: We can equalize the array in 2 seconds in the following way:
    - At 1st second, replace values at each index with [nums[0],nums[2],nums[2],nums[2],nums[3]]. After replacement, nums = [2,3,3,3,3].
    - At 2nd second, replace values at each index with [nums[1],nums[1],nums[2],nums[3],nums[4]]. After replacement, nums = [3,3,3,3,3].
    It can be proven that 2 seconds is the minimum amount of seconds needed for equalizing the array.
    
    Example 3:
    
    Input: nums = [5,5,5,5]
    Output: 0
    Explanation: We don't need to perform any operations as all elements in the initial array are the same.
    
    
    Constraints:
    
     * 1 <= n == nums.length <= 105
     * 1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 1, 2]) == 1
    assert candidate([2, 1, 3, 3, 2]) == 2
    assert candidate([5, 5, 5, 5]) == 0
    assert candidate([4, 18]) == 1
    assert candidate([11, 7]) == 1
    assert candidate([14, 2]) == 1
    assert candidate([14, 9]) == 1
    assert candidate([20, 1]) == 1
    assert candidate([17, 15]) == 1
    assert candidate([11, 13]) == 1
    assert candidate([7, 13]) == 1
    assert candidate([18, 17]) == 1
    assert candidate([15, 17]) == 1
    assert candidate([13, 8]) == 1
    assert candidate([12, 16]) == 1
    assert candidate([12, 8]) == 1
    assert candidate([18, 16]) == 1
    assert candidate([16, 16]) == 0
    assert candidate([6, 12]) == 1
    assert candidate([9, 6]) == 1
    assert candidate([2, 17]) == 1
    assert candidate([7, 5]) == 1
    assert candidate([15, 6]) == 1
    assert candidate([3, 14]) == 1
    assert candidate([6, 16]) == 1
    assert candidate([3, 16]) == 1
    assert candidate([11, 9]) == 1
    assert candidate([4, 15]) == 1
    assert candidate([16, 2]) == 1
    assert candidate([12, 7]) == 1
    assert candidate([7, 9]) == 1
    assert candidate([7, 3]) == 1
    assert candidate([8, 4]) == 1
    assert candidate([4, 11]) == 1
    assert candidate([6, 15]) == 1
    assert candidate([9, 7]) == 1
    assert candidate([19, 4]) == 1
    assert candidate([17, 6]) == 1
    assert candidate([18, 10]) == 1
    assert candidate([8, 3]) == 1
    assert candidate([11, 4, 10]) == 1
    assert candidate([5, 3, 13]) == 1
    assert candidate([2, 1, 15]) == 1
    assert candidate([17, 13, 9]) == 1
    assert candidate([2, 15, 12]) == 1
    assert candidate([16, 12, 13]) == 1
    assert candidate([1, 12, 19]) == 1
    assert candidate([4, 3, 3]) == 1
    assert candidate([15, 11, 3]) == 1
    assert candidate([15, 18, 16]) == 1
    assert candidate([20, 6, 7]) == 1
    assert candidate([9, 4, 7]) == 1
    assert candidate([20, 11, 6]) == 1
    assert candidate([11, 8, 16]) == 1
    assert candidate([1, 4, 12]) == 1
    assert candidate([18, 12, 19]) == 1
    assert candidate([8, 11, 5]) == 1
    assert candidate([6, 10, 6]) == 1
    assert candidate([3, 10, 16]) == 1
    assert candidate([15, 6, 15]) == 1
    assert candidate([9, 5, 1]) == 1
    assert candidate([15, 15, 18]) == 1
    assert candidate([3, 16, 13]) == 1
    assert candidate([9, 3, 6]) == 1
    assert candidate([4, 14, 9]) == 1
    assert candidate([15, 2, 20]) == 1
    assert candidate([13, 7, 19]) == 1
    assert candidate([19, 19, 12]) == 1
    assert candidate([8, 6, 1]) == 1
    assert candidate([19, 10, 19]) == 1
    assert candidate([6, 9, 17]) == 1
    assert candidate([3, 19, 8, 12]) == 2
    assert candidate([6, 9, 14, 16]) == 2
    assert candidate([19, 12, 14, 16]) == 2
    assert candidate([12, 20, 13, 19]) == 2
    assert candidate([12, 14, 13, 8]) == 2
    assert candidate([8, 13, 3, 3]) == 1
    assert candidate([5, 11, 7, 15]) == 2
    assert candidate([7, 11, 7, 5]) == 1
    assert candidate([1, 8, 7, 15]) == 2
    assert candidate([13, 1, 19, 3]) == 2
    assert candidate([19, 15, 19, 1]) == 1
    assert candidate([7, 13, 20, 9]) == 2
    assert candidate([1, 18, 16, 6]) == 2
    assert candidate([9, 16, 6, 13]) == 2
    assert candidate([11, 9, 5, 1]) == 2
    assert candidate([6, 3, 15, 10]) == 2
    assert candidate([12, 1, 9, 19]) == 2
    assert candidate([15, 14, 14, 19]) == 1
    assert candidate([2, 5, 13, 5]) == 1
    assert candidate([4, 8, 8, 13]) == 1
    assert candidate([3, 9, 10, 13]) == 2
    assert candidate([7, 17, 11, 8]) == 2
    assert candidate([4, 5, 15, 11]) == 2
    assert candidate([11, 15, 19, 12]) == 2
    assert candidate([8, 20, 5, 10]) == 2
    assert candidate([5, 3, 5, 17]) == 1
    assert candidate([14, 19, 8, 8]) == 1
    assert candidate([16, 20, 4, 13]) == 2
    assert candidate([17, 16, 2, 16]) == 1


def test_check():
    check(minimumSeconds)


### Metadata below ###
# question_id = 2920
# question_title = Minimum Seconds to Equalize a Circular Array
# question_title_slug = minimum-seconds-to-equalize-a-circular-array
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 481
# question_dislikes = 25