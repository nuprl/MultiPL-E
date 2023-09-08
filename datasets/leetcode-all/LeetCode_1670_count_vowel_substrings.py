def count_vowel_substrings(word: str) -> int:
    """
    A substring is a contiguous (non-empty) sequence of characters within a string.
    A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and 'u') and has all five vowels present in it.
    Given a string word, return the number of vowel substrings in word.
 
    Example 1:

    Input: word = "aeiouu"
    Output: 2
    Explanation: The vowel substrings of word are as follows (underlined):
    - "aeiouu"
    - "aeiouu"

    Example 2:

    Input: word = "unicornarihan"
    Output: 0
    Explanation: Not all 5 vowels are present, so there are no vowel substrings.

    Example 3:

    Input: word = "cuaieuouac"
    Output: 7
    Explanation: The vowel substrings of word are as follows (underlined):
    - "cuaieuouac"
    - "cuaieuouac"
    - "cuaieuouac"
    - "cuaieuouac"
    - "cuaieuouac"
    - "cuaieuouac"
    - "cuaieuouac"

 
    Constraints:

    1 <= word.length <= 100
    word consists of lowercase English letters only.

    """
    ### Canonical solution below ###
    count = 0
    n = len(word)
    vowels = set()

    for i in range(n):
        if word[i] in "aeiou":
            vowels.clear()
            for j in range(i, n):
                if word[j] in "aeiou":
                    vowels.add(word[j])
                if len(vowels) == 5:
                    count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(
    "aei") == 0
	assert candidate(
    "aeiou") == 1
	assert candidate(
    "unicornarihan") == 0
	assert candidate("hbjkbhjklkjkl") == 0
	assert candidate("") == 0
	assert candidate("a") == 0
	assert candidate(
    "aeiouu") == 2
	assert candidate("unicornarihan") == 0
	assert candidate("aeio") == 0
	assert candidate("aeaeaeaeae") == 0
	assert candidate("aeioeio") == 0
	assert candidate("ae") == 0
	assert candidate("aeiouu") == 2
	assert candidate("aei") == 0
	assert candidate(
    "aeieuio") == 1
	assert candidate("aeiuo") == 1
	assert candidate("aeiou") == 1
	assert candidate(
    "aueiu") == 0
	assert candidate(
    "aeiouu"
) == 2
	assert candidate("ai") == 0
def test_check():
	check(count_vowel_substrings)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
