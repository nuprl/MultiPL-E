from typing import List


def maximumGap(nums: List[int]) -> int:
    """
    Given an integer array nums, return the maximum difference between two successive elements in its sorted form. If the array contains less than two elements, return 0.
    You must write an algorithm that runs in linear time and uses linear extra space.
 
    Example 1:

    Input: nums = [3,6,9,1]
    Output: 3
    Explanation: The sorted form of the array is [1,3,6,9], either (3,6) or (6,9) has the maximum difference 3.

    Example 2:

    Input: nums = [10]
    Output: 0
    Explanation: The array contains less than 2 elements, therefore return 0.

 
    Constraints:

    1 <= nums.length <= 105
    0 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    if len(nums) < 2:
        return 0

    min_val = min(nums)
    max_val = max(nums)
    length = len(nums)
    bucket_size = max(1, (max_val - min_val) // (length - 1))
    bucket_num = (max_val - min_val) // bucket_size + 1
    buckets = [[float("inf"), float("-inf")] for _ in range(bucket_num)]

    for num in nums:
        idx = (num - min_val) // bucket_size
        buckets[idx][0] = min(buckets[idx][0], num)
        buckets[idx][1] = max(buckets[idx][1], num)

    max_gap = 0
    prev_max = min_val
    for bucket in buckets:
        if bucket[0] == float("inf"):
            continue
        max_gap = max(max_gap, bucket[0] - prev_max)
        prev_max = bucket[1]
    return max_gap




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,1,0,1,0,1,0,1,0]) == 1
	assert candidate([1,2,4,8,16,32,64,128,256,512]) == 256
	assert candidate([0,0,0,0,0,0,0,0,0,1]) == 1
	assert candidate([0]) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1]) == 0
	assert candidate([1,3,6,9,12,15,18,21,24,27]) == 3
	assert candidate([9,8,7,6,5,4,3,2,1,0]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 1
	assert candidate([1000,2000,3000,4000,5000,6000,7000,8000,9000,10000]) == 1000
	assert candidate([10,20,30,40,50,60,70,80,90,100]) == 10
	assert candidate([0,0,0,1,1,1,1,1,1,1]) == 1
	assert candidate([10,100,1000,10000,100000,1000000,10000000]) == 9000000
	assert candidate([100,200,300,400,500,600,700,800,900,1000]) == 100
	assert candidate([3,6,9,1]) == 3
	assert candidate([1,10,100,1000,10000,100000,1000000]) == 900000
	assert candidate([0,0,0,0,0,0,0,0,0,0]) == 0
	assert candidate([]) == 0
	assert candidate([1,2,3,5,8,13,21,34,55,89]) == 34
	assert candidate([5,10,15,20,25,30,35,40,45,50]) == 5
	assert candidate([1,1,1,1,1,2,2,2,2,2]) == 1
	assert candidate([10]) == 0
def test_check():
	check(maximumGap)
# Metadata Difficulty: Hard
# Metadata Topics: array,sorting,bucket-sort,radix-sort
# Metadata Coverage: 100
