from typing import List


def max_satisfaction(satisfaction: List[int]) -> int:
    """
    A chef has collected data on the satisfaction level of his n dishes. Chef can cook any dish in 1 unit of time.
    Like-time coefficient of a dish is defined as the time taken to cook that dish including previous dishes multiplied by its satisfaction level i.e. time[i] * satisfaction[i].
    Return the maximum sum of like-time coefficient that the chef can obtain after dishes preparation.
    Dishes can be prepared in any order and the chef can discard some dishes to get this maximum value.
 
    Example 1:

    Input: satisfaction = [-1,-8,0,5,-9]
    Output: 14
    Explanation: After Removing the second and last dish, the maximum total like-time coefficient will be equal to (-1*1 + 0*2 + 5*3 = 14).
    Each dish is prepared in one unit of time.
    Example 2:

    Input: satisfaction = [4,3,2]
    Output: 20
    Explanation: Dishes can be prepared in any order, (2*1 + 3*2 + 4*3 = 20)

    Example 3:

    Input: satisfaction = [-1,-4,-5]
    Output: 0
    Explanation: People do not like the dishes. No dish is prepared.

 
    Constraints:

    n == satisfaction.length
    1 <= n <= 500
    -1000 <= satisfaction[i] <= 1000

    """
    ### Canonical solution below ###
    satisfaction.sort(reverse=True)
    ans = total = sum = 0
    for i in satisfaction:
        total += i
        if total > 0:
            sum += total
            ans = max(ans, sum)
    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 55
	assert candidate([-1, -4, -5]) == 0
	assert candidate([-1, -8, 0, 5, -9]) == 14
	assert candidate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
	assert candidate([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10]) == 0
	assert candidate([]) == 0
	assert candidate([-10, -20, -30, -40, -50, -60, -70, -80, -90, -100]) == 0
	assert candidate([-1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == 0
	assert candidate([-1000, -1000, -1000]) == 0
	assert candidate([4, 3, 2]) == 20
def test_check():
	check(max_satisfaction)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,greedy,sorting
# Metadata Coverage: 100
