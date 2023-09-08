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
    q = deque(["0000"])

    if "0000" in dead:
        return -1

    visited.add("0000")
    moves = 0

    while q:
        level_size = len(q)
        for i in range(level_size):
            cur = q.popleft()

            if cur == target:
                return moves

            for j in range(4):
                for k in [-1, 1]:
                    next_val = cur[:j] + str((int(cur[j]) + k + 10) % 10) + cur[j + 1:]

                    if next_val not in visited and next_val not in dead:
                        visited.add(next_val)
                        q.append(next_val)

        moves += 1

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(["0001", "1112", "2223", "3334", "4445"], "1111") == 4
	assert candidate(["1111", "9999", "8888", "7777", "6666"], "0000") == 0
	assert candidate(["8887", "8889", "8878", "8898", "8788", "8988", "7888", "9888"], "8888") == -1
	assert candidate(["0001", "1112", "2223", "3334", "4445"], "3333") == 12
	assert candidate(["0001", "1112", "2223", "3334", "4445"], "2222") == 8
	assert candidate(["0001", "1112", "2223", "3334", "4445"], "0000") == 0
	assert candidate(["8888"], "0009") == 1
	assert candidate(["0000", "0002", "0003", "0004", "0005"], "0001") == -1
	assert candidate(["0201", "0101", "0102", "1212", "2002"], "0202") == 6
	assert candidate(
    ["8887", "8889", "8878", "8898", "8788", "8988", "7888", "9888"], "8888"
) == -1
	assert candidate(["0001", "1112", "2223", "3334", "4445"], "4444") == 16
	assert candidate(["0001", "0002", "0003", "0004", "0005"], "0000") == 0
	assert candidate(["0000"], "8888") == -1
	assert candidate(["1111", "9999", "8888", "7777", "6666"], "5555") == 20
def test_check():
	check(openLock)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,breadth-first-search
# Metadata Coverage: 100
