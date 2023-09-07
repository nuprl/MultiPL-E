def min_time_to_type(word: str) -> int:
    """
    There is a special typewriter with lowercase English letters 'a' to 'z' arranged in a circle with a pointer. A character can only be typed if the pointer is pointing to that character. The pointer is initially pointing to the character 'a'.

    Each second, you may perform one of the following operations:

    Move the pointer one character counterclockwise or clockwise.
    Type the character the pointer is currently on.

    Given a string word, return the minimum number of seconds to type out the characters in word.
 
    Example 1:

    Input: word = "abc"
    Output: 5
    Explanation: 
    The characters are printed as follows:
    - Type the character 'a' in 1 second since the pointer is initially on 'a'.
    - Move the pointer clockwise to 'b' in 1 second.
    - Type the character 'b' in 1 second.
    - Move the pointer clockwise to 'c' in 1 second.
    - Type the character 'c' in 1 second.

    Example 2:

    Input: word = "bza"
    Output: 7
    Explanation:
    The characters are printed as follows:
    - Move the pointer clockwise to 'b' in 1 second.
    - Type the character 'b' in 1 second.
    - Move the pointer counterclockwise to 'z' in 2 seconds.
    - Type the character 'z' in 1 second.
    - Move the pointer clockwise to 'a' in 1 second.
    - Type the character 'a' in 1 second.

    Example 3:

    Input: word = "zjpc"
    Output: 34
    Explanation:
    The characters are printed as follows:
    - Move the pointer counterclockwise to 'z' in 1 second.
    - Type the character 'z' in 1 second.
    - Move the pointer clockwise to 'j' in 10 seconds.
    - Type the character 'j' in 1 second.
    - Move the pointer clockwise to 'p' in 6 seconds.
    - Type the character 'p' in 1 second.
    - Move the pointer counterclockwise to 'c' in 13 seconds.
    - Type the character 'c' in 1 second.

 
    Constraints:

    1 <= word.length <= 100
    word consists of lowercase English letters.

    """
    ### Canonical solution below ###
    time, prev = 0, 0
    for c in word:
        pos = ord(c) - ord('a')
        time += min(abs(pos - prev), 26 - abs(pos - prev)) + 1
        prev = pos
    return time




### Unit tests below ###
def check(candidate):
	assert candidate("zaa") == 5
	assert candidate("abc") == 5
	assert candidate(
    "zjpc") == 34, "This one might be a bit hard. See if you can figure it out!"
	assert candidate("a") == 1
	assert candidate(
    "zjpc") == 34, "This is a long input that should require the algorithm to fully optimize"
	assert candidate(
    "zjpc") == 34, "This one had me stumped for a little bit. I believe this is correct."
	assert candidate("bza") == 7
	assert candidate("az") == 3
	assert candidate("cba") == 7
	assert candidate(
    "zjpc") == 34, "This is the example test case. Feel free to add more of your own."
	assert candidate("azy") == 5
	assert candidate("zzzza") == 7
	assert candidate(
    "zjpc") == 34, "This is the example test case from the problem description."
	assert candidate("ab") == 3
	assert candidate("aaaabbbbccccdddd") == 19
	assert candidate("aaa") == 3
def test_check():
	check(min_time_to_type)
# Metadata Difficulty: Easy
# Metadata Topics: string,greedy
# Metadata Coverage: 100
