from typing import List


def eliminate_maximum(dist: List[int], speed: List[int]) -> int:
    """
    You are playing a video game where you are defending your city from a group of n monsters. You are given a 0-indexed integer array dist of size n, where dist[i] is the initial distance in kilometers of the ith monster from the city.
    The monsters walk toward the city at a constant speed. The speed of each monster is given to you in an integer array speed of size n, where speed[i] is the speed of the ith monster in kilometers per minute.
    You have a weapon that, once fully charged, can eliminate a single monster. However, the weapon takes one minute to charge.The weapon is fully charged at the very start.
    You lose when any monster reaches your city. If a monster reaches the city at the exact moment the weapon is fully charged, it counts as a loss, and the game ends before you can use your weapon.
    Return the maximum number of monsters that you can eliminate before you lose, or n if you can eliminate all the monsters before they reach the city.
 
    Example 1:

    Input: dist = [1,3,4], speed = [1,1,1]
    Output: 3
    Explanation:
    In the beginning, the distances of the monsters are [1,3,4]. You eliminate the first monster.
    After a minute, the distances of the monsters are [X,2,3]. You eliminate the second monster.
    After a minute, the distances of the monsters are [X,X,2]. You eliminate the thrid monster.
    All 3 monsters can be eliminated.
    Example 2:

    Input: dist = [1,1,2,3], speed = [1,1,1,1]
    Output: 1
    Explanation:
    In the beginning, the distances of the monsters are [1,1,2,3]. You eliminate the first monster.
    After a minute, the distances of the monsters are [X,0,1,2], so you lose.
    You can only eliminate 1 monster.

    Example 3:

    Input: dist = [3,2,4], speed = [5,3,2]
    Output: 1
    Explanation:
    In the beginning, the distances of the monsters are [3,2,4]. You eliminate the first monster.
    After a minute, the distances of the monsters are [X,0,2], so you lose.
    You can only eliminate 1 monster.

 
    Constraints:

    n == dist.length == speed.length
    1 <= n <= 105
    1 <= dist[i], speed[i] <= 105

    """
    ### Canonical solution below ###
    n = len(dist)
    time_to_reach_city = [(dist[i] + speed[i] - 1) // speed[i] for i in range(n)]
    time_to_reach_city.sort()
    eliminated = 0
    for i in range(n):
        if time_to_reach_city[i] > i:
            eliminated += 1
        else:
            break
    return eliminated




### Unit tests below ###
def check(candidate):
	assert candidate([5,10], [2,2]) == 2
	assert candidate([1,2,3,4,5], [5,4,3,2,1]) == 1
	assert candidate([1,1,1,1,1], [2,2,2,2,2]) == 1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 20
	assert candidate([1,1,2,3,4], [1,1,1,1,1]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,7]) == 1
	assert candidate([20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 1
	assert candidate([1,2,3,4], [5,4,3,2]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]) == 1
	assert candidate([5], [2]) == 1
	assert candidate([1,2,3,4,5,6,7,8], [1,1,1,1,1,1,1,2]) == 4
	assert candidate([5,6,7], [1,1,4]) == 3
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,5]) == 1
	assert candidate([1,2,3,4,5,6,7,8], [1,2,2,2,2,2,2,2]) == 1
	assert candidate([1,3,4], [1,1,1]) == 3
	assert candidate([1,1,1,1,1], [1,2,3,4,5]) == 1
	assert candidate([1,2,3,4,5], [1,1,1,1,1]) == 5
	assert candidate([1,2,3,4,5,6,7,8], [2,2,2,2,2,2,2,2]) == 1
	assert candidate([1,1,1,1,1], [5,4,3,2,1]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [10,9,8,7,6,5,4,3,2,1]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,3]) == 1
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,2]) == 1
	assert candidate([3,2,4], [5,3,2]) == 1
	assert candidate([1,1,2,3], [1,1,1,1]) == 1
	assert candidate([5,4,3,2,1], [1,2,3,4,5]) == 1
	assert candidate([5,5,5,5,5], [1,2,3,4,5]) == 2
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1,6]) == 1
def test_check():
	check(eliminate_maximum)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting
# Metadata Coverage: 100
