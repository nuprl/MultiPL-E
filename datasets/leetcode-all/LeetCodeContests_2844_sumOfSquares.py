from typing import List

def sumOfSquares(nums: List[int]) -> int:
    """
    You are given a 1-indexed integer array nums of length n.
    
    An element nums[i] of nums is called special if i divides n, i.e. n % i == 0.
    
    Return the sum of the squares of all special elements of nums.
    
    Example 1:
    
    Input: nums = [1,2,3,4]
    Output: 21
    Explanation: There are exactly 3 special elements in nums: nums[1] since 1 divides 4, nums[2] since 2 divides 4, and nums[4] since 4 divides 4.
    Hence, the sum of the squares of all special elements of nums is nums[1] * nums[1] + nums[2] * nums[2] + nums[4] * nums[4] = 1 * 1 + 2 * 2 + 4 * 4 = 21.
    
    Example 2:
    
    Input: nums = [2,7,1,19,18,3]
    Output: 63
    Explanation: There are exactly 4 special elements in nums: nums[1] since 1 divides 6, nums[2] since 2 divides 6, nums[3] since 3 divides 6, and nums[6] since 6 divides 6.
    Hence, the sum of the squares of all special elements of nums is nums[1] * nums[1] + nums[2] * nums[2] + nums[3] * nums[3] + nums[6] * nums[6] = 2 * 2 + 7 * 7 + 1 * 1 + 3 * 3 = 63.
    
    
    Constraints:
    
     * 1 <= nums.length == n <= 50
     * 1 <= nums[i] <= 50
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4]) == 21
    assert candidate([2, 7, 1, 19, 18, 3]) == 63
    assert candidate([1]) == 1
    assert candidate([2]) == 4
    assert candidate([3]) == 9
    assert candidate([4]) == 16
    assert candidate([5]) == 25
    assert candidate([6]) == 36
    assert candidate([7]) == 49
    assert candidate([8]) == 64
    assert candidate([9]) == 81
    assert candidate([10]) == 100
    assert candidate([11]) == 121
    assert candidate([12]) == 144
    assert candidate([13]) == 169
    assert candidate([14]) == 196
    assert candidate([15]) == 225
    assert candidate([16]) == 256
    assert candidate([17]) == 289
    assert candidate([18]) == 324
    assert candidate([19]) == 361
    assert candidate([20]) == 400
    assert candidate([21]) == 441
    assert candidate([22]) == 484
    assert candidate([23]) == 529
    assert candidate([24]) == 576
    assert candidate([25]) == 625
    assert candidate([26]) == 676
    assert candidate([27]) == 729
    assert candidate([28]) == 784
    assert candidate([29]) == 841
    assert candidate([30]) == 900
    assert candidate([31]) == 961
    assert candidate([32]) == 1024
    assert candidate([33]) == 1089
    assert candidate([34]) == 1156
    assert candidate([35]) == 1225
    assert candidate([36]) == 1296
    assert candidate([37]) == 1369
    assert candidate([38]) == 1444
    assert candidate([39]) == 1521
    assert candidate([40]) == 1600
    assert candidate([41]) == 1681
    assert candidate([42]) == 1764
    assert candidate([43]) == 1849
    assert candidate([44]) == 1936
    assert candidate([45]) == 2025
    assert candidate([46]) == 2116
    assert candidate([47]) == 2209
    assert candidate([48]) == 2304
    assert candidate([49]) == 2401
    assert candidate([50]) == 2500
    assert candidate([16, 16]) == 512
    assert candidate([13, 36]) == 1465
    assert candidate([40, 37]) == 2969
    assert candidate([33, 42]) == 2853
    assert candidate([46, 9]) == 2197
    assert candidate([30, 14]) == 1096
    assert candidate([5, 41]) == 1706
    assert candidate([17, 9]) == 370
    assert candidate([29, 21]) == 1282
    assert candidate([4, 38]) == 1460
    assert candidate([14, 18]) == 520
    assert candidate([11, 7]) == 170
    assert candidate([11, 36]) == 1417
    assert candidate([18, 26]) == 1000
    assert candidate([37, 46]) == 3485
    assert candidate([13, 33]) == 1258
    assert candidate([39, 1]) == 1522
    assert candidate([37, 16]) == 1625
    assert candidate([22, 34]) == 1640
    assert candidate([4, 50]) == 2516
    assert candidate([42, 40]) == 3364
    assert candidate([7, 44]) == 1985
    assert candidate([21, 27]) == 1170
    assert candidate([49, 35]) == 3626
    assert candidate([32, 20]) == 1424
    assert candidate([30, 12]) == 1044
    assert candidate([50, 42]) == 4264
    assert candidate([3, 11]) == 130
    assert candidate([38, 17]) == 1733
    assert candidate([50, 32]) == 3524
    assert candidate([12, 35]) == 1369
    assert candidate([9, 32]) == 1105
    assert candidate([6, 11]) == 157
    assert candidate([11, 39]) == 1642
    assert candidate([18, 29]) == 1165
    assert candidate([44, 29]) == 2777
    assert candidate([50, 13]) == 2669
    assert candidate([46, 46]) == 4232
    assert candidate([27, 5]) == 754
    assert candidate([12, 13]) == 313
    assert candidate([10, 46]) == 2216
    assert candidate([37, 32]) == 2393
    assert candidate([26, 33]) == 1765
    assert candidate([44, 3]) == 1945
    assert candidate([9, 16]) == 337
    assert candidate([7, 21]) == 490
    assert candidate([23, 33]) == 1618
    assert candidate([22, 5]) == 509


def test_check():
    check(sumOfSquares)


### Metadata below ###
# question_id = 2844
# question_title = Sum of Squares of Special Elements 
# question_title_slug = sum-of-squares-of-special-elements
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 218
# question_dislikes = 65