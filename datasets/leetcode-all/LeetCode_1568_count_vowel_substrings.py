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
    count, a, e, i, o, u = 0, 0, 0, 0, 0, 0
    for c in word:
        if c == 'a':
            a += 1
        elif c == 'e':
            e = a + e
        elif c == 'i':
            i = e + i
        elif c == 'o':
            o = i + o
        elif c == 'u':
            u = o + u
    return u




### Unit tests below ###
def check(candidate):
	assert candidate(
    "aeioubcd") == 1
	assert candidate("aeiouaei") == 1
	assert candidate("aeiouaeiou") == 6
	assert candidate("aeiuo") == 0
	assert candidate(
    "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv") == 0
	assert candidate("") == 0
	assert candidate("a") == 0
	assert candidate(
    "vzlbsiikaomuuaixoiogkqxuwfepnvzkslwiioipvzlsiikvzl") == 0
	assert candidate("u") == 0
	assert candidate(
    "aeiouu") == 2
	assert candidate("unicornarihan") == 0
	assert candidate("aeio") == 0
	assert candidate("aeioubcd") == 1
	assert candidate("abcdefghi") == 0
	assert candidate("ae") == 0
	assert candidate(
    "bbbaeixoqvwuubbb") == 2
	assert candidate("aeiouu") == 2
	assert candidate(
    "bbbaeixoqvwubbb") == 1
	assert candidate("aei") == 0
	assert candidate("aeiouae") == 1
	assert candidate("aeiou") == 1
	assert candidate("aeiouaeio") == 1
def test_check():
	check(count_vowel_substrings)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
