def numJewelsInStones(jewels: str, stones: str) -> int:
    """
    You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
    Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
    Example 1:
    Input: jewels = "aA", stones = "aAAbbbb"
    Output: 3
    Example 2:
    Input: jewels = "z", stones = "ZZ"
    Output: 0

 
    Constraints:

    1 <= jewels.length, stones.length <= 50
    jewels and stones consist of only English letters.
    All the characters of jewels are unique.

    """
    ### Canonical solution below ###
    count = 0
    for s in stones:
        if s in jewels:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate("abc", "mmm") == 0
	assert candidate(
    "abc", "fff") == 0, "The count of stones that are jewels should be correct."
	assert candidate(
    "abcdef", "fedcba") == 6, "The count of stones that are jewels should be correct."
	assert candidate(
    "abc", "jjj") == 0, "The count of stones that are jewels should be correct."
	assert candidate("abcdefghijklmnopqrstuvwxyz", "aeiou") == 5
	assert candidate("abc", "bbb") == 3
	assert candidate("abc", "") == 0
	assert candidate("abc", "lll") == 0
	assert candidate("abcdef", "mnopqr") == 0
	assert candidate("abcdef", "fghijk") == 1
	assert candidate("aa", "bbb") == 0
	assert candidate("abc", "aaa") == 3
	assert candidate("", "abcdef") == 0
	assert candidate("abc", "fff") == 0
	assert candidate("abc", "ddd") == 0
	assert candidate("a", "aaa") == 3
	assert candidate("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz") == 26
	assert candidate("abc", "ccei") == 2
	assert candidate(
    "z", "ZZ") == 0
	assert candidate(
    "abcdef", "aabbcc") == 6
	assert candidate(
    "abcdef", "mnopqr") == 0, "The count of stones that are jewels should be correct."
	assert candidate(
    "z", "ZZ") == 0, "The count of stones that are jewels should be correct."
	assert candidate("abc", "def") == 0
	assert candidate("a", "a") == 1
	assert candidate("abc", "kkk") == 0
	assert candidate("abcdef", "fedcba") == 6
	assert candidate(
    "abc", "ccc") == 3, "The count of stones that are jewels should be correct."
	assert candidate("abc", "hhh") == 0
	assert candidate("abc", "ccc") == 3
	assert candidate("abc", "ggg") == 0
	assert candidate(
    "abc", "iii") == 0, "The count of stones that are jewels should be correct."
	assert candidate(
    "abc", "bbb") == 3, "The count of stones that are jewels should be correct."
	assert candidate("a", "bbbbbb") == 0
	assert candidate("abc", "abcabc") == 6
	assert candidate("abc", "aabbcc") == 6
	assert candidate(
    "Aa", "aAAbbbb") == 3, "The count of stones that are jewels should be correct."
	assert candidate("abcdef", "abcdefabcdef") == 12
	assert candidate("abcdef", "abc") == 3
	assert candidate(
    "abcdef", "abcdefabcdef") == 12, "The count of stones that are jewels should be correct."
	assert candidate("abc", "jjj") == 0
	assert candidate("abc", "iii") == 0
	assert candidate(
    "abcdef", "abc") == 3
	assert candidate("aa", "bbbb") == 0
	assert candidate("abc", "abcdef") == 3
	assert candidate("abc", "eee") == 0
def test_check():
	check(numJewelsInStones)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
