from typing import List


def minimum_deviation(nums: List[int]) -> int:
    """
    You are given an array nums of n positive integers.
    You can perform two types of operations on any element of the array any number of times:

    If the element is even, divide it by 2.


    For example, if the array is [1,2,3,4], then you can do this operation on the last element, and the array will be [1,2,3,2].


    If the element is odd, multiply it by 2.

    For example, if the array is [1,2,3,4], then you can do this operation on the first element, and the array will be [2,2,3,4].



    The deviation of the array is the maximum difference between any two elements in the array.
    Return the minimum deviation the array can have after performing some number of operations.
 
    Example 1:

    Input: nums = [1,2,3,4]
    Output: 1
    Explanation: You can transform the array to [1,2,3,2], then to [2,2,3,2], then the deviation will be 3 - 2 = 1.

    Example 2:

    Input: nums = [4,1,5,20,3]
    Output: 3
    Explanation: You can transform the array after two operations to [4,2,5,5,3], then the deviation will be 5 - 2 = 3.

    Example 3:

    Input: nums = [2,10,8]
    Output: 3

 
    Constraints:

    n == nums.length
    2 <= n <= 5 * 104
    1 <= nums[i] <= 109

    """
    ### Canonical solution below ###
    import heapq
    pq = []
    min_val = float("inf")

    for num in nums:
        if num % 2 == 0:
            heapq.heappush(pq, -num)
        else:
            heapq.heappush(pq, -(num * 2))
        min_val = min(min_val, num)

    result = float("inf")
    while True:
        top = -heapq.heappop(pq)
        result = min(result, top - min_val)

        if top % 2 == 1:
            break
        heapq.heappush(pq, -(top // 2))
        min_val = min(min_val, top // 2)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([3, 3, 3, 3, 3, 3]) == 0
	assert candidate([2, 10, 8]) == 3
	assert candidate([5, 15, 30, 60]) == 10
	assert candidate([1, 1, 1, 1]) == 0
	assert candidate([5, 5, 5, 5, 5, 5, 5, 5, 5, 5]) == 0
def test_check():
	check(minimum_deviation)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy,heap-priority-queue,ordered-set
# Metadata Coverage: 100
