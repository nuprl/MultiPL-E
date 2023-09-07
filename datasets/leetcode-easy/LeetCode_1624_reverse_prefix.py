def reverse_prefix(word: str, ch: str) -> str:
    """
    Given a 0-indexed string word and a character ch, reverse the segment of word that starts at index 0 and ends at the index of the first occurrence of ch (inclusive). If the character ch does not exist in word, do nothing.

    For example, if word = "abcdefd" and ch = "d", then you should reverse the segment that starts at 0 and ends at 3 (inclusive). The resulting string will be "dcbaefd".

    Return the resulting string.
 
    Example 1:

    Input: word = "abcdefd", ch = "d"
    Output: "dcbaefd"
    Explanation: The first occurrence of "d" is at index 3. 
    Reverse the part of word from 0 to 3 (inclusive), the resulting string is "dcbaefd".

    Example 2:

    Input: word = "xyxzxe", ch = "z"
    Output: "zxyxxe"
    Explanation: The first and only occurrence of "z" is at index 3.
    Reverse the part of word from 0 to 3 (inclusive), the resulting string is "zxyxxe".

    Example 3:

    Input: word = "abcd", ch = "z"
    Output: "abcd"
    Explanation: "z" does not exist in word.
    You should not do any reverse operation, the resulting string is "abcd".

 
    Constraints:

    1 <= word.length <= 250
    word consists of lowercase English letters.
    ch is a lowercase English letter.

    """
    ### Canonical solution below ###
    try:
        index = word.index(ch)
        return word[:index+1][::-1] + word[index+1:]
    except ValueError:
        return word




### Unit tests below ###
def check(candidate):
	assert candidate("abcdefg", "a") == "abcdefg"
	assert candidate(("a"*1000) + "b", "b") == ("b" + ("a"*1000))
	assert candidate(("a"*1000) + "b", "a") == ("a"*1000) + "b"
	assert candidate("efgheabcd", "e") == "efgheabcd"
	assert candidate(("a"*1000) + "b", "c") == ("a"*1000) + "b"
	assert candidate("a", "a") == "a"
	assert candidate("", "a") == ""
	assert candidate(candidate(candidate(candidate("abc", "a"), "a"), "a"), "a") == "abc"
	assert candidate("abracadabra", "r") == "rbaacadabra"
	assert candidate("abcdefg", "g") == "gfedcba"
	assert candidate("b" + ("a"*1000), "b") == "b" + ("a"*1000)
	assert candidate("abcd", "z") == "abcd"
	assert candidate("b" + ("a"*1000), "c") == "b" + ("a"*1000)
	assert candidate("abcdefg", "d") == "dcbaefg"
	assert candidate(("a"*2000) + "b", "a") == ("a"*2000) + "b"
	assert candidate("abcde", "f") == "abcde"
	assert candidate(("a"*2000) + "b", "c") == ("a"*2000) + "b"
	assert candidate("abcdef", "a") == "abcdef"
	assert candidate("abcdefg", "h") == "abcdefg"
	assert candidate("abcde", "e") == "edcba"
	assert candidate("abc", "a") == "abc"
	assert candidate(("a"*2000) + "b", "b") == ("b" + ("a"*2000))
	assert candidate("abcdefg", "e") == "edcbafg"
	assert candidate("abcdefg", "b") == "bacdefg"
	assert candidate("abcde", "a") == "abcde"
	assert candidate(
    "abcdefghijklmnopqrstuvwxyz", "z") == "zyxwvutsrqponmlkjihgfedcba"
	assert candidate("abcdefd", "d") == "dcbaefd"
	assert candidate(
    "xyxzxe", "z") == "zxyxxe"
	assert candidate(
    "abcdefghijklmnopqrstuvwxyz", "a") == "abcdefghijklmnopqrstuvwxyz"
	assert candidate(candidate(candidate("abc", "a"), "a"), "a") == "abc"
	assert candidate("abcdefg", "c") == "cbadefg"
	assert candidate(candidate("abc", "a"), "a") == "abc"
	assert candidate("aaa", "a") == "aaa"
def test_check():
	check(reverse_prefix)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
