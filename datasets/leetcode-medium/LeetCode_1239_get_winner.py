from typing import List


def get_winner(arr: List[str], k: int) -> str:
    """
    Given an integer array arr of distinct integers and an integer k.
    A game will be played between the first two elements of the array (i.e. arr[0] and arr[1]). In each round of the game, we compare arr[0] with arr[1], the larger integer wins and remains at position 0, and the smaller integer moves to the end of the array. The game ends when an integer wins k consecutive rounds.
    Return the integer which will win the game.
    It is guaranteed that there will be a winner of the game.
 
    Example 1:

    Input: arr = [2,1,3,5,4,6,7], k = 2
    Output: 5
    Explanation: Let's see the rounds of the game:
    Round |       arr       | winner | win_count
      1   | [2,1,3,5,4,6,7] | 2      | 1
      2   | [2,3,5,4,6,7,1] | 3      | 1
      3   | [3,5,4,6,7,1,2] | 5      | 1
      4   | [5,4,6,7,1,2,3] | 5      | 2
    So we can see that 4 rounds will be played and 5 is the winner because it wins 2 consecutive games.

    Example 2:

    Input: arr = [3,2,1], k = 10
    Output: 3
    Explanation: 3 will win the first 10 rounds consecutively.

 
    Constraints:

    2 <= arr.length <= 105
    1 <= arr[i] <= 106
    arr contains distinct integers.
    1 <= k <= 109

    """
    ### Canonical solution below ###
    winner = arr[0]
    consecutive_wins = 0

    for i in range(1, len(arr)):
        if arr[i] > winner:
            winner = arr[i]
            consecutive_wins = 0

        consecutive_wins += 1
        if consecutive_wins == k:
            break

    return winner




### Unit tests below ###
def check(candidate):
	assert candidate(["a", "a", "b", "b"], 4) == "b"
	assert candidate(["d", "c", "b", "a", "a"], 4) == "d"
	assert candidate(["d", "c", "b", "a", "b"], 3) == "d"
	assert candidate(["c", "c", "b", "b", "a", "a"], 4) == "c"
	assert candidate(["a", "a", "a", "a"], 4) == "a"
	assert candidate(["a", "a", "b", "b"], 2) == "b"
	assert candidate(["d", "c", "b", "a", "a"], 2) == "d"
	assert candidate(["d", "c", "b", "a", "a"], 3) == "d"
	assert candidate(["b", "b", "a", "a"], 3) == "b"
	assert candidate(["c", "c", "b", "b", "a", "a"], 2) == "c"
	assert candidate(["d", "c", "b", "a", "b"], 1) == "d"
	assert candidate(["c", "c", "b", "b", "a", "a"], 5) == "c"
	assert candidate(["a", "a", "a", "a", "c"], 3) == "a"
	assert candidate(["d", "c", "b", "a"], 3) == "d"
	assert candidate(["e", "d", "c", "b", "a"], 6) == "e"
	assert candidate(["d", "c", "b", "a"], 4) == "d"
	assert candidate(["a", "b", "c", "d", "e"], 5) == "e"
	assert candidate(["d", "c", "b", "a", "c"], 3) == "d"
	assert candidate(["a", "b", "c", "d"], 4) == "d"
	assert candidate(["d", "c", "b", "a", "c"], 1) == "d"
	assert candidate(["a", "a", "a", "a", "b", "b"], 2) == "a"
	assert candidate(["a", "a", "b", "b", "c", "c"], 6) == "c"
	assert candidate(["b", "b", "a", "a"], 4) == "b"
	assert candidate(["a", "a", "b", "b"], 3) == "b"
	assert candidate(["b", "b", "b", "b", "b", "b"], 4) == "b"
	assert candidate(["b", "b", "a", "a"], 5) == "b"
	assert candidate(["a"], 1) == "a"
	assert candidate(["d", "c", "b", "a", "a"], 1) == "d"
	assert candidate(["d", "c", "b", "a", "c"], 4) == "d"
	assert candidate(["d", "c", "b", "a"], 2) == "d"
	assert candidate(["d", "c", "b", "a"], 5) == "d"
	assert candidate(["c", "b", "a"], 2) == "c"
	assert candidate(["e", "d", "c", "b", "a"], 5) == "e"
	assert candidate(["e", "d", "c", "b", "a"], 3) == "e"
	assert candidate(["b", "b", "a", "a"], 2) == "b"
	assert candidate(["b", "b", "b", "b", "b"], 4) == "b"
	assert candidate(["e", "d", "c", "b", "a"], 2) == "e"
	assert candidate(["c", "c", "b", "b", "a", "a"], 3) == "c"
	assert candidate(["a", "b", "c", "d"], 3) == "d"
	assert candidate(["d", "c", "b", "a", "b"], 4) == "d"
	assert candidate(["d", "c", "b", "a", "b"], 2) == "d"
	assert candidate(["e", "d", "c", "b", "a"], 4) == "e"
	assert candidate(["a", "a", "a", "a", "b", "b"], 3) == "a"
	assert candidate(["c", "c", "c", "c", "b", "b"], 3) == "c"
	assert candidate(["c", "b", "a"], 1) == "c"
	assert candidate(["d", "c", "b", "a", "c"], 2) == "d"
	assert candidate(["c", "c", "c", "c", "c"], 5) == "c"
	assert candidate(["b", "b", "a", "a", "c"], 3) == "b"
	assert candidate(["d", "c", "b", "a"], 6) == "d"
def test_check():
	check(get_winner)
# Metadata Difficulty: Medium
# Metadata Topics: array,simulation
# Metadata Coverage: 100
