from typing import List


def largestNumber(nums: List[int]) -> str:
    """
    Given a list of non-negative integers nums, arrange them such that they form the largest number and return it.
    Since the result may be very large, so you need to return a string instead of an integer.
 
    Example 1:

    Input: nums = [10,2]
    Output: "210"

    Example 2:

    Input: nums = [3,30,34,5,9]
    Output: "9534330"

 
    Constraints:

    1 <= nums.length <= 100
    0 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    from functools import cmp_to_key

    def comparator(a, b):
        return -1 if a + b > b + a else int(a + b < b + a)

    nums_as_str = list(map(str, nums))
    nums_as_str.sort(key=cmp_to_key(comparator))
    return '0' if nums_as_str[0] == "0" else "".join(nums_as_str)




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9]) == "987654321"
	assert candidate([121, 12]) == "12121"
	assert candidate([99, 999, 9999]) == "999999999"
	assert candidate([11, 21, 31, 41, 51, 61, 71, 81, 91]) == "918171615141312111"
	assert candidate([91, 81, 71, 61, 51, 41, 31, 21, 11]) == "918171615141312111"
	assert candidate([12, 121]) == "12121"
	assert candidate([10, 2]) == "210"
	assert candidate([1, 34, 3, 98, 9, 76, 45, 4]) == "998764543431"
	assert candidate([2, 21, 23, 24, 25]) == "252423221"
	assert candidate([54, 546, 548, 60]) == "6054854654"
	assert candidate([90, 80, 70, 60, 50, 40, 30, 20, 10]) == "908070605040302010"
	assert candidate([0, 0, 0, 0, 1]) == "10000"
	assert candidate([3, 33, 333]) == "333333"
	assert candidate([33, 333, 3333]) == "333333333"
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == "987654321"
	assert candidate([0, 0, 0]) == "0"
	assert candidate([8, 88, 888]) == "888888"
	assert candidate([0, 0, 0, 0]) == "0"
	assert candidate([34323, 3432]) == "343234323"
	assert candidate([1]) == "1"
	assert candidate([3, 30, 34, 5, 9]) == "9534330"
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90]) == "908070605040302010"
def test_check():
	check(largestNumber)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,greedy,sorting
# Metadata Coverage: 100
