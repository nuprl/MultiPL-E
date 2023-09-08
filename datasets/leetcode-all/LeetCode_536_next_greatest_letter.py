from typing import List


def next_greatest_letter(letters: List[str], target: str) -> str:
    """
    You are given an array of characters letters that is sorted in non-decreasing order, and a character target. There are at least two different characters in letters.
    Return the smallest character in letters that is lexicographically greater than target. If such a character does not exist, return the first character in letters.
 
    Example 1:

    Input: letters = ["c","f","j"], target = "a"
    Output: "c"
    Explanation: The smallest character that is lexicographically greater than 'a' in letters is 'c'.

    Example 2:

    Input: letters = ["c","f","j"], target = "c"
    Output: "f"
    Explanation: The smallest character that is lexicographically greater than 'c' in letters is 'f'.

    Example 3:

    Input: letters = ["x","x","y","y"], target = "z"
    Output: "x"
    Explanation: There are no characters in letters that is lexicographically greater than 'z' so we return letters[0].

 
    Constraints:

    2 <= letters.length <= 104
    letters[i] is a lowercase English letter.
    letters is sorted in non-decreasing order.
    letters contains at least two different characters.
    target is a lowercase English letter.

    """
    ### Canonical solution below ###
    for letter in letters:
        if letter > target:
            return letter
    return letters[0]




### Unit tests below ###
def check(candidate):
	assert candidate(["c", "f", "j"], "k") == "c"
	assert candidate(["a", "a", "a"], "z") == "a"
	assert candidate(["c", "f", "j"], "a") == "c"
	assert candidate(["a", "a", "a"], "d") == "a"
	assert candidate(["c", "f", "j"], "f") == "j"
	assert candidate(["x", "x", "y", "y"], "a") == "x"
	assert candidate(["x", "x", "y", "y"], "c") == "x"
	assert candidate(["c", "f", "j"], "e") == "f"
	assert candidate(["a", "b", "c"], "a") == "b"
	assert candidate(["a", "b", "c"], "g") == "a"
	assert candidate(["c", "f", "j"], "g") == "j"
	assert candidate(["c", "f", "j"], "i") == "j"
	assert candidate(["x", "x", "y", "y"], "b") == "x"
	assert candidate(["a", "a", "a"], "b") == "a"
	assert candidate(["a", "b", "c"], "z") == "a"
	assert candidate(["a", "a", "a"], "a") == "a"
	assert candidate(["c", "f", "j"], "j") == "c"
	assert candidate(["c", "f", "j"], "c") == "f"
	assert candidate(["a", "b", "c"], "f") == "a"
	assert candidate(["a", "a", "a"], "c") == "a"
	assert candidate(["a", "a", "a"], "g") == "a"
	assert candidate(["a", "b", "c"], "cc") == "a"
	assert candidate(["a", "b", "c"], "e") == "a"
	assert candidate(["x", "x", "y", "y"], "y") == "x"
	assert candidate(["a", "b", "c"], "h") == "a"
	assert candidate(["a", "b", "c"], "d") == "a"
	assert candidate(["a", "b", "c"], "c") == "a"
	assert candidate(["c", "f", "j"], "b") == "c"
	assert candidate(["c", "f", "j"], "d") == "f"
	assert candidate(["x", "x", "y", "y"], "z") == "x"
	assert candidate(["a", "b", "c"], "b") == "c"
def test_check():
	check(next_greatest_letter)
# Metadata Difficulty: Easy
# Metadata Topics: array,binary-search
# Metadata Coverage: 100
