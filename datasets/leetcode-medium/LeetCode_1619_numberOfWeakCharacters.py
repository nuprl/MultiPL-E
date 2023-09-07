from typing import List


def numberOfWeakCharacters(properties: List[List[int]]) -> int:
    """
    You are playing a game that contains multiple characters, and each of the characters has two main properties: attack and defense. You are given a 2D integer array properties where properties[i] = [attacki, defensei] represents the properties of the ith character in the game.
    A character is said to be weak if any other character has both attack and defense levels strictly greater than this character's attack and defense levels. More formally, a character i is said to be weak if there exists another character j where attackj > attacki and defensej > defensei.
    Return the number of weak characters.
 
    Example 1:

    Input: properties = [[5,5],[6,3],[3,6]]
    Output: 0
    Explanation: No character has strictly greater attack and defense than the other.

    Example 2:

    Input: properties = [[2,2],[3,3]]
    Output: 1
    Explanation: The first character is weak because the second character has a strictly greater attack and defense.

    Example 3:

    Input: properties = [[1,5],[10,4],[4,3]]
    Output: 1
    Explanation: The third character is weak because the second character has a strictly greater attack and defense.

 
    Constraints:

    2 <= properties.length <= 105
    properties[i].length == 2
    1 <= attacki, defensei <= 105

    """
    ### Canonical solution below ###
    properties.sort(key=lambda x: (x[0], -x[1]))

    max_defense = 0
    weak_count = 0
    for attack, defense in reversed(properties):
        if defense < max_defense:
            weak_count += 1
        else:
            max_defense = defense

    return weak_count




### Unit tests below ###
def check(candidate):
	assert candidate([[5,5],[6,3],[3,6]]) == 0
	assert candidate([[0,1],[1,0]]) == 0
	assert candidate([[1,10],[2,20],[3,30]]) == 2
	assert candidate([[1,5],[10,4],[4,3]]) == 1
	assert candidate([[5,5], [6,3], [3,6], [3,5], [5,3]]) == 0
	assert candidate([[2,2],[3,3]]) == 1
	assert candidate(
    [[5,5],[6,3],[3,6]]
) == 0, "Should return 0"
	assert candidate(
    [[2,2],[3,3]]) == 1
	assert candidate(
    [[2,2],[3,3]]
) == 1, "Should return 1"
	assert candidate(
    [[10,1],[1,10],[2,2],[3,3],[2,2]]) == 2
	assert candidate(
    [[1,5],[10,4],[4,3]]) == 1
	assert candidate(
    [[5,5],[6,3],[3,6]]
) == 0
	assert candidate(
    [[1,5],[10,4],[4,3]]
) == 1, "Should return 1"
	assert candidate(
    [[5,5],[6,3],[3,6]]) == 0
	assert candidate(
    [[7,4],[10,7],[6,20],[5,5],[1,8]]) == 3
	assert candidate(
    [[1,1],[2,1],[2,2],[1,2]]) == 1
	assert candidate([[1,100], [2,1], [3,1]]) == 0
	assert candidate([[1,5],[3,20],[3,6]]) == 1
def test_check():
	check(numberOfWeakCharacters)
# Metadata Difficulty: Medium
# Metadata Topics: array,stack,greedy,sorting,monotonic-stack
# Metadata Coverage: 100
