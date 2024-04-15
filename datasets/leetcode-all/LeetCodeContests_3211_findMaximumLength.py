from typing import List

def findMaximumLength(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums.
    You can perform any number of operations, where each operation involves selecting a subarray of the array and replacing it with the sum of its elements. For example, if the given array is [1,3,5,6] and you select subarray [3,5] the array will convert to [1,8,6].
    Return the maximum length of a non-decreasing array that can be made after applying operations.
    A subarray is a contiguous non-empty sequence of elements within an array.
    
    Example 1:
    
    Input: nums = [5,2,2]
    Output: 1
    Explanation: This array with length 3 is not non-decreasing.
    We have two ways to make the array length two.
    First, choosing subarray [2,2] converts the array to [5,4].
    Second, choosing subarray [5,2] converts the array to [7,2].
    In these two ways the array is not non-decreasing.
    And if we choose subarray [5,2,2] and replace it with [9] it becomes non-decreasing. 
    So the answer is 1.
    
    Example 2:
    
    Input: nums = [1,2,3,4]
    Output: 4
    Explanation: The array is non-decreasing. So the answer is 4.
    
    Example 3:
    
    Input: nums = [4,3,2,6]
    Output: 3
    Explanation: Replacing [3,2] with [5] converts the given array to [4,5,6] that is non-decreasing.
    Because the given array is not non-decreasing, the maximum possible answer is 3.
    
    Constraints:
    
    1 <= nums.length <= 105
    1 <= nums[i] <= 105
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 2, 2]) == 1
    assert candidate([1, 2, 3, 4]) == 4
    assert candidate([4, 3, 2, 6]) == 3
    assert candidate([32]) == 1
    assert candidate([38]) == 1
    assert candidate([60]) == 1
    assert candidate([79]) == 1
    assert candidate([85]) == 1
    assert candidate([170]) == 1
    assert candidate([198]) == 1
    assert candidate([220]) == 1
    assert candidate([318]) == 1
    assert candidate([350]) == 1
    assert candidate([381]) == 1
    assert candidate([413]) == 1
    assert candidate([426]) == 1
    assert candidate([429]) == 1
    assert candidate([431]) == 1
    assert candidate([445]) == 1
    assert candidate([488]) == 1
    assert candidate([492]) == 1
    assert candidate([497]) == 1
    assert candidate([515]) == 1
    assert candidate([582]) == 1
    assert candidate([589]) == 1
    assert candidate([620]) == 1
    assert candidate([632]) == 1
    assert candidate([703]) == 1
    assert candidate([748]) == 1
    assert candidate([776]) == 1
    assert candidate([977]) == 1
    assert candidate([986]) == 1
    assert candidate([990]) == 1
    assert candidate([29, 859]) == 2
    assert candidate([48, 612]) == 2
    assert candidate([76, 837]) == 2
    assert candidate([103, 341]) == 2
    assert candidate([171, 323]) == 2
    assert candidate([248, 719]) == 2
    assert candidate([253, 61]) == 1
    assert candidate([274, 467]) == 2
    assert candidate([351, 665]) == 2
    assert candidate([372, 382]) == 2
    assert candidate([404, 409]) == 2
    assert candidate([455, 40]) == 1
    assert candidate([472, 843]) == 2
    assert candidate([504, 838]) == 2
    assert candidate([549, 747]) == 2
    assert candidate([570, 810]) == 2
    assert candidate([621, 809]) == 2
    assert candidate([643, 802]) == 2
    assert candidate([689, 192]) == 1
    assert candidate([709, 481]) == 1
    assert candidate([742, 67]) == 1
    assert candidate([745, 725]) == 1
    assert candidate([773, 877]) == 2
    assert candidate([776, 962]) == 2
    assert candidate([791, 434]) == 1
    assert candidate([824, 783]) == 1
    assert candidate([840, 388]) == 1
    assert candidate([876, 264]) == 1
    assert candidate([940, 694]) == 1
    assert candidate([959, 372]) == 1
    assert candidate([981, 998]) == 2
    assert candidate([41, 340, 784]) == 3
    assert candidate([103, 652, 579]) == 2
    assert candidate([116, 635, 966]) == 3
    assert candidate([137, 32, 745]) == 2
    assert candidate([247, 173, 316]) == 2
    assert candidate([276, 315, 947]) == 3
    assert candidate([278, 754, 912]) == 3
    assert candidate([314, 882, 708]) == 2
    assert candidate([371, 101, 367]) == 2
    assert candidate([402, 305, 990]) == 2
    assert candidate([403, 553, 697]) == 3
    assert candidate([431, 780, 315]) == 2
    assert candidate([479, 322, 44]) == 1
    assert candidate([512, 234, 679]) == 2
    assert candidate([513, 847, 778]) == 2
    assert candidate([525, 177, 936]) == 2
    assert candidate([588, 42, 18]) == 1
    assert candidate([646, 174, 827]) == 2
    assert candidate([680, 242, 726]) == 2
    assert candidate([769, 131, 241]) == 1
    assert candidate([780, 591, 213]) == 2
    assert candidate([783, 23, 848]) == 2
    assert candidate([787, 201, 30]) == 1
    assert candidate([791, 470, 87]) == 1
    assert candidate([797, 181, 492]) == 1
    assert candidate([868, 4, 455]) == 1
    assert candidate([881, 306, 316]) == 1
    assert candidate([886, 116, 68]) == 1
    assert candidate([893, 531, 805]) == 2
    assert candidate([926, 641, 145]) == 1
    assert candidate([964, 624, 279]) == 1
    assert candidate([987, 694, 396]) == 2
    assert candidate([38, 986, 134, 156]) == 2
    assert candidate([43, 236, 417, 521]) == 4
    assert candidate([58, 890, 892, 52]) == 3
    assert candidate([81, 738, 403, 654]) == 3


def test_check():
    check(findMaximumLength)


### Metadata below ###
# question_id = 3211
# question_title = Find Maximum Non-decreasing Array Length
# question_title_slug = find-maximum-non-decreasing-array-length
# question_difficulty = Hard
# question_category = Algorithms
# question_likes = 90
# question_dislikes = 9