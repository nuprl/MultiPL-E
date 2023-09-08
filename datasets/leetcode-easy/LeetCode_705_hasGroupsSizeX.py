from typing import List


def hasGroupsSizeX(deck: List[int]) -> bool:
    """
    You are given an integer array deck where deck[i] represents the number written on the ith card.
    Partition the cards into one or more groups such that:

    Each group has exactly x cards where x > 1, and
    All the cards in one group have the same integer written on them.

    Return true if such partition is possible, or false otherwise.
 
    Example 1:

    Input: deck = [1,2,3,4,4,3,2,1]
    Output: true
    Explanation: Possible partition [1,1],[2,2],[3,3],[4,4].

    Example 2:

    Input: deck = [1,1,1,2,2,2,3,3]
    Output: false
    Explanation: No possible partition.

 
    Constraints:

    1 <= deck.length <= 104
    0 <= deck[i] < 104

    """
    ### Canonical solution below ###
    from collections import Counter
    from math import gcd
    from functools import reduce
    counts = Counter(deck)
    gcd_result = reduce(gcd, counts.values())
    return gcd_result > 1




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10]) == True
	assert candidate([1,1,2,2,2,2,3,3,3,3,4,4,4,4,4,4]) == True
	assert candidate( [1,1,1,2,2,2,4,4,4,4]) == False
	assert candidate([1,1,1,1,1,1,2,2,2,2]) == True
	assert candidate([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]) == True
	assert candidate([1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4]) == True
	assert candidate(
    [5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22,23,23,24,24,25,25]) == True
	assert candidate([1,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10]) == False
	assert candidate([3,3,3,3,4,4,4,4,4,4]) == True
	assert candidate([1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5]) == True
	assert candidate([1,1,1,2,2,2,3,3,3]) == True
	assert candidate([1,1,1,1,1,2,2,2,2,2]) == True
	assert candidate([1, 2, 3, 4, 4, 3, 2, 1]) == True
	assert candidate([17,13,11,2,3,5,7]) == False
	assert candidate([1,2,3,4,4,3,2,1]) == True
	assert candidate([1,1,1,2,2,2,3,3,3,4,4,4]) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == False
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == False
	assert candidate(range(1000000000, 1000000000+10)) == False
	assert candidate([1,1,1,1,2,2,2,2,2,2]) == True
	assert candidate([1,1,2,2,2,2]) == True
def test_check():
	check(hasGroupsSizeX)
# Metadata Difficulty: Easy
# Metadata Topics: array,hash-table,math,counting,number-theory
# Metadata Coverage: 100
