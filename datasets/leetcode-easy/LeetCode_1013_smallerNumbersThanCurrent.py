from typing import List


def smallerNumbersThanCurrent(nums: List[int]) -> List[int]:
    """
    Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
    Return the answer in an array.
 
    Example 1:

    Input: nums = [8,1,2,2,3]
    Output: [4,0,1,1,3]
    Explanation: 
    For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3). 
    For nums[1]=1 does not exist any smaller number than it.
    For nums[2]=2 there exist one smaller number than it (1). 
    For nums[3]=2 there exist one smaller number than it (1). 
    For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).

    Example 2:

    Input: nums = [6,5,4,8]
    Output: [2,1,0,3]

    Example 3:

    Input: nums = [7,7,7,7]
    Output: [0,0,0,0]

 
    Constraints:

    2 <= nums.length <= 500
    0 <= nums[i] <= 100

    """
    ### Canonical solution below ###
    result = []
    for i in range(len(nums)):
        count = 0
        for j in range(len(nums)):
            if i != j and nums[j] < nums[i]:
                count += 1
        result.append(count)
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([3,3,3,3,3,3,3,3,3,3]) == [0,0,0,0,0,0,0,0,0,0]
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]) == [
          0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
	assert candidate([2,2,2,2,2,2,2,2,2,2]) == [0,0,0,0,0,0,0,0,0,0]
	assert candidate([6,6,6,6,6,6,6,6,6,6]) == [0,0,0,0,0,0,0,0,0,0]
	assert candidate([50,40,30,20,10]) == [4,3,2,1,0]
	assert candidate([1,1,1,1,1]) == [0,0,0,0,0]
	assert candidate([0,0,0,100,100]) == [0,0,0,3,3]
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == [0,1,2,3,4,5,6,7,8,9]
	assert candidate([100,90,80,70,60,50,40,30,20,10]) == [9,8,7,6,5,4,3,2,1,0]
	assert candidate([50,50,50,50,50]) == [0,0,0,0,0]
	assert candidate([1,2,3,4,5]) == [0,1,2,3,4]
	assert candidate([5,4,3,2,1]) == [4,3,2,1,0]
	assert candidate([6,5,4,8]) == [2,1,0,3]
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert candidate([8,1,2,2,3]) == [4,0,1,1,3]
	assert candidate([10,10,20,20,30,30]) == [0,0,2,2,4,4]
	assert candidate([100,0,50,25,75]) == [4,0,2,1,3]
	assert candidate([7,7,7,7]) == [0,0,0,0]
	assert candidate([2,1,2,1,0]) == [3,1,3,1,0]
	assert candidate([1,2,2,3,3]) == [0,1,1,3,3]
	assert candidate([10,10,10,10,10,10,10,10,10,10]) == [0,0,0,0,0,0,0,0,0,0]
	assert candidate(
    [20,20,20,20,20,20,20,20,20,20]) == [0,0,0,0,0,0,0,0,0,0]
def test_check():
	check(smallerNumbersThanCurrent)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,sorting,counting
# Metadata Coverage: 100
