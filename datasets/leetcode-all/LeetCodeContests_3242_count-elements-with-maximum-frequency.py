from typing import List

def maxFrequencyElements(nums: List[int]) -> int:
    """
    You are given an array nums consisting of positive integers.
    Return the total frequencies of elements in numssuch that those elements all have the maximum frequency.
    The frequency of an element is the number of occurrences of that element in the array.
    
    Example 1:
    
    Input: nums = [1,2,2,3,1,4]
    Output: 4
    Explanation: The elements 1 and 2 have a frequency of 2 which is the maximum frequency in the array.
    So the number of elements in the array with maximum frequency is 4.
    
    Example 2:
    
    Input: nums = [1,2,3,4,5]
    Output: 5
    Explanation: All elements of the array have a frequency of 1 which is the maximum.
    So the number of elements in the array with maximum frequency is 5.
    
    
    Constraints:
    
    1 <= nums.length <= 100
    1 <= nums[i] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 2, 3, 1, 4]) == 4
    assert candidate([1, 2, 3, 4, 5]) == 5
    assert candidate([15]) == 1
    assert candidate([10, 12, 11, 9, 6, 19, 11]) == 2
    assert candidate([2, 12, 17, 18, 11]) == 5
    assert candidate([19, 19, 19, 20, 19, 8, 19]) == 5
    assert candidate([1, 1, 1, 1]) == 4
    assert candidate([10, 1, 12, 10, 10, 19, 10]) == 4
    assert candidate([1, 1, 1, 20, 6, 1]) == 4
    assert candidate([17, 17]) == 2
    assert candidate([6, 13, 15, 15, 11, 6, 7, 12, 4, 11]) == 6
    assert candidate([1, 2]) == 2
    assert candidate([14, 14, 17]) == 2
    assert candidate([17, 17, 2, 12, 20, 17, 12]) == 3
    assert candidate([3, 9, 11, 11, 20]) == 2
    assert candidate([8, 15, 8, 11, 8, 13, 12, 11, 8]) == 4
    assert candidate([17, 8, 17, 19, 17, 13, 17, 17, 17, 5]) == 6
    assert candidate([11]) == 1
    assert candidate([5]) == 1
    assert candidate([4, 4, 10]) == 2
    assert candidate([15, 13, 2, 16, 2, 5, 1, 18, 8, 16]) == 4
    assert candidate([1, 17, 12, 7, 17, 3]) == 2
    assert candidate([8, 2, 8, 6, 1, 1]) == 4
    assert candidate([3, 9, 7, 9]) == 2
    assert candidate([20, 20, 20, 5, 12, 20, 9, 16]) == 4
    assert candidate([2, 14, 3, 8, 16, 4, 4, 3]) == 4
    assert candidate([6, 12, 3, 3, 11, 2]) == 2
    assert candidate([5, 2, 13, 19, 15, 20]) == 6
    assert candidate([2, 13, 13]) == 2
    assert candidate([4, 5]) == 2
    assert candidate([20, 20, 15, 20, 20, 20]) == 5
    assert candidate([16, 16, 16, 16, 1, 10, 16, 9]) == 5
    assert candidate([5, 3, 5, 8, 5, 3, 5, 15]) == 4
    assert candidate([17]) == 1
    assert candidate([2, 2, 3, 3, 9]) == 4
    assert candidate([5, 11, 4, 2]) == 4
    assert candidate([13, 13, 7]) == 2
    assert candidate([2, 15, 10, 10, 10, 4, 13]) == 3
    assert candidate([3, 7, 1]) == 3
    assert candidate([19, 6, 19, 19, 19, 19, 19]) == 6
    assert candidate([15, 3, 12, 4, 9, 14, 10]) == 7
    assert candidate([1, 19, 12, 1, 12, 12, 1, 6]) == 6
    assert candidate([17, 7, 3, 3, 6, 5, 6, 2]) == 4
    assert candidate([12, 4, 2, 9, 17, 14, 1, 12, 6]) == 2
    assert candidate([16, 11]) == 2
    assert candidate([11, 11, 11, 11, 10, 11, 3, 11, 11]) == 7
    assert candidate([16, 4, 20, 10, 12]) == 5
    assert candidate([3, 11, 3, 11]) == 4
    assert candidate([13, 9, 13, 13, 13, 13, 2, 13]) == 6
    assert candidate([2, 8, 9, 4, 3]) == 5
    assert candidate([19, 6, 9, 12, 12]) == 2
    assert candidate([20]) == 1
    assert candidate([1, 11]) == 2
    assert candidate([6, 4, 7, 19, 20, 10, 13, 14]) == 8
    assert candidate([16, 8, 5]) == 3
    assert candidate([15, 15, 4, 7, 15, 15, 15, 15, 15, 7]) == 7
    assert candidate([5, 20]) == 2
    assert candidate([13]) == 1
    assert candidate([7, 15, 13, 18, 3, 11, 13, 7, 1, 13]) == 3
    assert candidate([17, 5, 17, 5, 5]) == 3
    assert candidate([4, 5, 3, 5]) == 2
    assert candidate([11, 2]) == 2
    assert candidate([1, 17, 17, 20, 2, 2]) == 4
    assert candidate([2, 5, 2, 2]) == 3
    assert candidate([1, 1, 1, 3, 8, 1]) == 4
    assert candidate([1, 19, 19, 5, 14, 13, 1, 20, 6]) == 4
    assert candidate([19, 12, 8, 20, 3, 1, 12, 17]) == 2
    assert candidate([7, 15, 1, 1, 6, 3]) == 2
    assert candidate([8, 8, 8, 3, 8, 8, 3]) == 5
    assert candidate([5, 1, 2, 2, 2, 1, 1]) == 6
    assert candidate([12, 13, 6]) == 3
    assert candidate([18, 12, 8, 2, 16, 19]) == 6
    assert candidate([15, 10, 2, 18, 11, 14, 9]) == 7
    assert candidate([19, 17, 9, 13, 1, 13]) == 2
    assert candidate([4, 12, 15, 1, 4, 4, 2]) == 3
    assert candidate([16, 16, 16, 8]) == 3
    assert candidate([2]) == 1
    assert candidate([13, 15, 1]) == 3
    assert candidate([10, 10, 5, 16, 17, 6, 18]) == 2
    assert candidate([3, 2, 14, 2, 18, 7]) == 2
    assert candidate([16, 16, 3]) == 2
    assert candidate([1, 8, 10, 11, 8, 15]) == 2
    assert candidate([8, 19, 2, 7, 5, 6, 3, 4]) == 8
    assert candidate([9]) == 1
    assert candidate([13, 6, 13, 10]) == 2
    assert candidate([14, 13, 14, 4, 4, 14]) == 3
    assert candidate([9, 9, 1, 9, 9, 1]) == 4
    assert candidate([14, 4, 11, 14, 14, 4, 4]) == 6
    assert candidate([4, 20, 20, 4, 1]) == 4
    assert candidate([5, 11, 8, 3, 11, 11, 11]) == 4
    assert candidate([3, 2, 18, 5]) == 4
    assert candidate([3, 8, 20, 7, 16, 20, 18, 13]) == 2
    assert candidate([19, 9, 16, 4, 10, 3, 18]) == 7
    assert candidate([11, 2, 2, 3, 19, 3, 11, 2, 14, 1]) == 3
    assert candidate([19, 14, 11, 7, 19, 1, 11, 2, 16]) == 4
    assert candidate([18, 15, 3, 2, 8, 12, 19, 14, 12]) == 2
    assert candidate([5, 6, 11, 9, 5, 5, 5]) == 4
    assert candidate([8, 4, 4, 12, 8, 1]) == 4
    assert candidate([9, 1, 9, 9, 3]) == 3
    assert candidate([18]) == 1


def test_check():
    check(maxFrequencyElements)


### Metadata below ###
# question_id = 3242
# question_title = Count Elements With Maximum Frequency
# question_title_slug = count-elements-with-maximum-frequency
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 47
# question_dislikes = 2