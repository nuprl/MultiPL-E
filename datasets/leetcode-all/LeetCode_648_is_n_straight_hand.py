from typing import List


def is_n_straight_hand(hand: List[int], group_size: int) -> bool:
    """
    Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.
    Given an integer array hand where hand[i] is the value written on the ith card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.
 
    Example 1:

    Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
    Output: true
    Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]

    Example 2:

    Input: hand = [1,2,3,4,5], groupSize = 4
    Output: false
    Explanation: Alice's hand can not be rearranged into groups of 4.


 
    Constraints:

    1 <= hand.length <= 104
    0 <= hand[i] <= 109
    1 <= groupSize <= hand.length

 
    Note: This question is the same as 1296: https://leetcode.com/problems/divide-array-in-sets-of-k-consecutive-numbers/
    """
    ### Canonical solution below ###
    from collections import Counter
    counts = Counter(hand)

    for card in sorted(counts):
        if counts[card] > 0:
            for i in range(group_size - 1, -1, -1):
                if counts[card + i] < counts[card]:
                    return False
                counts[card + i] -= counts[card]

    return True




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 8) == False
	assert candidate([1,2,3,4,5,6], 3) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 14) == False
	assert candidate([1,2,3,4,5,6,7,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 5) == False
	assert candidate([1,2,3,4,5,6], 4) == False
	assert candidate(
    [1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6,7,7,7,7,7,8,8,8,8,8,9,9,9,9,9,10,10,10,10,10,11,11,11,11,11,12,12,12,12,12,13,13,13,13,13,14,14,14,14,14], 13) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 11) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 3) == True
	assert candidate(
    [1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5,6,6,6,6,6,7,7,7,7,7,8,8,8,8,8,9,9,9,9,9,10,10,10,10,10,11,11,11,11,11,12,12,12,12,12,13,13,13,13,13], 13) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 12) == False
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 15) == True
	assert candidate([1, 2, 3, 4, 5, 6], 3) == True
	assert candidate(range(1, 10), 3) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 10) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 8) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], 2) == True
	assert candidate([1,1,2,2,3,3], 3) == True
	assert candidate([1, 2, 3, 4, 5, 6], 4) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], 6) == False
	assert candidate([1,1,2,2,3,3,4,4,5,5], 5) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 8) == False
	assert candidate(
    [1, 1, 2, 2, 3, 3, 4, 4, 5, 5], 6) == False
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == True
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 10) == True
	assert candidate([1, 1, 2, 2, 3, 3], 3) == True
	assert candidate([1,1,2,2,3,3], 2) == False
	assert candidate([1,2,2,3,3,3,4,4,4,4], 4) == False
	assert candidate(
    [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 15) == False
def test_check():
	check(is_n_straight_hand)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting
# Metadata Coverage: 100
