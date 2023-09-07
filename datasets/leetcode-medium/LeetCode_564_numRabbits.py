from typing import List


def numRabbits(answers: List[int]) -> int:
    """
    There is a forest with an unknown number of rabbits. We asked n rabbits "How many rabbits have the same color as you?" and collected the answers in an integer array answers where answers[i] is the answer of the ith rabbit.
    Given the array answers, return the minimum number of rabbits that could be in the forest.
 
    Example 1:

    Input: answers = [1,1,2]
    Output: 5
    Explanation:
    The two rabbits that answered "1" could both be the same color, say red.
    The rabbit that answered "2" can't be red or the answers would be inconsistent.
    Say the rabbit that answered "2" was blue.
    Then there should be 2 other blue rabbits in the forest that didn't answer into the array.
    The smallest possible number of rabbits in the forest is therefore 5: 3 that answered plus 2 that didn't.

    Example 2:

    Input: answers = [10,10,10]
    Output: 11

 
    Constraints:

    1 <= answers.length <= 1000
    0 <= answers[i] < 1000

    """
    ### Canonical solution below ###
    from collections import Counter
    count = Counter(answers)
    rabbits = 0
    for ans, cnt in count.items():
        rabbits += (ans + cnt)//(ans + 1) * (ans + 1)
    return rabbits




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,2]) == 5
	assert candidate([0]*1000) == 1000
	assert candidate([10,10,10]) == 11
	assert candidate([10]*100) == 110
	assert candidate([0]) == 1
	assert candidate([]) == 0
	assert candidate([1]*999) == 1000
	assert candidate([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == 55
	assert candidate([0,0,0,0]) == 4
	assert candidate([999]) == 1000
	assert candidate([1,0,1,0,0]) == 5
def test_check():
	check(numRabbits)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,greedy
# Metadata Coverage: 100
