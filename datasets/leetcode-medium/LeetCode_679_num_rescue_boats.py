from typing import List


def num_rescue_boats(people: List[int], limit: int) -> int:
    """
    You are given an array people where people[i] is the weight of the ith person, and an infinite number of boats where each boat can carry a maximum weight of limit. Each boat carries at most two people at the same time, provided the sum of the weight of those people is at most limit.
    Return the minimum number of boats to carry every given person.
 
    Example 1:

    Input: people = [1,2], limit = 3
    Output: 1
    Explanation: 1 boat (1, 2)

    Example 2:

    Input: people = [3,2,2,1], limit = 3
    Output: 3
    Explanation: 3 boats (1, 2), (2) and (3)

    Example 3:

    Input: people = [3,5,3,4], limit = 5
    Output: 4
    Explanation: 4 boats (3), (3), (4), (5)

 
    Constraints:

    1 <= people.length <= 5 * 104
    1 <= people[i] <= limit <= 3 * 104

    """
    ### Canonical solution below ###
    people.sort()
    left, right = 0, len(people) - 1
    boats = 0
    while left <= right:
        if people[left] + people[right] <= limit:
            left += 1
        right -= 1
        boats += 1
    return boats




### Unit tests below ###
def check(candidate):
	assert candidate([3, 2, 2, 1], 4) == 2
	assert candidate([1, 1, 2, 2], 3) == 2
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8], 1) == 8
	assert candidate([1, 2, 3, 4, 5], 5) == 3
	assert candidate([1, 1, 1, 1, 1, 1], 3) == 3
	assert candidate([1, 1, 1, 1, 2, 2, 2, 2], 3) == 4
	assert candidate([5, 1, 4, 2], 6) == 2
	assert candidate([1, 2, 3, 5, 5], 5) == 4
	assert candidate([1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 2) == 11
	assert candidate([1, 1, 1, 1], 2) == 2
	assert candidate([3, 2, 2, 1], 3) == 3
	assert candidate([1, 2], 3) == 1
	assert candidate([1, 1, 1, 1, 1, 1], 2) == 3
	assert candidate([2, 2, 2, 2], 3) == 4
	assert candidate([1, 2], 4) == 1
	assert candidate([1, 1, 1, 1], 1) == 4
	assert candidate([3, 5, 3, 4], 5) == 4
	assert candidate([1, 2, 1], 2) == 2
	assert candidate([1, 1], 2) == 1
def test_check():
	check(num_rescue_boats)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,greedy,sorting
# Metadata Coverage: 100
