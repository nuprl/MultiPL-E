from typing import List

def hasTrailingZeros(nums: List[int]) -> bool:
    """
    You are given an array of positive integers nums.
    You have to check if it is possible to select two or more elements in the array such that the bitwise OR of the selected elements has at least one trailing zero in its binary representation.
    For example, the binary representation of 5, which is "101", does not have any trailing zeros, whereas the binary representation of 4, which is "100", has two trailing zeros.
    Return true if it is possible to select two or more elements whose bitwise OR has trailing zeros, return false otherwise.
    
    Example 1:
    
    Input: nums = [1,2,3,4,5]
    Output: true
    Explanation: If we select the elements 2 and 4, their bitwise OR is 6, which has the binary representation "110" with one trailing zero.
    
    Example 2:
    
    Input: nums = [2,4,8,16]
    Output: true
    Explanation: If we select the elements 2 and 4, their bitwise OR is 6, which has the binary representation "110" with one trailing zero.
    Other possible ways to select elements to have trailing zeroes in the binary representation of their bitwise OR are: (2, 8), (2, 16), (4, 8), (4, 16), (8, 16), (2, 4, 8), (2, 4, 16), (2, 8, 16), (4, 8, 16), and (2, 4, 8, 16).
    
    Example 3:
    
    Input: nums = [1,3,5,7,9]
    Output: false
    Explanation: There is no possible way to select two or more elements to have trailing zeros in the binary representation of their bitwise OR.
    
    
    Constraints:
    
    2 <= nums.length <= 100
    1 <= nums[i] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5]) == True
    assert candidate([1, 3, 5, 7, 9]) == False
    assert candidate([1, 2]) == False
    assert candidate([2, 4, 8, 16]) == True
    assert candidate([1, 3]) == False
    assert candidate([1, 7]) == False
    assert candidate([3, 3]) == False
    assert candidate([3, 4]) == False
    assert candidate([2, 2]) == True
    assert candidate([4, 8]) == True
    assert candidate([4, 32]) == True
    assert candidate([6, 2]) == True
    assert candidate([6, 8]) == True
    assert candidate([3, 9]) == False
    assert candidate([4, 3]) == False
    assert candidate([5, 6]) == False
    assert candidate([7, 9]) == False
    assert candidate([8, 2]) == True
    assert candidate([8, 4]) == True
    assert candidate([7, 10]) == False
    assert candidate([9, 73]) == False
    assert candidate([8, 8]) == True
    assert candidate([10, 5]) == False
    assert candidate([11, 17]) == False
    assert candidate([19, 11]) == False
    assert candidate([19, 35]) == False
    assert candidate([19, 51]) == False
    assert candidate([21, 61]) == False
    assert candidate([23, 21]) == False
    assert candidate([25, 25]) == False
    assert candidate([10, 2]) == True
    assert candidate([12, 8]) == True
    assert candidate([27, 77]) == False
    assert candidate([16, 4]) == True
    assert candidate([16, 8]) == True
    assert candidate([16, 16]) == True
    assert candidate([16, 32]) == True
    assert candidate([29, 13]) == False
    assert candidate([37, 69]) == False
    assert candidate([39, 53]) == False
    assert candidate([24, 32]) == True
    assert candidate([32, 32]) == True
    assert candidate([42, 9]) == False
    assert candidate([45, 24]) == False
    assert candidate([64, 16]) == True
    assert candidate([49, 23]) == False
    assert candidate([4, 6, 4]) == True
    assert candidate([8, 16, 4]) == True
    assert candidate([57, 27]) == False
    assert candidate([8, 16, 16]) == True
    assert candidate([10, 4, 6]) == True
    assert candidate([12, 8, 8]) == True
    assert candidate([63, 47]) == False
    assert candidate([67, 69]) == False
    assert candidate([69, 87]) == False
    assert candidate([16, 8, 4]) == True
    assert candidate([77, 49]) == False
    assert candidate([89, 31]) == False
    assert candidate([1, 3, 4]) == False
    assert candidate([1, 5, 3]) == False
    assert candidate([1, 7, 9]) == False
    assert candidate([3, 69, 59]) == False
    assert candidate([16, 16, 16]) == True
    assert candidate([6, 5, 5]) == False
    assert candidate([7, 77, 9]) == False
    assert candidate([9, 77, 51]) == False
    assert candidate([16, 32, 8]) == True
    assert candidate([16, 32, 16]) == True
    assert candidate([10, 1, 9]) == False
    assert candidate([10, 7, 5]) == False
    assert candidate([11, 23, 27]) == False
    assert candidate([15, 13, 63]) == False
    assert candidate([21, 27, 79]) == False
    assert candidate([23, 23, 47]) == False
    assert candidate([35, 91, 15]) == False
    assert candidate([32, 4, 16]) == True
    assert candidate([32, 8, 48]) == True
    assert candidate([33, 40, 84]) == True
    assert candidate([41, 83, 53]) == False
    assert candidate([64, 48, 6]) == True
    assert candidate([75, 34, 58]) == True
    assert candidate([3, 8, 2, 3]) == True
    assert candidate([43, 15, 41]) == False
    assert candidate([43, 65, 79]) == False
    assert candidate([47, 7, 19]) == False
    assert candidate([4, 6, 1, 1]) == True
    assert candidate([4, 10, 1, 7]) == True
    assert candidate([49, 73, 81]) == False
    assert candidate([6, 3, 10, 6]) == True
    assert candidate([6, 4, 2, 8]) == True
    assert candidate([6, 12, 12, 24]) == True
    assert candidate([7, 2, 4, 4]) == True
    assert candidate([8, 6, 4, 32]) == True
    assert candidate([8, 12, 16, 2]) == True
    assert candidate([12, 64, 16, 8]) == True
    assert candidate([16, 4, 8, 16]) == True
    assert candidate([51, 33, 25]) == False
    assert candidate([16, 8, 64, 4]) == True
    assert candidate([16, 16, 12, 8]) == True
    assert candidate([51, 43, 9]) == False


def test_check():
    check(hasTrailingZeros)


### Metadata below ###
# question_id = 3246
# question_title = Check if Bitwise OR Has Trailing Zeros
# question_title_slug = check-if-bitwise-or-has-trailing-zeros
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 68
# question_dislikes = 5