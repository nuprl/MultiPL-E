def longest_beautiful_substring(word: str) -> int:
    """
    A string is considered beautiful if it satisfies the following conditions:

    Each of the 5 English vowels ('a', 'e', 'i', 'o', 'u') must appear at least once in it.
    The letters must be sorted in alphabetical order (i.e. all 'a's before 'e's, all 'e's before 'i's, etc.).

    For example, strings "aeiou" and "aaaaaaeiiiioou" are considered beautiful, but "uaeio", "aeoiu", and "aaaeeeooo" are not beautiful.
    Given a string word consisting of English vowels, return the length of the longest beautiful substring of word. If no such substring exists, return 0.
    A substring is a contiguous sequence of characters in a string.
 
    Example 1:

    Input: word = "aeiaaioaaaaeiiiiouuuooaauuaeiu"
    Output: 13
    Explanation: The longest beautiful substring in word is "aaaaeiiiiouuu" of length 13.
    Example 2:

    Input: word = "aeeeiiiioooauuuaeiou"
    Output: 5
    Explanation: The longest beautiful substring in word is "aeiou" of length 5.

    Example 3:

    Input: word = "a"
    Output: 0
    Explanation: There is no beautiful substring, so return 0.

 
    Constraints:

    1 <= word.length <= 5 * 105
    word consists of characters 'a', 'e', 'i', 'o', and 'u'.

    """
    ### Canonical solution below ###
    if len(word) < 5:
        return 0

    max_length = current_length = 1
    current_vowels = word[0]

    for i in range(1, len(word)):
        if word[i] >= current_vowels[-1] and word[i] not in current_vowels:
            current_vowels += word[i]
        elif word[i] == current_vowels[-1]:
            pass
        else:
            current_vowels = word[i]
            current_length = 0

        current_length += 1

        if current_vowels == "aeiou":
            max_length = max(max_length, current_length)

    return max_length




### Unit tests below ###
def check(candidate):
	assert candidate("aeioubaeiou") == 5
	assert candidate("aeii") == 0
	assert candidate(
    "aeiaaioaaaaeiiiiouuuooaauuaeii"
) == 13
	assert candidate("aeioub") == 5
	assert candidate("d") == 0
	assert candidate(
    "aeioubaeiouaeiouaeioubaeiouaeiou") == 5
	assert candidate("k") == 0
	assert candidate("aeiouu" * 5000) == 6
	assert candidate("aei") == 0
	assert candidate("i") == 0
	assert candidate(
    "aeeeiiiioooauuuaeiou") == 5
	assert candidate("m") == 0
	assert candidate("q") == 0
	assert candidate("b") == 0
	assert candidate("aeiouaeio") == 5
	assert candidate("baeiou") == 5
	assert candidate("aeeeiiiioooauuuaeiou") == 5
	assert candidate("g") == 0
	assert candidate("a") == 0
	assert candidate("aeio") == 0
	assert candidate("w") == 0
	assert candidate("h") == 0
	assert candidate("t") == 0
	assert candidate(
    "aeiaaioaaaaeiiiiouuuooaauuaeiu"
) == 13
	assert candidate("f") == 0
	assert candidate("n") == 0
	assert candidate("ae") == 0
	assert candidate("l") == 0
	assert candidate("o") == 0
	assert candidate("u") == 0
	assert candidate("aeiaaioaaaaeiiiiouuuooaauuaeiu") == 13
	assert candidate("aeiu") == 0
	assert candidate("aeiouuo") == 6
	assert candidate("j") == 0
	assert candidate("v") == 0
	assert candidate("s") == 0
	assert candidate("aeiou" * 5000) == 5
	assert candidate("aeiou") == 5
	assert candidate("r") == 0
	assert candidate("a" + "e" * 5000 + "i" * 5000) == 1
	assert candidate("c") == 0
	assert candidate(
    "aeiaaioaaaaeiiiiouuuooaauuaeeeeeiou"
) == 13
	assert candidate("aeiouu") == 6
	assert candidate("ab") == 0
	assert candidate(
    "aeiaaioaaaaeiiiiouuuooaauuaeiu") == 13
	assert candidate("p") == 0
	assert candidate("aeiouea") == 5
	assert candidate("e") == 0
def test_check():
	check(longest_beautiful_substring)
# Metadata Difficulty: Medium
# Metadata Topics: string,sliding-window
# Metadata Coverage: 100
