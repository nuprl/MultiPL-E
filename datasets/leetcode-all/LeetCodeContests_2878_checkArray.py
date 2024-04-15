from typing import List

def checkArray(nums: List[int], k: int) -> bool:
    """
    You are given a 0-indexed integer array nums and a positive integer k.
    
    You can apply the following operation on the array any number of times:
    
     * Choose any subarray of size k from the array and decrease all its elements by 1.
    
    Return true if you can make all the array elements equal to 0, or false otherwise.
    
    A subarray is a contiguous non-empty part of an array.
    
    Example 1:
    
    Input: nums = [2,2,3,1,1,0], k = 3
    Output: true
    Explanation: We can do the following operations:
    - Choose the subarray [2,2,3]. The resulting array will be nums = [1,1,2,1,1,0].
    - Choose the subarray [2,1,1]. The resulting array will be nums = [1,1,1,0,0,0].
    - Choose the subarray [1,1,1]. The resulting array will be nums = [0,0,0,0,0,0].
    
    Example 2:
    
    Input: nums = [1,3,1,1], k = 2
    Output: false
    Explanation: It is not possible to make all the array elements equal to 0.
    
    
    Constraints:
    
     * 1 <= k <= nums.length <= 105
     * 0 <= nums[i] <= 106
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 1, 1], 2) == False
    assert candidate([2, 2, 3, 1, 1, 0], 3) == True
    assert candidate([24, 24, 14, 37, 31, 88, 94, 38, 94, 0, 100, 100, 4, 46, 5, 50, 0, 33, 22, 25, 0], 10) == False
    assert candidate([60, 72, 87, 89, 63, 52, 64, 62, 31, 37, 57, 83, 98, 94, 92, 77, 94, 91, 87, 100, 91, 91, 50, 26], 4) == True
    assert candidate([22, 4, 1, 25, 68, 30, 97, 99, 100, 22, 20, 39, 85, 68, 3, 1, 1, 74], 4) == False
    assert candidate([63, 40, 30, 0, 72, 53], 1) == True
    assert candidate([27, 99, 7, 1, 94, 63, 84, 46, 76, 35, 97, 77, 19, 72, 3], 2) == False
    assert candidate([60, 78, 96, 97, 97, 97, 49, 7, 97, 97, 97, 99, 97, 97, 97, 97, 85, 97, 97, 97, 37, 5, 1], 20) == False
    assert candidate([34, 34, 99, 93, 93, 26, 99, 100, 94, 94, 82, 86, 100, 100, 87, 100, 100, 100, 100, 100, 63, 100, 100, 66, 17, 10, 8, 7, 3, 1], 23) == False
    assert candidate([67, 98, 97, 99, 98, 97, 97, 96, 99, 99, 99, 42, 68, 18, 99, 44, 95, 79, 1, 16, 49, 1, 2, 2, 0], 16) == False
    assert candidate([59, 60, 99, 99, 99, 99, 99, 99, 99, 40, 39, 0], 9) == True
    assert candidate([12, 87, 91, 18], 3) == False
    assert candidate([0, 0, 51, 67, 80, 98, 88, 75, 89, 83, 100, 70, 77, 82, 57, 100, 80, 69, 19, 17], 3) == True
    assert candidate([22], 1) == True
    assert candidate([52, 92, 51, 24, 23, 79, 100, 94, 78, 96, 38, 14, 72, 27, 99, 94, 32, 67, 43, 31, 88, 8], 4) == False
    assert candidate([8, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 43, 0], 25) == True
    assert candidate([0, 0, 39, 84, 86, 94, 55, 10, 8, 0], 4) == True
    assert candidate([12, 79, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 95, 83, 16, 0], 24) == True
    assert candidate([15, 11, 99, 86, 58, 23, 82, 100, 100, 80, 58, 58, 84, 57, 0, 25, 6], 3) == False
    assert candidate([99, 0, 82, 66, 3, 25, 92, 41, 3, 0, 46], 7) == False
    assert candidate([18, 52, 56, 96, 98, 82, 76, 87, 2, 61, 88, 100], 2) == False
    assert candidate([0, 6, 100, 74, 4, 50, 100, 92, 18, 70, 15, 88, 0, 24], 9) == False
    assert candidate([0, 0, 33, 72, 86, 53, 14], 3) == True
    assert candidate([67, 0, 68, 97, 94], 3) == False
    assert candidate([0, 0, 8, 64, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 81, 25], 25) == True
    assert candidate([84, 0, 68, 95, 95, 0, 25, 0, 7, 71, 4, 68, 23, 97, 80, 0], 1) == True
    assert candidate([95, 92, 99, 99, 2, 100, 100, 100, 100, 100, 100, 100, 8, 57, 65, 69, 69, 100, 100, 100, 100, 100, 100, 100, 100, 0, 79, 72, 32], 12) == False
    assert candidate([7, 33, 97, 98, 100, 100, 74, 98, 95, 13, 39, 31, 82, 51, 28, 68, 37, 59, 21, 5, 66, 77, 89, 6, 0], 6) == False
    assert candidate([48, 48, 48, 48, 48], 5) == True
    assert candidate([42, 60, 56, 99, 72, 2, 100, 51, 65, 14, 13, 51, 1, 55, 56, 61, 99, 49, 96, 2], 3) == False
    assert candidate([8, 82, 98, 99, 66, 39, 71, 100, 81, 85, 100, 19, 96, 0, 2, 85, 40, 0, 19, 0], 11) == False
    assert candidate([92, 96, 96, 96, 97, 99, 99, 99, 99, 99, 99, 99, 99, 22, 18, 18, 18, 17, 15, 15, 15, 15, 15, 15, 15, 15], 13) == True
    assert candidate([89, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8], 12) == False
    assert candidate([4, 19, 0, 74, 0, 26, 94, 25, 99, 35, 0], 10) == False
    assert candidate([79, 4, 27, 35, 16, 27, 85, 92, 75, 99, 7, 98, 86, 92, 33, 8, 96, 44, 21, 52, 34], 4) == False
    assert candidate([75, 18, 0, 81, 18, 16, 51, 0], 1) == True
    assert candidate([74, 74, 74, 74, 74, 74, 74, 74, 74], 9) == True
    assert candidate([5, 5, 5, 9, 37, 81, 95, 95, 95, 98, 98, 99, 100, 100, 97, 99, 100, 96, 68, 24, 10, 10, 10, 7, 7, 6, 5, 5, 3, 1], 14) == True
    assert candidate([81, 100, 99, 99, 68, 66, 56, 100, 74, 63, 2, 84, 23, 67, 93, 92, 56, 90, 18, 57, 100, 33, 88, 26, 100, 72, 93, 57, 28, 17], 4) == False
    assert candidate([62, 76, 96, 12, 0, 20, 63, 29, 96, 97, 8, 18, 56], 1) == True
    assert candidate([31, 60, 97, 71, 53, 46, 63, 50, 91, 82, 40, 79, 96, 100, 55, 55, 57, 39, 50, 98, 72, 37, 27, 55], 3) == False
    assert candidate([100, 65, 78, 59, 17, 17], 1) == True
    assert candidate([57, 10, 53, 20, 40, 42, 64, 94, 82, 67, 100, 3, 22, 67, 95, 28, 61, 74, 67, 99, 100, 46, 67, 67, 76, 31, 99, 26, 85], 24) == False
    assert candidate([34, 76, 66, 48, 13, 89, 22, 24, 70, 17, 17, 42, 100, 2, 96, 8], 3) == False
    assert candidate([92, 94, 2, 6, 6], 2) == True
    assert candidate([100, 17, 95], 3) == False
    assert candidate([20, 27, 75, 96, 97, 84, 90, 77, 65, 64, 57, 44, 9, 0], 5) == True
    assert candidate([41, 39, 98, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 37, 5, 2, 1, 0, 0, 92, 0, 0, 0], 15) == False
    assert candidate([45, 90, 90, 99, 99, 99, 99, 99, 54, 9, 9, 0], 8) == True
    assert candidate([41, 18, 59, 3, 52, 59, 59, 55, 1, 34, 67, 1, 2, 13, 60, 40, 5, 0, 4, 47, 73, 96, 33, 59, 98], 24) == False
    assert candidate([53, 88, 96, 97, 97, 97, 97, 97, 97, 97, 44, 9, 1, 0], 10) == True
    assert candidate([90, 74, 13, 81, 34, 10, 29, 18, 61, 94, 43, 99, 86, 0], 11) == False
    assert candidate([44, 47, 72, 0, 0, 68, 97, 67], 1) == True
    assert candidate([77, 78, 19, 97, 79], 2) == True
    assert candidate([36, 61, 86, 61, 0, 61, 61, 61, 61, 61, 61, 61, 61, 65, 62, 61, 95, 61, 61, 61, 80, 66, 61, 61, 25], 24) == False
    assert candidate([0, 44, 92, 94, 94, 50, 95, 98, 98, 99, 6, 1, 54, 58, 94, 94, 41, 36], 4) == True
    assert candidate([60, 71, 76, 93, 98, 98, 98, 98, 38, 27, 22, 5], 8) == True
    assert candidate([94, 94, 99, 94, 86, 100, 32, 96, 59, 69, 99, 95, 75], 3) == False
    assert candidate([6, 55, 95, 95, 95, 96, 95, 95, 90, 5, 0], 8) == False
    assert candidate([62, 90, 90, 90, 99, 57, 61, 96, 96, 97, 99, 78, 84, 0], 5) == False
    assert candidate([57, 77, 91, 66, 46, 32], 3) == True
    assert candidate([86, 87, 92, 20, 42, 99, 100, 97, 17, 18, 48, 11, 60, 98, 96, 28, 59, 5, 18, 56, 62, 35, 100, 87, 51, 54, 77, 98, 61], 7) == False
    assert candidate([21, 26, 20, 2, 38, 22, 0, 96, 79, 93, 9, 67, 34], 12) == False
    assert candidate([92, 14, 95, 100, 53, 99, 100, 100, 50, 99, 99, 99, 93, 99, 100, 15, 71, 100, 7, 5, 48, 65, 6], 18) == False
    assert candidate([64, 14, 64, 8, 0, 83, 17, 68, 5, 98, 36], 7) == False
    assert candidate([50, 50, 50, 50, 93, 92, 84, 96, 96, 96, 96, 96, 96, 96, 96, 46, 46, 46, 46, 33, 4, 1, 0], 15) == False
    assert candidate([79, 90, 100, 96, 22, 2, 100, 10, 100, 100, 78, 85, 54, 7, 35, 97, 98, 98, 98, 98, 33, 38, 4, 14, 63, 23], 10) == False
    assert candidate([49, 74, 96, 93, 93, 99, 100, 95, 73, 100, 41, 95, 99, 22, 13, 52, 19, 13, 11, 80], 7) == False
    assert candidate([6, 100, 100, 100, 100, 100, 98, 4, 74, 89, 89, 89, 85, 85, 15], 6) == True
    assert candidate([69, 48, 8, 3, 82, 10, 88, 76, 32, 95, 68, 30, 97, 64, 32, 62, 86], 1) == True
    assert candidate([87, 87, 87], 3) == True
    assert candidate([88, 98, 99, 99, 100, 100, 58, 82, 85, 87, 86, 86, 40, 6, 2], 6) == True
    assert candidate([26, 26, 46, 46, 70, 70, 95, 97, 98, 98, 98, 72, 72, 52, 52, 28, 28, 3, 1], 11) == True
    assert candidate([25], 1) == True
    assert candidate([71, 87, 87, 96, 99, 36, 61, 87, 98, 97, 93, 96, 71, 59, 75, 71, 27, 26, 18], 5) == True
    assert candidate([39, 90, 15, 100, 52, 27, 100, 67, 99, 79, 4, 78, 95, 84, 2], 4) == False
    assert candidate([39, 39, 39, 39, 39, 39, 39, 39, 39, 39], 10) == True
    assert candidate([58, 72, 93, 99, 99, 64, 50, 29, 23, 23, 0, 0, 0, 0, 0], 5) == True
    assert candidate([30, 86, 23], 3) == False
    assert candidate([65, 69, 74, 79, 90, 95, 98, 99, 99, 99, 100, 100, 100, 100, 100, 100, 35, 31, 26, 21, 10, 5, 2, 1, 1, 1, 0, 0], 16) == True
    assert candidate([69, 2, 71, 4, 97, 97, 100, 26, 100, 100, 100, 100, 100, 77, 13, 8, 13, 3, 3, 72, 0, 0, 0], 13) == False
    assert candidate([77, 90, 94, 94, 98, 98, 28, 29, 36, 91, 91, 94, 87, 73, 80, 81, 77, 74, 74, 74, 56], 6) == True
    assert candidate([93], 1) == True
    assert candidate([70, 91, 100, 17, 80, 94, 35, 83, 33, 0], 4) == False
    assert candidate([79, 87, 87, 99, 50, 77, 97, 85, 92, 91, 71, 71, 34], 4) == True
    assert candidate([75, 9, 96, 100, 100, 77, 7, 99, 100, 99, 94, 71, 5, 78, 3, 8, 8, 7, 59, 8, 6], 10) == False
    assert candidate([36, 37, 69, 88, 88, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 60, 59, 27, 8, 8, 0], 21) == True
    assert candidate([94, 94, 96, 97, 98, 11, 64, 85, 84, 87, 98, 45, 65, 83, 79, 63, 74, 79, 61, 61, 59, 48], 5) == True
    assert candidate([80, 80, 98, 98, 98, 18, 18, 0, 0], 5) == True
    assert candidate([14, 100, 17, 100, 13, 85, 100, 100, 14, 100, 100, 1, 83, 0], 11) == False
    assert candidate([98, 74, 91, 70], 2) == False
    assert candidate([0, 29, 29, 93, 93, 93, 93, 93, 93, 93, 93, 93, 64, 64], 11) == True
    assert candidate([11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 0], 15) == True
    assert candidate([34, 89, 92, 96, 96, 98, 99, 98, 79, 4, 100, 100, 12, 99, 100, 44, 100, 66, 25, 8, 4, 98, 2, 1, 97, 70, 1, 15, 0, 88], 17) == False
    assert candidate([95, 95, 98, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 5, 5, 2, 1, 1, 1], 13) == True
    assert candidate([15, 58, 78, 10, 68, 49, 100, 94, 30, 14, 72], 5) == False
    assert candidate([9, 44, 70, 75, 28, 23, 11, 37, 69, 34, 61], 10) == False
    assert candidate([70, 51, 47, 100, 59, 66, 17, 98, 60], 4) == False
    assert candidate([92, 33, 58, 88], 2) == False
    assert candidate([99, 15, 91, 32, 7, 98], 3) == False


def test_check():
    check(checkArray)


### Metadata below ###
# question_id = 2878
# question_title = Apply Operations to Make All Array Elements Equal to Zero
# question_title_slug = apply-operations-to-make-all-array-elements-equal-to-zero
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 339
# question_dislikes = 19