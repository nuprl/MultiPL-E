from typing import List


def lastStoneWeight(stones: List[int]) -> int:
    """
    You are given an array of integers stones where stones[i] is the weight of the ith stone.
    We are playing a game with the stones. On each turn, we choose the heaviest two stones and smash them together. Suppose the heaviest two stones have weights x and y with x <= y. The result of this smash is:

    If x == y, both stones are destroyed, and
    If x != y, the stone of weight x is destroyed, and the stone of weight y has new weight y - x.

    At the end of the game, there is at most one stone left.
    Return the weight of the last remaining stone. If there are no stones left, return 0.
 
    Example 1:

    Input: stones = [2,7,4,1,8,1]
    Output: 1
    Explanation: 
    We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
    we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
    we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
    we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of the last stone.

    Example 2:

    Input: stones = [1]
    Output: 1

 
    Constraints:

    1 <= stones.length <= 30
    1 <= stones[i] <= 1000

    """
    ### Canonical solution below ###
    import heapq
    stones = [-stone for stone in stones]
    heapq.heapify(stones)
    while len(stones) > 1:
        y = -heapq.heappop(stones)
        x = -heapq.heappop(stones)
        if x != y:
            heapq.heappush(stones, -(y - x))
    return -stones[0] if stones else 0




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 1
	assert candidate([1, 12, 5, 10, 3, 7, 2, 11, 6, 9, 13, 4, 8]) == 1
	assert candidate([7, 1, 7, 1, 2, 3, 4, 5, 6]) == 0
	assert candidate([4, 4, 4, 4]) == 0
	assert candidate([7, 6, 7, 6, 1]) == 1
	assert candidate([5, 5, 5]) == 5
	assert candidate([1, 3, 5, 7, 9]) == 1
	assert candidate([1, 1, 1, 1]) == 0
	assert candidate([2, 7, 4, 1, 8, 1]) == 1
	assert candidate([20, 15, 14, 9, 4, 7, 13, 13, 14, 15, 19, 18, 17, 14, 7, 10, 11, 3, 15, 12]) == 0
	assert candidate([7, 3, 2]) == 2
	assert candidate([3, 7, 2]) == 2
	assert candidate([10, 5, 5, 10]) == 0
	assert candidate([3, 3, 3]) == 3
	assert candidate([10, 10, 10, 10]) == 0
	assert candidate([2, 2]) == 0
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 1
	assert candidate([4, 11]) == 7
	assert candidate([1]) == 1
	assert candidate([13, 7, 6, 12, 3, 9, 5, 10, 1, 8, 2, 4, 11]) == 1
	assert candidate([10, 20, 15, 8, 5]) == 2
	assert candidate([8, 15, 3, 2, 7, 6, 4, 4, 7, 6, 10, 7, 9, 5, 10, 13, 11, 10, 8, 6]) == 1
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 0
	assert candidate([3, 15, 13, 8, 8, 12, 6, 5, 5, 2, 12, 11, 7, 12]) == 1
def test_check():
	check(lastStoneWeight)
# Metadata Difficulty: Easy
# Metadata Topics: array,heap-priority-queue
# Metadata Coverage: 100
