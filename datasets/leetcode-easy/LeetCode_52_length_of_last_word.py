def length_of_last_word(s: str) -> int:
    """
    Given a string s consisting of words and spaces, return the length of the last word in the string.
    A word is a maximal substring consisting of non-space characters only.
 
    Example 1:

    Input: s = "Hello World"
    Output: 5
    Explanation: The last word is "World" with length 5.

    Example 2:

    Input: s = "   fly me   to   the moon  "
    Output: 4
    Explanation: The last word is "moon" with length 4.

    Example 3:

    Input: s = "luffy is still joyboy"
    Output: 6
    Explanation: The last word is "joyboy" with length 6.

 
    Constraints:

    1 <= s.length <= 104
    s consists of only English letters and spaces ' '.
    There will be at least one word in s.

    """
    ### Canonical solution below ###
    length = 0
    tail = len(s) - 1
    while tail >= 0 and s[tail] == ' ':
        tail -= 1
    while tail >= 0 and s[tail] != ' ':
        length += 1
        tail -= 1
    return length




### Unit tests below ###
def check(candidate):
	assert candidate("  p  y  t  h  o  n     programming    ") == 11
	assert candidate("Hello World") == 5
	assert candidate(
    "Hello World") == 5, "Should handle other cases too"
	assert candidate(
    "  luffy is still joyboy    ") == 6, "Extra spaces at the end"
	assert candidate("luffy is still joyboy") == 6, "No extra spaces"
	assert candidate("p y t h o n") == 1
	assert candidate("      a") == 1
	assert candidate(
    "luffy is still joyboy") == 6
	assert candidate("python programming  ") == 11
	assert candidate("a a") == 1
	assert candidate("   fly me   to   the moon  ") == 4
	assert candidate("luffy is still joyboy ") == 6
	assert candidate(
    "   fly me   to   the moon  ") == 4
	assert candidate(
    "luffy is still joyboy") == 6, "Should handle other cases too"
	assert candidate("    p  y  t  h  o  n     programming    ") == 11
	assert candidate("    python    programming") == 11
	assert candidate("python programming") == 11
	assert candidate("  p  y  t  h  o  n  programming  ") == 11
	assert candidate("python    programming    ") == 11
	assert candidate("Hello") == 5
	assert candidate("a") == 1
	assert candidate("  python programming    ") == 11
	assert candidate("p  y  t  h  o  n") == 1
	assert candidate("p  y  t  h  o  n     programming    ") == 11
	assert candidate("p  y  t  h  o  n  programming  ") == 11
	assert candidate("p  y  t  h  o  n  programming") == 11
	assert candidate("p  y  t  h  o  n     programming") == 11
	assert candidate(" aaa ") == 3
	assert candidate("  python  ") == 6
	assert candidate("Hello ") == 5
	assert candidate("luffy is still joyboy ") == 6, "Extra space at the end"
	assert candidate("python") == 6
	assert candidate("Hello World ") == 5
	assert candidate(" ") == 0
	assert candidate(" a ") == 1
	assert candidate("    python    programming    ") == 11
	assert candidate("   fly me   to   the moon   ") == 4
	assert candidate(
    "  luffy is still joyboy") == 6, "Extra spaces at the beginning"
	assert candidate("    p  y  t  h  o  n     programming") == 11
	assert candidate("    python") == 6
	assert candidate("      ") == 0
	assert candidate("python    ") == 6
	assert candidate("  p  y  t  h  o  n  programming") == 11
	assert candidate("") == 0
	assert candidate("  python programming  ") == 11
	assert candidate("b   a    ") == 1
	assert candidate("  python programming") == 11
	assert candidate(" a") == 1
	assert candidate("python    programming") == 11
	assert candidate("luffy is still joyboy   ") == 6, "Extra spaces at both ends"
	assert candidate(" aaaa ") == 4
	assert candidate("a ") == 1
def test_check():
	check(length_of_last_word)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
