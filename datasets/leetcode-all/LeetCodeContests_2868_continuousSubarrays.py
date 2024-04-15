from typing import List

def continuousSubarrays(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums. A subarray of nums is called continuous if:
    
     * Let i, i + 1, ..., j be the indices in the subarray. Then, for each pair of indices i <= i1, i2 <= j, 0 <= |nums[i1] - nums[i2]| <= 2.
    
    Return the total number of continuous subarrays.
    
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [5,4,2,4]
    Output: 8
    Explanation:
    Continuous subarray of size 1: [5], [4], [2], [4].
    Continuous subarray of size 2: [5,4], [4,2], [2,4].
    Continuous subarray of size 3: [4,2,4].
    Thereare no subarrys of size 4.
    Total continuous subarrays = 4 + 3 + 1 = 8.
    It can be shown that there are no more continuous subarrays.
    
    
    Example 2:
    
    Input: nums = [1,2,3]
    Output: 6
    Explanation:
    Continuous subarray of size 1: [1], [2], [3].
    Continuous subarray of size 2: [1,2], [2,3].
    Continuous subarray of size 3: [1,2,3].
    Total continuous subarrays = 3 + 2 + 1 = 6.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 1 <= nums[i] <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 4, 2, 4]) == 8
    assert candidate([1, 2, 3]) == 6
    assert candidate([31, 30, 31, 32]) == 10
    assert candidate([65, 66, 67, 66, 66, 65, 64, 65, 65, 64]) == 43
    assert candidate([42, 41, 42, 41, 41, 40, 39, 38]) == 28
    assert candidate([35, 35, 36, 37, 36, 37, 38, 37, 38]) == 39
    assert candidate([43, 44, 43, 44]) == 10
    assert candidate([14, 15, 15, 15, 16, 16, 16, 16, 15, 16]) == 55
    assert candidate([21]) == 1
    assert candidate([34, 34, 33, 34, 33, 33, 32, 31, 30, 31]) == 39
    assert candidate([58, 59, 59, 58, 59]) == 15
    assert candidate([10, 9, 8, 7, 8, 9, 9]) == 24
    assert candidate([65, 66, 65, 64, 63, 62, 62]) == 20
    assert candidate([65, 65, 64, 65, 66, 65]) == 21
    assert candidate([85, 84, 83, 84, 83, 82]) == 20
    assert candidate([60, 59, 60]) == 6
    assert candidate([96, 97, 98]) == 6
    assert candidate([21, 22, 23, 22, 23]) == 15
    assert candidate([76, 77, 77, 78, 77, 78, 78]) == 28
    assert candidate([27, 27, 27, 26, 26, 27, 27, 27, 27]) == 45
    assert candidate([17]) == 1
    assert candidate([95]) == 1
    assert candidate([62]) == 1
    assert candidate([10, 10, 9, 8, 9, 9, 9, 8, 8]) == 45
    assert candidate([21, 22, 22, 23, 24, 24, 23, 24, 23, 24]) == 49
    assert candidate([94, 94, 94, 94, 94, 93, 94]) == 28
    assert candidate([66, 65, 64, 64, 64, 65, 64, 63]) == 35
    assert candidate([35, 35, 36, 36, 35]) == 15
    assert candidate([35, 34, 33, 34, 35, 35, 34, 35, 34]) == 45
    assert candidate([70, 69, 70, 71, 70, 70, 71, 71]) == 36
    assert candidate([49, 49, 49, 50, 50, 49, 50, 51, 51]) == 45
    assert candidate([70, 71, 72, 72, 72]) == 15
    assert candidate([73, 73, 74, 75, 76, 76, 75, 76]) == 28
    assert candidate([74, 74, 74, 75, 76, 75, 75, 76, 77, 77]) == 49
    assert candidate([21, 21, 20, 19, 20, 20, 21, 21]) == 36
    assert candidate([86, 85]) == 3
    assert candidate([94, 95, 96, 96, 97, 98, 99, 100, 100]) == 28
    assert candidate([16, 17, 16]) == 6
    assert candidate([25, 26, 26, 27, 28, 27, 28, 28, 27, 27]) == 49
    assert candidate([54]) == 1
    assert candidate([94, 95, 96, 95, 94, 93, 92, 91]) == 24
    assert candidate([84, 84, 83]) == 6
    assert candidate([26, 26]) == 3
    assert candidate([53, 54, 54, 55]) == 10
    assert candidate([67, 67, 66, 67, 68, 69, 70, 71, 71]) == 28
    assert candidate([43, 42, 42, 42, 43]) == 15
    assert candidate([93, 94, 93]) == 6
    assert candidate([80, 80]) == 3
    assert candidate([54, 54, 53, 54, 55, 56, 57, 58, 59]) == 27
    assert candidate([52, 51, 50, 49, 48, 49, 48, 47, 46]) == 29
    assert candidate([93, 92, 91, 92, 92, 92, 92]) == 28
    assert candidate([91, 91, 90, 90, 90, 91, 91, 90]) == 36
    assert candidate([37, 37, 37, 36]) == 10
    assert candidate([40, 39, 39, 39, 39, 40, 40, 41, 40, 39]) == 55
    assert candidate([82, 83, 83, 83, 83, 84]) == 21
    assert candidate([35, 36, 36, 37, 37, 37, 36, 37, 36]) == 45
    assert candidate([50, 49, 50, 51, 50]) == 15
    assert candidate([86, 86, 86, 86, 87]) == 15
    assert candidate([52]) == 1
    assert candidate([96, 95, 94, 93]) == 9
    assert candidate([56, 56, 55, 55, 54, 55, 54, 54, 53, 52]) == 47
    assert candidate([91]) == 1
    assert candidate([91, 90, 91, 91]) == 10
    assert candidate([56, 55, 55, 55]) == 10
    assert candidate([1, 2, 2, 2, 1, 2, 3, 4, 4, 5]) == 39
    assert candidate([84, 85, 84, 84, 85, 85, 85]) == 28
    assert candidate([71, 71, 71, 71]) == 10
    assert candidate([47, 47, 46]) == 6
    assert candidate([65]) == 1
    assert candidate([20, 20, 19, 18]) == 10
    assert candidate([22, 23, 23, 22, 22, 22, 22]) == 28
    assert candidate([92, 92]) == 3
    assert candidate([93, 92, 92, 91, 90, 90, 89, 88]) == 27
    assert candidate([13, 13, 12, 11]) == 10
    assert candidate([22, 22, 22, 21, 22, 21]) == 21
    assert candidate([24, 25, 26, 26, 25, 26, 25, 25, 26]) == 45
    assert candidate([37, 36]) == 3
    assert candidate([52, 51]) == 3
    assert candidate([58]) == 1
    assert candidate([88, 88, 88, 87, 87, 87, 87, 88, 88]) == 45
    assert candidate([84, 83, 83, 84, 83, 82, 81]) == 24
    assert candidate([87, 88, 88, 87, 87, 88, 88, 89]) == 36
    assert candidate([28, 28, 27]) == 6
    assert candidate([82, 83, 83, 82]) == 10
    assert candidate([97, 96, 96, 95, 96, 95]) == 21
    assert candidate([72, 73, 73, 74, 73, 73]) == 21
    assert candidate([21, 21, 20]) == 6
    assert candidate([38, 38]) == 3
    assert candidate([24, 24, 24, 23, 22, 22, 22, 23]) == 36
    assert candidate([62, 62]) == 3
    assert candidate([11, 10, 9, 10, 11]) == 15
    assert candidate([34, 34, 35, 34, 35, 36, 36]) == 28
    assert candidate([73, 74, 75, 75]) == 10
    assert candidate([24, 23, 24, 24]) == 10
    assert candidate([21, 22, 22, 23, 22, 23, 22, 23, 23, 22]) == 55
    assert candidate([53, 53, 54, 54, 54]) == 15
    assert candidate([94, 95, 96, 96, 97, 97, 98, 99]) == 28
    assert candidate([89, 89, 89, 88, 87, 87]) == 21
    assert candidate([89, 90]) == 3
    assert candidate([18, 18]) == 3


def test_check():
    check(continuousSubarrays)


### Metadata below ###
# question_id = 2868
# question_title = Continuous Subarrays
# question_title_slug = continuous-subarrays
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 604
# question_dislikes = 17