from typing import List


def minEatingSpeed(piles: List[int], h: int) -> int:
    """
    Koko loves to eat bananas. There are n piles of bananas, the ith pile has piles[i] bananas. The guards have gone and will come back in h hours.
    Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses some pile of bananas and eats k bananas from that pile. If the pile has less than k bananas, she eats all of them instead and will not eat any more bananas during this hour.
    Koko likes to eat slowly but still wants to finish eating all the bananas before the guards return.
    Return the minimum integer k such that she can eat all the bananas within h hours.
 
    Example 1:

    Input: piles = [3,6,7,11], h = 8
    Output: 4

    Example 2:

    Input: piles = [30,11,23,4,20], h = 5
    Output: 30

    Example 3:

    Input: piles = [30,11,23,4,20], h = 6
    Output: 23

 
    Constraints:

    1 <= piles.length <= 104
    piles.length <= h <= 109
    1 <= piles[i] <= 109

    """
    ### Canonical solution below ###
    left, right = 1, max(piles)
    while left < right:
        mid = left + (right - left) // 2
        totalHours = sum((pile + mid - 1) // mid for pile in piles)
        if totalHours > h:
            left = mid + 1
        else:
            right = mid
    return left




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5], 5) == 5
	assert candidate([3,6,7,11], 10) == 3
	assert candidate([5,5,5,5,5], 10) == 3
	assert candidate([2,2], 3) == 2
	assert candidate([3,1,2,4], 6) == 2
	assert candidate([30,11,23,4,20], 6) == 23
	assert candidate([5,5,5,5,5], 25) == 1
	assert candidate([7,4,5,9], 3) == 9
	assert candidate([1,2,3,4,5], 15) == 1
	assert candidate([5,5,5,5,5], 5) == 5
	assert candidate([1,1,1,1,1], 5) == 1
	assert candidate([3,6,7,11], 8) == 4
	assert candidate([5,4,3,2,1], 15) == 1
	assert candidate([30,11,23,4,20], 5) == 30
	assert candidate([5,4,3,2,1], 5) == 5
	assert candidate([30,11,23,4,20], 7) == 20
	assert candidate([20,10,15,6,5,3], 14) == 5
def test_check():
	check(minEatingSpeed)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
