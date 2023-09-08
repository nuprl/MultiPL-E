def minTimeToType(word: str) -> int:
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
    time = 0
    position = 0
    for c in word:
        next_position = ord(c) - ord('a')
        diff = abs(next_position - position)
        time += min(diff, 26 - diff) + 1
        position = next_position
    return time




### Unit tests below ###
def check(candidate):
	assert candidate("zjpc") == 34
	assert candidate("zxyw") == 10
	assert candidate("abcd") == 7
	assert candidate("bza") == 7
	assert candidate("a") == 1
	assert candidate("aaaa") == 4
	assert candidate("zyxwvutsrqponmlkjihgfedcb") == 50
	assert candidate("azaz") == 7
	assert candidate("abc") == 5
	assert candidate("abcdefghijklmnopqrstuvwxyz") == 51
	assert candidate("az") == 3
def test_check():
	check(minTimeToType)
# Metadata Difficulty: Easy
# Metadata Topics: string,greedy
# Metadata Coverage: 100
