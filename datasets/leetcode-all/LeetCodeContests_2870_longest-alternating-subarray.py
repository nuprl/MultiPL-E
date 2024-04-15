from typing import List

def alternatingSubarray(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums. A subarray s of length m is called alternating if:
    
     * m is greater than 1.
     * s1 = s0 + 1.
     * The 0-indexed subarray s looks like [s0, s1, s0, s1,...,s(m-1) % 2]. In other words, s1 - s0 = 1, s2 - s1 = -1, s3 - s2 = 1, s4 - s3 = -1, and so on up to s[m - 1] - s[m - 2] = (-1)m.
    
    Return the maximum length of all alternating subarrays present in nums or -1 if no such subarray exists.
    
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [2,3,4,3,4]
    Output: 4
    Explanation: The alternating subarrays are [3,4], [3,4,3], and [3,4,3,4]. The longest of these is [3,4,3,4], which is of length 4.
    
    Example 2:
    
    Input: nums = [4,5,6]
    Output: 2
    Explanation: [4,5] and [5,6] are the only two alternating subarrays. They are both of length 2.
    
    
    Constraints:
    
     * 2 <= nums.length <= 100
     * 1 <= nums[i] <= 104
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 3, 4, 3, 4]) == 4
    assert candidate([4, 5, 6]) == 2
    assert candidate([31, 32, 31, 32, 33]) == 4
    assert candidate([21, 9, 5]) == -1
    assert candidate([42, 43, 44, 43, 44, 43, 44, 45, 46]) == 6
    assert candidate([13, 14, 15, 14]) == 3
    assert candidate([74, 75, 74, 75, 74, 75, 74, 75]) == 8
    assert candidate([77, 78, 79, 78, 79, 78, 79, 78, 79, 80]) == 8
    assert candidate([88, 42, 53]) == -1
    assert candidate([64, 65, 64, 65, 64, 65, 66, 65, 66, 65]) == 6
    assert candidate([99, 100, 99, 100]) == 4
    assert candidate([21, 22]) == 2
    assert candidate([23, 24, 23, 24, 25, 24, 25, 24, 25]) == 6
    assert candidate([20, 9, 15, 15]) == -1
    assert candidate([92, 93, 92, 93, 92]) == 5
    assert candidate([24, 25, 26]) == 2
    assert candidate([51, 52, 53, 52, 53, 52, 53, 54, 53]) == 6
    assert candidate([65, 66, 65, 66, 67, 68, 69]) == 4
    assert candidate([29, 2, 5, 24]) == -1
    assert candidate([26, 27, 26, 27, 28, 27, 28, 27, 28]) == 6
    assert candidate([21, 22, 21, 22, 21, 22]) == 6
    assert candidate([94, 95, 94, 95, 94]) == 5
    assert candidate([82, 83, 84, 83, 84, 83, 84, 83]) == 7
    assert candidate([14, 30, 29, 49, 3, 23, 44, 21, 26, 52]) == -1
    assert candidate([4, 5, 4, 5, 6, 5, 6]) == 4
    assert candidate([62, 63]) == 2
    assert candidate([24, 25, 26, 25, 26, 25, 26, 25, 26]) == 8
    assert candidate([55, 56, 55, 56, 55, 56, 55, 56, 57, 56]) == 8
    assert candidate([52, 77, 42, 21]) == -1
    assert candidate([80, 81]) == 2
    assert candidate([50, 51, 50, 51, 50, 51, 50, 51, 50]) == 9
    assert candidate([83, 84, 83]) == 3
    assert candidate([17, 18, 17, 18, 19, 18, 19, 20, 19, 20]) == 4
    assert candidate([5, 14, 8, 12, 5, 4]) == -1
    assert candidate([35, 36, 35, 36, 35, 36, 35, 36, 35, 36]) == 10
    assert candidate([8, 9, 8, 9, 8, 9]) == 6
    assert candidate([59, 60]) == 2
    assert candidate([55, 56, 55]) == 3
    assert candidate([47, 46, 65, 37, 24, 54, 39, 70]) == -1
    assert candidate([45, 46, 45, 46, 45, 46, 45]) == 7
    assert candidate([78, 79, 78, 79, 78, 79, 78, 79, 80, 79]) == 8
    assert candidate([65, 66, 65, 66, 65, 66, 67, 68]) == 6
    assert candidate([62, 63, 62, 63, 62, 63]) == 6
    assert candidate([7, 10, 5, 2, 11, 3, 9, 12, 9, 11]) == -1
    assert candidate([79, 80, 79, 80, 79, 80]) == 6
    assert candidate([19, 20, 21, 20, 21, 22]) == 4
    assert candidate([84, 85, 86, 85, 86, 85, 86, 87, 88, 87]) == 6
    assert candidate([54, 55]) == 2
    assert candidate([71, 14, 24, 13, 21, 14, 18, 84, 37, 2]) == -1
    assert candidate([26, 27, 26]) == 3
    assert candidate([53, 54, 53, 54, 53]) == 5
    assert candidate([67, 68, 67, 68, 67, 68, 69, 70, 69, 70]) == 6
    assert candidate([85, 86, 85, 86, 85, 86, 85, 86, 85, 86]) == 10
    assert candidate([22, 16, 27, 22, 44, 10]) == -1
    assert candidate([27, 28, 27, 28, 27, 28, 27, 28, 29, 28]) == 8
    assert candidate([54, 55, 54, 55, 54, 55, 54, 55, 56, 57]) == 8
    assert candidate([24, 25, 26, 27, 28]) == 2
    assert candidate([55, 56]) == 2
    assert candidate([13, 6, 6, 8, 12, 7, 1]) == -1
    assert candidate([40, 41, 40, 41, 40, 41, 40, 41]) == 8
    assert candidate([10, 11, 10, 11, 10, 11, 12]) == 6
    assert candidate([58, 59, 58, 59]) == 4
    assert candidate([1, 15, 44, 74, 56, 41, 48, 71]) == -1
    assert candidate([89, 90, 89, 90, 89, 90]) == 6
    assert candidate([4, 5, 4, 5, 4, 5, 6]) == 6
    assert candidate([50, 51, 52, 53, 52, 53]) == 4
    assert candidate([44, 45, 46, 45, 46, 45, 46, 47, 48]) == 6
    assert candidate([16, 3, 25, 12, 2, 19, 1, 26]) == -1
    assert candidate([17, 18, 19, 20, 19, 20]) == 4
    assert candidate([91, 92, 93, 92, 93]) == 4
    assert candidate([28, 29, 28, 29, 28, 29, 30]) == 6
    assert candidate([88, 89, 88, 89, 88, 89]) == 6
    assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == -1
    assert candidate([32, 33, 32, 33, 32, 33, 34]) == 6
    assert candidate([61, 62, 61, 62, 63, 62, 63, 64, 63]) == 4
    assert candidate([6, 7, 6, 7]) == 4
    assert candidate([20, 21, 20, 21, 20]) == 5
    assert candidate([14, 6, 21]) == -1
    assert candidate([12, 13, 12, 13, 12, 13, 12, 13, 12]) == 9
    assert candidate([33, 34, 33, 34, 33, 34, 33]) == 7
    assert candidate([92, 93, 92]) == 3
    assert candidate([93, 94, 95, 94, 95, 96, 95, 96, 97]) == 4
    assert candidate([8, 4, 27]) == -1
    assert candidate([30, 31, 32, 31, 32, 33, 34, 33]) == 4
    assert candidate([26, 27, 26, 27, 26, 27]) == 6
    assert candidate([67, 68, 69]) == 2
    assert candidate([83, 84, 85, 84, 85]) == 4
    assert candidate([6, 26, 4, 2]) == -1
    assert candidate([81, 82, 81, 82, 81, 82, 81, 82, 83]) == 8
    assert candidate([58, 59]) == 2
    assert candidate([82, 83, 82, 83, 82, 83, 82, 83, 82]) == 9
    assert candidate([48, 49]) == 2
    assert candidate([8, 6, 2]) == -1
    assert candidate([69, 70, 69, 70, 69, 70, 69, 70, 69]) == 9
    assert candidate([28, 29, 28, 29]) == 4
    assert candidate([82, 83, 82, 83, 84]) == 4
    assert candidate([97, 98, 97, 98, 97, 98, 97]) == 7
    assert candidate([2, 2, 1]) == -1
    assert candidate([84, 85, 84, 85, 84, 85, 84]) == 7
    assert candidate([21, 22, 21, 22]) == 4


def test_check():
    check(alternatingSubarray)


### Metadata below ###
# question_id = 2870
# question_title = Longest Alternating Subarray
# question_title_slug = longest-alternating-subarray
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 181
# question_dislikes = 153