from typing import List


def can_cross(stones: List[int]) -> bool:
    """
    A frog is crossing a river. The river is divided into some number of units, and at each unit, there may or may not exist a stone. The frog can jump on a stone, but it must not jump into the water.
    Given a list of stones positions (in units) in sorted ascending order, determine if the frog can cross the river by landing on the last stone. Initially, the frog is on the first stone and assumes the first jump must be 1 unit.
    If the frog's last jump was k units, its next jump must be either k - 1, k, or k + 1 units. The frog can only jump in the forward direction.
 
    Example 1:

    Input: stones = [0,1,3,5,6,8,12,17]
    Output: true
    Explanation: The frog can jump to the last stone by jumping 1 unit to the 2nd stone, then 2 units to the 3rd stone, then 2 units to the 4th stone, then 3 units to the 6th stone, 4 units to the 7th stone, and 5 units to the 8th stone.

    Example 2:

    Input: stones = [0,1,2,3,4,8,9,11]
    Output: false
    Explanation: There is no way to jump to the last stone as the gap between the 5th and 6th stone is too large.

 
    Constraints:

    2 <= stones.length <= 2000
    0 <= stones[i] <= 231 - 1
    stones[0] == 0
    stones is sorted in a strictly increasing order.

    """
    ### Canonical solution below ###
    dp = {stone: set() for stone in stones}
    dp[0].add(0)

    for stone in stones:
        for k in dp[stone]:
            for jump in (k - 1, k, k + 1):
                if jump > 0 and stone + jump in dp:
                    dp[stone + jump].add(jump)

    return bool(dp[stones[-1]])




### Unit tests below ###
def check(candidate):
	assert candidate(range(0, 39, 2)) == False
	assert candidate([0,1,2]) == True
	assert candidate([0,1,3,5,6,8,12,17,18,19,20,21,22,23]) == True
	assert candidate([0,1]) == True
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18]) == True
	assert candidate([0,2,6,11,17,24,32,41,51,62,74]) == False
	assert candidate(range(0, 89, 2)) == False
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,12]) == True
	assert candidate(range(0, 59, 2)) == False
	assert candidate([0,1,2,3,4,5,6,7,8,9,10]) == True
	assert candidate([0,1,3,5,7,9,12,2000]) == False
	assert candidate(list(range(2000)) + [2000]) == True
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,12,13,14,15]) == True
	assert candidate(list(range(2000))) == True
	assert candidate([0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]) == False
	assert candidate([0,1,2,3,7,11,15,19,23,27,31]) == False
	assert candidate([0,1,3,5,6,8,12,17,18,19,20]) == False
	assert candidate([0,3,6,9,12,15,18,21,24,27,30,35]) == False
	assert candidate([0, 1, 2]) == True
	assert candidate(range(0, 2001)) == True
	assert candidate(range(0, 2000)) == True
	assert candidate(range(0, 99, 2)) == False
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]) == True
	assert candidate([0,1,5,10,15,20,25,30]) == False
	assert candidate([0,1,2,3,4,8,9,11]) == False
	assert candidate([0,2,5,9,14,20,27,35,44,54,65,77]) == False
	assert candidate([0,1,3,5,6,8,12,17,18]) == False
	assert candidate(range(2000)) == True
	assert candidate([0, 2]) == False
	assert candidate(list(range(100)) + [200]) == False
	assert candidate([0,3,6,9,12,15,18,21,24,27,30]) == False
	assert candidate([0,1,3,5,6,8,12,17,18,19,20,21,22,23,24,25]) == True
	assert candidate([0,1,3,6,10,15,21,28,36,45,55]) == True
	assert candidate([0,1,3,7,11,16,22,29,37,46,56]) == False
	assert candidate([0,1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17]) == True
	assert candidate([0,1,3,5,6,8,12,17,18,19,20,21]) == True
	assert candidate([0,1,3,5,6,8,12,17]) == True
	assert candidate([0,1,3,6,10,15,21,28,36,45,55,66,78]) == True
	assert candidate(range(0, 79, 2)) == False
	assert candidate(list(range(100))) == True
	assert candidate(range(0, 69, 2)) == False
	assert candidate(range(0, 49, 2)) == False
def test_check():
	check(can_cross)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
