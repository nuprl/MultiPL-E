from typing import List


def first_palindrome(words: List[str]) -> str:
    """
    Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".
    A string is palindromic if it reads the same forward and backward.
 
    Example 1:

    Input: words = ["abc","car","ada","racecar","cool"]
    Output: "ada"
    Explanation: The first string that is palindromic is "ada".
    Note that "racecar" is also palindromic, but it is not the first.

    Example 2:

    Input: words = ["notapalindrome","racecar"]
    Output: "racecar"
    Explanation: The first and only string that is palindromic is "racecar".

    Example 3:

    Input: words = ["def","ghi"]
    Output: ""
    Explanation: There are no palindromic strings, so the empty string is returned.

 
    Constraints:

    1 <= words.length <= 100
    1 <= words[i].length <= 100
    words[i] consists only of lowercase English letters.

    """
    ### Canonical solution below ###
    for word in words:
        if word == word[::-1]:
            return word
    return ""




### Unit tests below ###
def check(candidate):
	assert candidate(["mom", "deed", "eye", "racecar", "wow"]) == "mom"
	assert candidate(["mom", "dad", "brother", "sister"]) == "mom"
	assert candidate(["mom", "deed", "eye", "wow", "civic", "refer", "dad"]) == "mom"
	assert candidate(["wow", "civic", "refer", "eye", "deed"]) == "wow"
	assert candidate(["a"]) == "a"
	assert candidate(["eye", "wow", "civic", "refer", "deed"]) == "eye"
	assert candidate(["pop", "pop", "pop", "pop"]) == "pop"
	assert candidate(["apple", "banana", "cherry", "date", "egg", "fish", "grape"]) == ""
	assert candidate(["level", "level", "level", "level"]) == "level"
	assert candidate(["refer", "deed", "eye", "wow", "level", "radar", "racecar"]) == "refer"
	assert candidate(["abba", "civic", "deed", "pop"]) == "abba"
	assert candidate(["eye", "deed", "wow", "civic", "refer"]) == "eye"
	assert candidate(["civic", "deed", "level", "radar", "racecar"]) == "civic"
	assert candidate(["notapalindrome", "racecar"]) == "racecar"
	assert candidate(["refer", "deed", "eye", "wow", "radar"]) == "refer"
	assert candidate(["madam", "level", "madam", "peep"]) == "madam"
	assert candidate(["civic", "dud", "deed", "pop"]) == "civic"
	assert candidate(["rotator", "deed", "peep", "madam"]) == "rotator"
	assert candidate(["refer", "deed", "eye", "wow", "civic"]) == "refer"
	assert candidate(["asd", "aaa"]) == "aaa"
	assert candidate(["python", "java", "csharp", "javascript"]) == ""
	assert candidate(["abba", "civic", "def", "madam"]) == "abba"
	assert candidate(["civic", "refer", "eye", "deed", "wow"]) == "civic"
	assert candidate(["wow", "wowow", "wew", "weew", "waw"]) == "wow"
	assert candidate(["def", "deed"]) == "deed"
	assert candidate(["racecar", "apple", "radar", "level", "world"]) == "racecar"
	assert candidate(["lol", "haha", "hahaha", "hahahaha"]) == "lol"
	assert candidate(["mom", "deed", "eye", "wow", "civic", "refer", "dad", "racecar", "apple", "deed", "mom"]) == "mom"
	assert candidate(["abc", "car", "ada", "racecar", "cool"]) == "ada"
	assert candidate(["bbbbb", "civic", "deed", "aaaaa"]) == "bbbbb"
	assert candidate(["rotator", "deed", "racecar", "wow"]) == "rotator"
	assert candidate(["refer", "deed", "eye", "wow", "level", "radar", "pop"]) == "refer"
	assert candidate(["racecar", "abba"]) == "racecar"
	assert candidate(["poop", "poop", "poop", "poop"]) == "poop"
	assert candidate(["abba", "racecar"]) == "abba"
	assert candidate(["rotator", "deed", "peep", "madam", "abba"]) == "rotator"
	assert candidate(["madam", "nun", "pop", "wow", "radar"]) == "madam"
	assert candidate(["level", "radar", "racecar", "refer", "deed", "eye"]) == "level"
	assert candidate(["hello", "world", "racecar", "abba"]) == "racecar"
	assert candidate(["def", "ghi"]) == ""
	assert candidate(["abc", "aac", "ccc", "bbb"]) == "ccc"
	assert candidate(["abba", "bob", "tacocat", "salamsalam", "civic"]) == "abba"
	assert candidate(["noon", "eye", "wow", "pop"]) == "noon"
	assert candidate(["dad", "dud", "deed", "mom"]) == "dad"
	assert candidate(["peep", "pop", "level", "racecar", "refer"]) == "peep"
	assert candidate(["wow", "pop", "eye", "madam"]) == "wow"
	assert candidate(["eye", "eye", "eye", "eye"]) == "eye"
	assert candidate(["a", "b", "c", "d", "a"]) == "a"
	assert candidate(["level", "radar", "racecar", "wow"]) == "level"
	assert candidate([""]) == ""
	assert candidate(["rotator", "deed", "eye", "wow", "madam"]) == "rotator"
	assert candidate(["noon", "evening", "morning", "night"]) == "noon"
	assert candidate(["pop", "radar", "wow", "level", "refer", "deed", "eye"]) == "pop"
	assert candidate(["eye", "deed", "wow", "level", "radar", "racecar", "pop"]) == "eye"
	assert candidate(["pop", "pip", "peep", "poop", "pup"]) == "pop"
	assert candidate(["deed", "eye", "wow", "civic", "refer"]) == "deed"
	assert candidate(["deed", "deed", "deed", "deed"]) == "deed"
	assert candidate(["madam", "eye", "wow", "civic"]) == "madam"
	assert candidate(["eye", "wow", "level", "radar", "racecar", "refer", "deed"]) == "eye"
	assert candidate(["dad", "dud", "did", "ded", "dod"]) == "dad"
	assert candidate(["radar", "level", "racecar", "refer", "deed", "eye"]) == "radar"
	assert candidate(["radar", "deed", "refer", "eye"]) == "radar"
def test_check():
	check(first_palindrome)
# Metadata Difficulty: Easy
# Metadata Topics: array,two-pointers,string
# Metadata Coverage: 100
