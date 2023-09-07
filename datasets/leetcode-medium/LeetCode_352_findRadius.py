from typing import List


def findRadius(houses: List[int], heaters: List[int]) -> int:
    """
    Winter is coming! During the contest, your first job is to design a standard heater with a fixed warm radius to warm all the houses.
    Every house can be warmed, as long as the house is within the heater's warm radius range. 
    Given the positions of houses and heaters on a horizontal line, return the minimum radius standard of heaters so that those heaters could cover all houses.
    Notice that all the heaters follow your radius standard, and the warm radius will the same.
 
    Example 1:

    Input: houses = [1,2,3], heaters = [2]
    Output: 1
    Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard, then all the houses can be warmed.

    Example 2:

    Input: houses = [1,2,3,4], heaters = [1,4]
    Output: 1
    Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard, then all the houses can be warmed.

    Example 3:

    Input: houses = [1,5], heaters = [2]
    Output: 3

 
    Constraints:

    1 <= houses.length, heaters.length <= 3 * 104
    1 <= houses[i], heaters[i] <= 109

    """
    ### Canonical solution below ###
    houses.sort()
    heaters.sort()
    result, i = 0, 0

    for house in houses:
        while i < len(heaters) - 1 and abs(heaters[i + 1] - house) <= abs(heaters[i] - house):
            i += 1
        result = max(result, abs(heaters[i] - house))

    return result




### Unit tests below ###
def check(candidate):
	assert candidate([1,5], [2]) == 3
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12], [1,12]) == 5
	assert candidate([1,10,100,1000,10000], [100,1000,10000]) == 99
	assert candidate(
    [1],
    [1]) == 0
	assert candidate([1,2,3,4], [1,4]) == 1
	assert candidate([1,3,5,7,9], [2,4,6,8,10]) == 1
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10],
    [1,2,3,4,5,6,7,8,9,10]) == 0
	assert candidate([1,2,3,4,5,6,7,8,9], [5]) == 4
	assert candidate([1,3,5,7,9,11,13,15], [2,4,6,8,10,12,14]) == 1
	assert candidate([1,10,100,1000,10000,100000], [100,1000,10000,100000]) == 99
	assert candidate([1,3,5,7,9,11], [2,4,6,8,10]) == 1
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,10]) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,10,11], [1,11]) == 5
	assert candidate([1,2,3], [2]) == 1
	assert candidate([1,3,5,7,9,11,13], [2,4,6,8,10,12]) == 1
	assert candidate(
    [1],
    [2]) == 1
	assert candidate([1,2,3,4,5,6], [3,6]) == 2
	assert candidate([1,2,3,4,5], [3]) == 2
def test_check():
	check(findRadius)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100
