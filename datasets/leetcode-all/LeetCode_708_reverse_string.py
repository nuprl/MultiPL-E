from typing import Union, List


def reverse_string(s: Union[List[str], str]) -> Union[List[str], str]:
    """
    Write a function that reverses a string. The input string is given as an array of characters s.
    You must do this by modifying the input array in-place with O(1) extra memory.
 
    Example 1:
    Input: s = ["h","e","l","l","o"]
    Output: ["o","l","l","e","h"]
    Example 2:
    Input: s = ["H","a","n","n","a","h"]
    Output: ["h","a","n","n","a","H"]

 
    Constraints:

    1 <= s.length <= 105
    s[i] is a printable ascii character.

    """
    ### Canonical solution below ###
    return s[::-1]




### Unit tests below ###
def check(candidate):
	assert candidate("string") == "gnirts"
	assert candidate("a") == "a"
	assert candidate("boolean") == "naeloob"
	assert candidate(["H", "a", "n", "n", "a", "h"]) == ["h", "a", "n", "n", "a", "H"]
	assert candidate("level") == "level"
	assert candidate("abc") == "cba"
	assert candidate("integer") == "regetni"
	assert candidate("racecar") == "racecar"
	assert candidate("") == ""
	assert candidate("output") == "tuptuo"
	assert candidate("value") == "eulav"
	assert candidate(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]
	assert candidate("function") == "noitcnuf"
	assert candidate("python") == "nohtyp"
	assert candidate("abcd") == "dcba"
	assert candidate("12345") == "54321"
	assert candidate(["h", "e", "l", "l", "o"]) == ["o", "l", "l", "e", "h"]
	assert candidate("return") == "nruter"
	assert candidate("input") == "tupni"
	assert candidate("argument") == "tnemugra"
	assert candidate("testcase") == "esactset"
	assert candidate(" ") == " "
	assert candidate(["h","e","l","l","o"]) == ["o","l","l","e","h"]
	assert candidate("parameter") == "retemarap"
	assert candidate("variable") == "elbairav"
	assert candidate("hello") == "olleh"
def test_check():
	check(reverse_string)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
