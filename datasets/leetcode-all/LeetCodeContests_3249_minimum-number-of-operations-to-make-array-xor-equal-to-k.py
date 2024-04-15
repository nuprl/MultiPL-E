from typing import List

def minOperations(nums: List[int], k: int) -> int:
    """
    You are given a 0-indexed integer array nums and a positive integer k.
    You can apply the following operation on the array any number of times:
    
    Choose any element of the array and flip a bit in its binary representation. Flipping a bit means changing a 0 to 1 or vice versa.
    
    Return the minimum number of operations required to make the bitwise XOR of all elements of the final array equal to k.
    Note that you can flip leading zero bits in the binary representation of elements. For example, for the number (101)2 you can flip the fourth bit and obtain (1101)2.
    
    Example 1:
    
    Input: nums = [2,1,3,4], k = 1
    Output: 2
    Explanation: We can do the following operations:
    - Choose element 2 which is 3 == (011)2, we flip the first bit and we obtain (010)2 == 2. nums becomes [2,1,2,4].
    - Choose element 0 which is 2 == (010)2, we flip the third bit and we obtain (110)2 = 6. nums becomes [6,1,2,4].
    The XOR of elements of the final array is (6 XOR 1 XOR 2 XOR 4) == 1 == k.
    It can be shown that we cannot make the XOR equal to k in less than 2 operations.
    
    Example 2:
    
    Input: nums = [2,0,2,0], k = 0
    Output: 0
    Explanation: The XOR of elements of the array is (2 XOR 0 XOR 2 XOR 0) == 0 == k. So no operation is needed.
    
    
    Constraints:
    
    1 <= nums.length <= 105
    0 <= nums[i] <= 106
    0 <= k <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 1, 3, 4], 1) == 2
    assert candidate([2, 0, 2, 0], 0) == 0
    assert candidate([4], 7) == 2
    assert candidate([3, 13, 9, 8, 5, 18, 11, 10], 13) == 2
    assert candidate([9, 7, 9, 14, 8, 6], 12) == 3
    assert candidate([13, 9, 10, 16, 11, 8, 1], 17) == 3
    assert candidate([12, 14], 1) == 2
    assert candidate([18, 18], 20) == 2
    assert candidate([3, 5, 1, 1], 19) == 3
    assert candidate([7, 0, 0, 0], 8) == 4
    assert candidate([13, 15, 19, 18, 2, 9, 18, 11, 0, 7], 6) == 1
    assert candidate([9, 15, 19, 15, 10, 15, 14, 0, 2, 5], 20) == 1
    assert candidate([19, 4, 19, 6, 3, 19, 14, 4, 16, 12], 4) == 0
    assert candidate([2, 10, 5, 5, 12, 3, 14, 6, 11, 14], 3) == 2
    assert candidate([11, 20], 10) == 3
    assert candidate([10, 12, 5, 3, 16, 0], 1) == 2
    assert candidate([0, 4, 4, 7, 14, 13], 1) == 2
    assert candidate([16, 2, 20, 13, 15, 20, 13], 16) == 3
    assert candidate([19, 11, 11, 0, 16, 2, 2, 0, 9], 4) == 3
    assert candidate([10, 17, 19, 8, 15], 19) == 3
    assert candidate([8, 17, 7, 18], 6) == 2
    assert candidate([10, 20], 7) == 3
    assert candidate([11, 14, 5, 9, 19, 3, 1], 10) == 2
    assert candidate([19, 13, 16], 4) == 2
    assert candidate([12, 18, 13, 2, 1, 5, 8, 5, 8, 6], 7) == 2
    assert candidate([15], 9) == 2
    assert candidate([8, 5, 4, 5, 13, 18], 0) == 3
    assert candidate([9, 18], 3) == 2
    assert candidate([6, 9, 15, 17, 16], 19) == 2
    assert candidate([14, 0, 17], 2) == 4
    assert candidate([12, 1, 14, 13], 4) == 2
    assert candidate([4, 10, 6, 10, 10, 16], 18) == 2
    assert candidate([2, 11, 6, 12, 2, 15, 4, 8, 11], 3) == 2
    assert candidate([7, 3, 12, 5, 1, 12, 8], 11) == 2
    assert candidate([11, 14, 18, 14, 6, 18, 4, 16, 20, 5], 16) == 2
    assert candidate([20, 2, 6, 0, 7], 20) == 2
    assert candidate([9, 18, 19, 16, 8, 11, 15], 14) == 3
    assert candidate([0, 3, 20, 0, 15, 7, 17, 4], 3) == 2
    assert candidate([15, 6], 8) == 1
    assert candidate([2, 7, 13, 16, 2, 2], 15) == 4
    assert candidate([2, 12, 11, 11, 2, 12], 17) == 2
    assert candidate([10, 8, 10], 11) == 2
    assert candidate([1, 10, 2, 13], 0) == 1
    assert candidate([1, 20, 4, 19, 12, 18, 5, 3, 11, 8], 14) == 4
    assert candidate([16, 12, 12], 20) == 1
    assert candidate([2, 1, 7, 3, 4, 9], 6) == 2
    assert candidate([20, 0, 19, 14, 7, 0], 18) == 3
    assert candidate([0, 15, 9, 1, 15], 11) == 2
    assert candidate([9, 11, 8, 20, 10], 0) == 2
    assert candidate([2, 10, 2, 14, 7, 13, 4, 9, 2], 20) == 3
    assert candidate([7, 12, 8], 14) == 3
    assert candidate([20, 11, 5, 8, 1, 8, 4, 16], 7) == 1
    assert candidate([8, 2, 19, 9, 8], 9) == 2
    assert candidate([17], 8) == 3
    assert candidate([19, 6], 13) == 2
    assert candidate([12, 3, 20, 19], 4) == 2
    assert candidate([4, 10, 18, 17, 20, 6, 4], 10) == 2
    assert candidate([8, 6, 12, 6, 6], 4) == 2
    assert candidate([18, 12, 9, 18, 12, 12, 1], 12) == 1
    assert candidate([14, 4, 0, 18, 18, 8, 4, 9], 17) == 4
    assert candidate([7, 16, 16, 6], 19) == 2
    assert candidate([7, 16, 2, 13, 0, 17, 16], 18) == 3
    assert candidate([3, 17, 4, 2, 3, 9], 12) == 2
    assert candidate([13, 14, 9, 19, 5, 13], 8) == 3
    assert candidate([4, 15, 10, 15, 11, 1, 3, 5, 18, 13], 16) == 3
    assert candidate([9, 7, 8], 11) == 3
    assert candidate([7, 4, 6, 20, 9, 9, 6, 6], 10) == 4
    assert candidate([1, 9, 13, 19, 19, 0, 16, 20, 4], 2) == 3
    assert candidate([20, 3, 9, 6, 5, 8], 20) == 1
    assert candidate([11, 20, 5, 16, 15, 11, 8], 11) == 3
    assert candidate([12, 10, 16, 18, 17, 4, 2, 19, 17, 2], 19) == 0
    assert candidate([15, 2], 10) == 3
    assert candidate([13, 3, 10, 2, 9, 13, 5, 11, 5], 20) == 4
    assert candidate([20, 12, 9, 3, 2, 11], 13) == 3
    assert candidate([3, 19, 0, 18, 6], 15) == 3
    assert candidate([12, 6], 18) == 2
    assert candidate([10, 11, 12, 6, 10, 1, 15], 8) == 3
    assert candidate([12, 8, 1, 16, 6, 12], 2) == 4
    assert candidate([11, 5, 9], 2) == 2
    assert candidate([2, 7], 6) == 2
    assert candidate([20, 1], 8) == 4
    assert candidate([9], 16) == 3
    assert candidate([9, 5, 7, 11, 8, 18, 5, 1, 4], 8) == 2
    assert candidate([1, 8, 7, 19, 3, 20, 13, 9, 10], 1) == 2
    assert candidate([19, 18, 6], 8) == 4
    assert candidate([19, 12, 3, 18, 12, 19, 5, 20], 0) == 0
    assert candidate([6, 18, 12, 9, 20], 13) == 1
    assert candidate([19, 5, 5, 7, 4, 7, 15], 7) == 5
    assert candidate([17, 7, 19], 18) == 4
    assert candidate([14, 13, 3, 15, 18, 20, 2, 9, 3], 14) == 4
    assert candidate([16, 10, 3, 2, 3, 19], 4) == 4
    assert candidate([2, 0, 8], 18) == 2
    assert candidate([19, 5, 5, 12, 20, 2, 10, 17], 12) == 4
    assert candidate([6, 0, 0, 1, 15, 9, 19, 12], 6) == 2
    assert candidate([8, 16, 13, 8, 18, 9, 16, 16, 19, 11], 12) == 2
    assert candidate([3, 7, 6, 7, 4, 3, 2], 2) == 1
    assert candidate([0, 2, 9], 10) == 1
    assert candidate([14, 10, 16, 9, 6, 13, 11, 13, 11, 16], 20) == 5
    assert candidate([13, 19, 0, 12, 11, 10, 11, 2, 6], 7) == 4
    assert candidate([6, 1, 4, 9, 1, 7, 11, 15, 15, 0], 8) == 4


def test_check():
    check(minOperations)


### Metadata below ###
# question_id = 3249
# question_title = Minimum Number of Operations to Make Array XOR Equal to K
# question_title_slug = minimum-number-of-operations-to-make-array-xor-equal-to-k
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 56
# question_dislikes = 4