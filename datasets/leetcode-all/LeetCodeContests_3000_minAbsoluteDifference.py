from typing import List

def minAbsoluteDifference(nums: List[int], x: int) -> int:
    """
    You are given a 0-indexed integer array nums and an integer x.
    
    Find the minimum absolute difference between two elements in the array that are at least x indices apart.
    
    In other words, find two indices i and j such that abs(i - j) >= x and abs(nums[i] - nums[j]) is minimized.
    
    Return an integer denoting the minimum absolute difference between two elements that are at least x indices apart.
    
    Example 1:
    
    Input: nums = [4,3,2,4], x = 2
    Output: 0
    Explanation: We can select nums[0] = 4 and nums[3] = 4.
    They are at least 2 indices apart, and their absolute difference is the minimum, 0.
    It can be shown that 0 is the optimal answer.
    
    Example 2:
    
    Input: nums = [5,3,2,10,15], x = 1
    Output: 1
    Explanation: We can select nums[1] = 3 and nums[2] = 2.
    They are at least 1 index apart, and their absolute difference is the minimum, 1.
    It can be shown that 1 is the optimal answer.
    
    Example 3:
    
    Input: nums = [1,2,3,4], x = 3
    Output: 3
    Explanation: We can select nums[0] = 1 and nums[3] = 4.
    They are at least 3 indices apart, and their absolute difference is the minimum, 3.
    It can be shown that 3 is the optimal answer.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 1 <= nums[i] <= 109
     * 0 <= x < nums.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([4, 3, 2, 4], 2) == 0
    assert candidate([5, 3, 2, 10, 15], 1) == 1
    assert candidate([1, 2, 3, 4], 3) == 3
    assert candidate([1, 67], 1) == 66
    assert candidate([7, 398], 1) == 391
    assert candidate([12, 141], 1) == 129
    assert candidate([21, 75], 1) == 54
    assert candidate([22, 147], 1) == 125
    assert candidate([25, 197], 1) == 172
    assert candidate([27, 275], 1) == 248
    assert candidate([37, 192], 1) == 155
    assert candidate([41, 163], 1) == 122
    assert candidate([45, 49], 1) == 4
    assert candidate([48, 195], 1) == 147
    assert candidate([68, 68], 1) == 0
    assert candidate([71, 4], 1) == 67
    assert candidate([72, 169], 1) == 97
    assert candidate([74, 62], 1) == 12
    assert candidate([75, 1], 1) == 74
    assert candidate([76, 49], 1) == 27
    assert candidate([88, 72], 1) == 16
    assert candidate([99, 370], 1) == 271
    assert candidate([103, 39], 1) == 64
    assert candidate([109, 99], 1) == 10
    assert candidate([111, 161], 1) == 50
    assert candidate([113, 117], 1) == 4
    assert candidate([119, 184], 1) == 65
    assert candidate([122, 118], 1) == 4
    assert candidate([123, 13], 1) == 110
    assert candidate([123, 162], 1) == 39
    assert candidate([126, 69], 1) == 57
    assert candidate([127, 18], 1) == 109
    assert candidate([127, 346], 1) == 219
    assert candidate([132, 110], 1) == 22
    assert candidate([134, 23], 1) == 111
    assert candidate([136, 150], 1) == 14
    assert candidate([139, 215], 1) == 76
    assert candidate([153, 3], 1) == 150
    assert candidate([156, 67], 1) == 89
    assert candidate([160, 168], 1) == 8
    assert candidate([161, 93], 1) == 68
    assert candidate([164, 81], 1) == 83
    assert candidate([167, 83], 1) == 84
    assert candidate([174, 58], 1) == 116
    assert candidate([174, 102], 1) == 72
    assert candidate([175, 137], 1) == 38
    assert candidate([176, 99], 1) == 77
    assert candidate([178, 179], 1) == 1
    assert candidate([228, 359], 1) == 131
    assert candidate([243, 280], 1) == 37
    assert candidate([283, 62], 1) == 221
    assert candidate([288, 149], 1) == 139
    assert candidate([293, 278], 1) == 15
    assert candidate([327, 425], 1) == 98
    assert candidate([337, 187], 1) == 150
    assert candidate([346, 160], 1) == 186
    assert candidate([347, 369], 1) == 22
    assert candidate([355, 199], 1) == 156
    assert candidate([413, 311], 1) == 102
    assert candidate([417, 320], 1) == 97
    assert candidate([418, 131], 1) == 287
    assert candidate([3274, 71], 1) == 3203
    assert candidate([5, 14, 81], 2) == 76
    assert candidate([9, 25, 15], 2) == 6
    assert candidate([9, 113, 136], 1) == 23
    assert candidate([13, 19, 12], 1) == 1
    assert candidate([13, 94, 59], 2) == 46
    assert candidate([14, 111, 16], 1) == 2
    assert candidate([17, 173, 69], 1) == 52
    assert candidate([24, 39, 28], 2) == 4
    assert candidate([32, 129, 93], 1) == 36
    assert candidate([33, 18, 131], 1) == 15
    assert candidate([36, 19, 27], 2) == 9
    assert candidate([40, 18, 17], 1) == 1
    assert candidate([43, 49, 20], 2) == 23
    assert candidate([44, 186, 163], 2) == 119
    assert candidate([56, 23, 158], 1) == 33
    assert candidate([62, 37, 182], 2) == 120
    assert candidate([63, 116, 12], 2) == 51
    assert candidate([66, 345, 278], 2) == 212
    assert candidate([67, 81, 165], 2) == 98
    assert candidate([70, 184, 70], 2) == 0
    assert candidate([73, 106, 172], 1) == 33
    assert candidate([74, 199, 57], 1) == 17
    assert candidate([83, 14, 14], 1) == 0
    assert candidate([86, 1, 129], 2) == 43
    assert candidate([87, 194, 107], 1) == 20
    assert candidate([88, 75, 122], 2) == 34
    assert candidate([93, 96, 28], 1) == 3
    assert candidate([95, 86, 132], 2) == 37
    assert candidate([96, 41, 24], 1) == 17
    assert candidate([116, 6, 3], 1) == 3
    assert candidate([120, 102, 184], 1) == 18
    assert candidate([123, 113, 20], 1) == 10
    assert candidate([125, 14, 141], 1) == 16
    assert candidate([126, 2, 180], 1) == 54
    assert candidate([136, 24, 114], 1) == 22
    assert candidate([136, 177, 98], 2) == 38
    assert candidate([136, 177, 123], 1) == 13
    assert candidate([136, 178, 18], 2) == 118


def test_check():
    check(minAbsoluteDifference)


### Metadata below ###
# question_id = 3000
# question_title = Minimum Absolute Difference Between Elements With Constraint
# question_title_slug = minimum-absolute-difference-between-elements-with-constraint
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 618
# question_dislikes = 64