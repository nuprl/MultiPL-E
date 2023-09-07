from typing import List


def minimumSize(nums: List[int], maxOperations: int) -> int:
    """
    You are given an integer array nums where the ith bag contains nums[i] balls. You are also given an integer maxOperations.
    You can perform the following operation at most maxOperations times:

    Take any bag of balls and divide it into two new bags with a positive number of balls.


    For example, a bag of 5 balls can become two new bags of 1 and 4 balls, or two new bags of 2 and 3 balls.



    Your penalty is the maximum number of balls in a bag. You want to minimize your penalty after the operations.
    Return the minimum possible penalty after performing the operations.
 
    Example 1:

    Input: nums = [9], maxOperations = 2
    Output: 3
    Explanation: 
    - Divide the bag with 9 balls into two bags of sizes 6 and 3. [9] -> [6,3].
    - Divide the bag with 6 balls into two bags of sizes 3 and 3. [6,3] -> [3,3,3].
    The bag with the most number of balls has 3 balls, so your penalty is 3 and you should return 3.

    Example 2:

    Input: nums = [2,4,8,2], maxOperations = 4
    Output: 2
    Explanation:
    - Divide the bag with 8 balls into two bags of sizes 4 and 4. [2,4,8,2] -> [2,4,4,4,2].
    - Divide the bag with 4 balls into two bags of sizes 2 and 2. [2,4,4,4,2] -> [2,2,2,4,4,2].
    - Divide the bag with 4 balls into two bags of sizes 2 and 2. [2,2,2,4,4,2] -> [2,2,2,2,2,4,2].
    - Divide the bag with 4 balls into two bags of sizes 2 and 2. [2,2,2,2,2,4,2] -> [2,2,2,2,2,2,2,2].
    The bag with the most number of balls has 2 balls, so your penalty is 2, and you should return 2.

 
    Constraints:

    1 <= nums.length <= 105
    1 <= maxOperations, nums[i] <= 109

    """
    ### Canonical solution below ###
    import heapq
    pq = [-num for num in nums]  # Negative numbers to simulate max heap
    heapq.heapify(pq)
    while maxOperations > 0:
        maxBalls = -heapq.heappop(pq)
        heapq.heappush(pq, -maxBalls // 2)
        heapq.heappush(pq, -(maxBalls - (maxBalls // 2)))
        maxOperations -= 1
    return -pq[0]




### Unit tests below ###
def check(candidate):
	assert candidate([4, 4, 1, 1], 1) == 4
	assert candidate([1, 1, 1, 1, 1], 5) == 1
	assert candidate([1], 5) == 1
	assert candidate([4, 4, 1, 1], 3) == 2
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 2) == 1
	assert candidate([2, 2, 1, 1, 1], 0) == 2
	assert candidate([1], 0) == 1
	assert candidate([4, 4, 1, 1], 0) == 4
	assert candidate([5, 4, 3, 2, 2], 4) == 3
	assert candidate([1, 2, 2], 1) == 2
	assert candidate([1, 1, 1, 1, 1], 0) == 1
	assert candidate([2, 2, 2, 2, 2], 4) == 2
	assert candidate([3], 0) == 3
	assert candidate([1, 1, 1, 1, 1], 1) == 1
	assert candidate([10, 5, 2, 1], 2) == 5
	assert candidate([2, 3, 4, 5], 2) == 3
	assert candidate([1, 1, 1, 1, 1], 2) == 1
	assert candidate([2, 2, 1, 1, 1], 2) == 1
	assert candidate([2, 2, 1, 1, 1], 5) == 1
	assert candidate([2, 3, 1], 1) == 2
	assert candidate([2, 2, 1, 1, 1], 10) == 1
	assert candidate([2, 2, 1, 1, 1], 4) == 1
	assert candidate([1, 1, 1, 1, 1], 4) == 1
	assert candidate([2, 1, 2], 4) == 1
	assert candidate([1, 1, 1, 1, 1], 3) == 1
	assert candidate([2, 4, 8, 2], 4) == 2
	assert candidate([10, 5, 2, 1], 0) == 10
	assert candidate([2, 2, 1, 1, 1], 3) == 1
	assert candidate([10, 5, 2, 1], 4) == 3
	assert candidate([1], 1) == 1
	assert candidate([2, 1, 2], 3) == 1
	assert candidate([10, 5, 2, 1], 5) == 3
	assert candidate([10, 5, 2, 1], 1) == 5
	assert candidate([10, 3, 5], 2) == 5
def test_check():
	check(minimumSize)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
