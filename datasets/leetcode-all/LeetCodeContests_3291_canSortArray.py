from typing import List

def canSortArray(nums: List[int]) -> bool:
    """
    You are given a 0-indexed array of positive integers nums.
    In one operation, you can swap any two adjacent elements if they have the same number of set bits. You are allowed to do this operation any number of times (including zero).
    Return true if you can sort the array, else return false.
    
    Example 1:
    
    Input: nums = [8,4,2,30,15]
    Output: true
    Explanation: Let's look at the binary representation of every element. The numbers 2, 4, and 8 have one set bit each with binary representation "10", "100", and "1000" respectively. The numbers 15 and 30 have four set bits each with binary representation "1111" and "11110".
    We can sort the array using 4 operations:
    - Swap nums[0] with nums[1]. This operation is valid because 8 and 4 have one set bit each. The array becomes [4,8,2,30,15].
    - Swap nums[1] with nums[2]. This operation is valid because 8 and 2 have one set bit each. The array becomes [4,2,8,30,15].
    - Swap nums[0] with nums[1]. This operation is valid because 4 and 2 have one set bit each. The array becomes [2,4,8,30,15].
    - Swap nums[3] with nums[4]. This operation is valid because 30 and 15 have four set bits each. The array becomes [2,4,8,15,30].
    The array has become sorted, hence we return true.
    Note that there may be other sequences of operations which also sort the array.
    
    Example 2:
    
    Input: nums = [1,2,3,4,5]
    Output: true
    Explanation: The array is already sorted, hence we return true.
    
    Example 3:
    
    Input: nums = [3,16,8,4,2]
    Output: false
    Explanation: It can be shown that it is not possible to sort the input array using any number of operations.
    
    
    Constraints:
    
    1 <= nums.length <= 100
    1 <= nums[i] <= 28
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([8, 4, 2, 30, 15]) == True
    assert candidate([1, 2, 3, 4, 5]) == True
    assert candidate([1]) == True
    assert candidate([4]) == True
    assert candidate([3, 16, 8, 4, 2]) == False
    assert candidate([7]) == True
    assert candidate([10]) == True
    assert candidate([20, 16]) == False
    assert candidate([18]) == True
    assert candidate([21, 17]) == False
    assert candidate([30]) == True
    assert candidate([26, 10]) == False
    assert candidate([1, 2]) == True
    assert candidate([2, 28, 9]) == False
    assert candidate([2, 17]) == True
    assert candidate([18, 3, 8]) == False
    assert candidate([31, 18, 23]) == False
    assert candidate([75, 34, 30]) == False
    assert candidate([107, 76, 52]) == False
    assert candidate([125, 92, 159]) == False
    assert candidate([136, 256, 10]) == False
    assert candidate([160, 247, 127]) == False
    assert candidate([187, 4, 32]) == False
    assert candidate([197, 171, 144]) == False
    assert candidate([214, 200, 176]) == False
    assert candidate([222, 191, 39]) == False
    assert candidate([24, 12]) == True
    assert candidate([225, 163, 64]) == False
    assert candidate([128, 128]) == True
    assert candidate([229, 253, 127]) == False
    assert candidate([1, 2, 3]) == True
    assert candidate([1, 256, 64]) == True
    assert candidate([6, 6, 192]) == True
    assert candidate([239, 83, 71]) == False
    assert candidate([6, 96, 20]) == True
    assert candidate([247, 153, 90]) == False
    assert candidate([256, 255, 255]) == False
    assert candidate([1, 201, 251, 191]) == False
    assert candidate([4, 157, 191, 127]) == False
    assert candidate([8, 8, 2]) == True
    assert candidate([10, 34, 130]) == True
    assert candidate([12, 19, 1, 11]) == False
    assert candidate([10, 91, 127]) == True
    assert candidate([15, 8, 21, 25]) == False
    assert candidate([17, 25, 4, 27]) == False
    assert candidate([10, 130, 206]) == True
    assert candidate([14, 183, 251]) == True
    assert candidate([29, 20, 17, 4]) == False
    assert candidate([15, 147, 174]) == True
    assert candidate([16, 245, 125]) == True
    assert candidate([32, 12, 25, 19]) == False
    assert candidate([22, 21, 26]) == True
    assert candidate([23, 30, 32]) == True
    assert candidate([24, 72, 160]) == True
    assert candidate([33, 223, 239]) == True
    assert candidate([35, 143, 127, 254]) == False
    assert candidate([55, 147, 16, 8]) == False
    assert candidate([34, 52, 104]) == True
    assert candidate([100, 104, 96, 144]) == False
    assert candidate([129, 70, 126, 253]) == False
    assert candidate([129, 162, 158, 253]) == False
    assert candidate([145, 127, 55, 43]) == False
    assert candidate([36, 177, 244]) == True
    assert candidate([159, 111, 124, 233]) == False
    assert candidate([36, 213, 236]) == True
    assert candidate([175, 231, 27, 92]) == False
    assert candidate([205, 234, 127, 223]) == False
    assert candidate([215, 10, 8, 256]) == False
    assert candidate([223, 127, 172, 210]) == False
    assert candidate([38, 221, 224]) == True
    assert candidate([41, 14, 50]) == True
    assert candidate([41, 79, 239]) == True
    assert candidate([44, 124, 247]) == True
    assert candidate([225, 201, 121, 103]) == False
    assert candidate([232, 45, 175, 231]) == False
    assert candidate([250, 131, 50, 46]) == False
    assert candidate([254, 249, 173, 163]) == False
    assert candidate([255, 255, 214, 229]) == False
    assert candidate([256, 151, 141, 15]) == False
    assert candidate([47, 205, 182]) == True
    assert candidate([48, 64, 251]) == True
    assert candidate([51, 253, 254]) == True
    assert candidate([53, 172, 195]) == True
    assert candidate([57, 127, 251]) == True
    assert candidate([4, 98, 210, 79, 254]) == False
    assert candidate([59, 31, 236]) == True
    assert candidate([8, 5, 103, 247, 235]) == False
    assert candidate([8, 74, 170, 254, 132]) == False
    assert candidate([8, 148, 182, 62, 255]) == False
    assert candidate([62, 153, 210]) == True
    assert candidate([64, 93, 253]) == True
    assert candidate([9, 28, 18, 26, 11]) == False
    assert candidate([12, 208, 240, 216, 139]) == False
    assert candidate([13, 21, 23, 13, 32]) == False
    assert candidate([16, 24, 13, 46, 156]) == False
    assert candidate([16, 192, 71, 31, 239]) == False
    assert candidate([64, 195, 203]) == True
    assert candidate([65, 254, 239]) == True
    assert candidate([17, 11, 5, 20, 8]) == False
    assert candidate([23, 12, 22, 29, 20]) == False


def test_check():
    check(canSortArray)


### Metadata below ###
# question_id = 3291
# question_title = Find if Array Can Be Sorted
# question_title_slug = find-if-array-can-be-sorted
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 52
# question_dislikes = 7