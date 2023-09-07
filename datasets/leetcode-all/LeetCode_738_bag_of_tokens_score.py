from typing import List


def bag_of_tokens_score(tokens: List[int], power: int) -> int:
    """
    You have an initial power of power, an initial score of 0, and a bag of tokens where tokens[i] is the value of the ith token (0-indexed).
    Your goal is to maximize your total score by potentially playing each token in one of two ways:

    If your current power is at least tokens[i], you may play the ith token face up, losing tokens[i] power and gaining 1 score.
    If your current score is at least 1, you may play the ith token face down, gaining tokens[i] power and losing 1 score.

    Each token may be played at most once and in any order. You do not have to play all the tokens.
    Return the largest possible score you can achieve after playing any number of tokens.
 
    Example 1:

    Input: tokens = [100], power = 50
    Output: 0
    Explanation: Playing the only token in the bag is impossible because you either have too little power or too little score.

    Example 2:

    Input: tokens = [100,200], power = 150
    Output: 1
    Explanation: Play the 0th token (100) face up, your power becomes 50 and score becomes 1.
    There is no need to play the 1st token since you cannot play it face up to add to your score.

    Example 3:

    Input: tokens = [100,200,300,400], power = 200
    Output: 2
    Explanation: Play the tokens in this order to get a score of 2:
    1. Play the 0th token (100) face up, your power becomes 100 and score becomes 1.
    2. Play the 3rd token (400) face down, your power becomes 500 and score becomes 0.
    3. Play the 1st token (200) face up, your power becomes 300 and score becomes 1.
    4. Play the 2nd token (300) face up, your power becomes 0 and score becomes 2.

 
    Constraints:

    0 <= tokens.length <= 1000
    0 <= tokens[i], power < 104

    """
    ### Canonical solution below ###
    tokens.sort()
    max_score = score = 0
    left, right = 0, len(tokens) - 1

    while left <= right:
        if power >= tokens[left]:
            power -= tokens[left]
            left += 1
            score += 1
            max_score = max(max_score, score)
        elif score > 0:
            power += tokens[right]
            right -= 1
            score -= 1
        else:
            break

    return max_score




### Unit tests below ###
def check(candidate):
	assert candidate([100, 200, 300, 400, 500], 7500) == 5
	assert candidate([100, 200, 300, 400, 500], 3000) == 5
	assert candidate([100, 200, 300, 400, 500], 6500) == 5
	assert candidate([100, 200, 300, 400], 10000) == 4
	assert candidate([1000, 200, 200], 1000) == 2
	assert candidate([100, 200, 300, 400], 500) == 2
	assert candidate([100, 200, 300, 400, 500], 4000) == 5
	assert candidate([100], 50) == 0
	assert candidate([100, 200, 300, 400, 500], 12000) == 5
	assert candidate([100], 100) == 1
	assert candidate([100, 200, 300, 400], 200) == 2
	assert candidate([100, 200, 300, 400, 500], 6000) == 5
	assert candidate([100, 200, 300, 400], 150) == 1
	assert candidate([100, 200, 300, 400, 500], 5000) == 5
	assert candidate([100, 200, 300, 400, 500], 8000) == 5
	assert candidate([100, 200], 150) == 1
	assert candidate([400, 200], 100) == 0
	assert candidate([100, 200, 300, 400, 500], 3500) == 5
	assert candidate([100, 200, 300, 400, 500], 4500) == 5
	assert candidate([100, 200, 300, 400, 500], 1000) == 4
	assert candidate([100, 200, 300, 400, 500], 2500) == 5
	assert candidate([100, 200, 300, 400, 500], 700) == 3
	assert candidate([100, 200, 300, 400, 500], 400) == 2
	assert candidate([100, 200, 300, 400, 500], 2000) == 5
	assert candidate([100, 200, 300, 400], 450) == 2
	assert candidate([100, 200, 300, 400, 500], 7000) == 5
	assert candidate([100, 200, 300, 400, 500], 50) == 0
	assert candidate([100, 200, 300, 400, 500], 500) == 3
	assert candidate([100, 200, 300, 400, 500], 5500) == 5
	assert candidate([100, 200, 300, 400, 500], 300) == 2
	assert candidate([100, 200, 300, 400], 400) == 2
	assert candidate([100, 200, 300, 400], 300) == 2
	assert candidate([100, 200, 300, 400], 250) == 2
	assert candidate([100, 200, 300, 400, 500], 550) == 3
def test_check():
	check(bag_of_tokens_score)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,greedy,sorting
# Metadata Coverage: 100
