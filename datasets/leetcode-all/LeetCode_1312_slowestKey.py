from typing import List


def slowestKey(releaseTimes: List[int], keysPressed: str) -> str:
    """
    A newly designed keypad was tested, where a tester pressed a sequence of n keys, one at a time.
    You are given a string keysPressed of length n, where keysPressed[i] was the ith key pressed in the testing sequence, and a sorted list releaseTimes, where releaseTimes[i] was the time the ith key was released. Both arrays are 0-indexed. The 0th key was pressed at the time 0, and every subsequent key was pressed at the exact time the previous key was released.
    The tester wants to know the key of the keypress that had the longest duration. The ith keypress had a duration of releaseTimes[i] - releaseTimes[i - 1], and the 0th keypress had a duration of releaseTimes[0].
    Note that the same key could have been pressed multiple times during the test, and these multiple presses of the same key may not have had the same duration.
    Return the key of the keypress that had the longest duration. If there are multiple such keypresses, return the lexicographically largest key of the keypresses.
 
    Example 1:

    Input: releaseTimes = [9,29,49,50], keysPressed = "cbcd"
    Output: "c"
    Explanation: The keypresses were as follows:
    Keypress for 'c' had a duration of 9 (pressed at time 0 and released at time 9).
    Keypress for 'b' had a duration of 29 - 9 = 20 (pressed at time 9 right after the release of the previous character and released at time 29).
    Keypress for 'c' had a duration of 49 - 29 = 20 (pressed at time 29 right after the release of the previous character and released at time 49).
    Keypress for 'd' had a duration of 50 - 49 = 1 (pressed at time 49 right after the release of the previous character and released at time 50).
    The longest of these was the keypress for 'b' and the second keypress for 'c', both with duration 20.
    'c' is lexicographically larger than 'b', so the answer is 'c'.

    Example 2:

    Input: releaseTimes = [12,23,36,46,62], keysPressed = "spuda"
    Output: "a"
    Explanation: The keypresses were as follows:
    Keypress for 's' had a duration of 12.
    Keypress for 'p' had a duration of 23 - 12 = 11.
    Keypress for 'u' had a duration of 36 - 23 = 13.
    Keypress for 'd' had a duration of 46 - 36 = 10.
    Keypress for 'a' had a duration of 62 - 46 = 16.
    The longest of these was the keypress for 'a' with duration 16.
 
    Constraints:

    releaseTimes.length == n
    keysPressed.length == n
    2 <= n <= 1000
    1 <= releaseTimes[i] <= 109
    releaseTimes[i] < releaseTimes[i+1]
    keysPressed contains only lowercase English letters.

    """
    ### Canonical solution below ###
    max_key = keysPressed[0]
    max_duration = releaseTimes[0]
    for i in range(1, len(releaseTimes)):
        duration = releaseTimes[i] - releaseTimes[i - 1]
        if duration > max_duration or (duration == max_duration and keysPressed[i] > max_key):
            max_key = keysPressed[i]
            max_duration = duration
    return max_key




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], "edcba") == "e"
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "aaaabbbbcc") == "c"
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "abcdeabcde") == "e"
	assert candidate([12, 23, 36, 46, 62], "spuda") == "a"
	assert candidate([3, 3, 2, 2, 2, 2], "aba") == "a"
	assert candidate([12, 14, 22, 23, 25, 27, 29, 30, 31, 34], "slowest") == "s"
	assert candidate([1, 2, 3, 4, 5], "aaaaa") == "a"
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "abcdefghij") == "j"
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "abcdefghij") == "j"
	assert candidate([1, 2, 3, 4, 5], "abcde") == "e"
	assert candidate([10, 20, 30, 40, 50, 60, 70, 80, 90, 100], "jihgfedcba") == "j"
	assert candidate([10, 20, 30, 40, 50], "abcde") == "e"
	assert candidate([1, 10, 10, 11, 11], "xxy") == "x"
	assert candidate([33, 22, 33, 22, 33, 45, 33, 89, 91, 122, 122], "anotnann") == "n"
	assert candidate(
    [250, 300, 400, 450, 500, 800, 900, 1000, 1100, 1150], "itdxjziqhnvx") == "z"
	assert candidate([3, 1, 3, 4, 5, 5, 5, 5, 5, 5], "cbcd") == "c"
	assert candidate([10, 20, 30, 40, 50], "edcba") == "e"
	assert candidate([9, 29, 49, 50], "cbcd") == "c"
def test_check():
	check(slowestKey)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
