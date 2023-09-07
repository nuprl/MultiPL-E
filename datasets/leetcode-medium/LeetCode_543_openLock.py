from typing import List


def openLock(deadends: List[str], target: str) -> int:
    """
    You have a lock in front of you with 4 circular wheels. Each wheel has 10 slots: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'. The wheels can rotate freely and wrap around: for example we can turn '9' to be '0', or '0' to be '9'. Each move consists of turning one wheel one slot.
    The lock initially starts at '0000', a string representing the state of the 4 wheels.
    You are given a list of deadends dead ends, meaning if the lock displays any of these codes, the wheels of the lock will stop turning and you will be unable to open it.
    Given a target representing the value of the wheels that will unlock the lock, return the minimum total number of turns required to open the lock, or -1 if it is impossible.
 
    Example 1:

    Input: deadends = ["0201","0101","0102","1212","2002"], target = "0202"
    Output: 6
    Explanation: 
    A sequence of valid moves would be "0000" -> "1000" -> "1100" -> "1200" -> "1201" -> "1202" -> "0202".
    Note that a sequence like "0000" -> "0001" -> "0002" -> "0102" -> "0202" would be invalid,
    because the wheels of the lock become stuck after the display becomes the dead end "0102".

    Example 2:

    Input: deadends = ["8888"], target = "0009"
    Output: 1
    Explanation: We can turn the last wheel in reverse to move from "0000" -> "0009".

    Example 3:

    Input: deadends = ["8887","8889","8878","8898","8788","8988","7888","9888"], target = "8888"
    Output: -1
    Explanation: We cannot reach the target without getting stuck.

 
    Constraints:

    1 <= deadends.length <= 500
    deadends[i].length == 4
    target.length == 4
    target will not be in the list deadends.
    target and deadends[i] consist of digits only.

    """
    ### Canonical solution below ###
    from collections import deque
    dead = set(deadends)
    visited = set()
    wheel_states = deque([("0000", 0)])

    if "0000" in dead:
        return -1

    while wheel_states:
        current_state, turns = wheel_states.popleft()

        if current_state == target:
            return turns

        for i in range(4):
            up_state = current_state[:i] + str((int(current_state[i]) + 1) % 10) + current_state[i + 1:]
            down_state = current_state[:i] + str((int(current_state[i]) - 1) % 10) + current_state[i + 1:]

            if up_state not in visited and up_state not in dead:
                wheel_states.append((up_state, turns + 1))
                visited.add(up_state)

            if down_state not in visited and down_state not in dead:
                wheel_states.append((down_state, turns + 1))
                visited.add(down_state)

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(["8787","8888","8887","8889","8878","8898","8788","8988","7888","9888"], "8889") == -1
	assert candidate([], "0001") == 1
	assert candidate(["8887","8889","8878","8898","8788","8988","7888","9888"], "8889") == -1
	assert candidate(["8888","8887","8886","8885","8884","8883","8882","8881"], "8888") == -1
	assert candidate(["8888","0001","0002","0000"], "8888") == -1
	assert candidate(["0000","1111","2222","3333","4444","5555","6666","7777","8888","9999"], "1111") == -1
	assert candidate(["0201","0101","0102","1212","2002"], "0202") == 6
	assert candidate(["8888"], "0009") == 1
	assert candidate(["0000","0002","0001"], "8888") == -1
	assert candidate(["8887","8889","8878","8898","8788","8988","7888","9888"], "8887") == -1
	assert candidate(["8887","8889","8878","8898","8788","8988","7888","9888"], "8888") == -1
	assert candidate(["0001","0002","0003","0004","0005","0006","0007","0008"], "0009") == 1
	assert candidate(["8888","8887","8886","8885","8884","8883","8882","8881"], "0000") == 0
	assert candidate([], "0009") == 1
	assert candidate(["0000"], "8888") == -1
def test_check():
	check(openLock)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,breadth-first-search
# Metadata Coverage: 100
