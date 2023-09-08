from typing import List


def compress(chars: List[str]) -> int:
    """
    Given an array of characters chars, compress it using the following algorithm:
    Begin with an empty string s. For each group of consecutive repeating characters in chars:

    If the group's length is 1, append the character to s.
    Otherwise, append the character followed by the group's length.

    The compressed string s should not be returned separately, but instead, be stored in the input character array chars. Note that group lengths that are 10 or longer will be split into multiple characters in chars.
    After you are done modifying the input array, return the new length of the array.
    You must write an algorithm that uses only constant extra space.
 
    Example 1:

    Input: chars = ["a","a","b","b","c","c","c"]
    Output: Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]
    Explanation: The groups are "aa", "bb", and "ccc". This compresses to "a2b2c3".

    Example 2:

    Input: chars = ["a"]
    Output: Return 1, and the first character of the input array should be: ["a"]
    Explanation: The only group is "a", which remains uncompressed since it's a single character.

    Example 3:

    Input: chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
    Output: Return 4, and the first 4 characters of the input array should be: ["a","b","1","2"].
    Explanation: The groups are "a" and "bbbbbbbbbbbb". This compresses to "ab12".
 
    Constraints:

    1 <= chars.length <= 2000
    chars[i] is a lowercase English letter, uppercase English letter, digit, or symbol.

    """
    ### Canonical solution below ###
    index, i = 0, 0

    while i < len(chars):
        count = 1
        while i + count < len(chars) and chars[i] == chars[i + count]:
            count += 1

        chars[index] = chars[i]
        index += 1

        if count > 1:
            count_str = str(count)
            for c in count_str:
                chars[index] = c
                index += 1

        i += count

    return index




### Unit tests below ###
def check(candidate):
	assert candidate(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]) == 26
	assert candidate(["a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a"]) == 3
	assert candidate(["a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a"]) == 3
	assert candidate(["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]) == 4
	assert candidate(["a"]) == 1
	assert candidate(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]) == 10
	assert candidate(["a", "a", "b", "b", "c", "c", "c"]) == 6
	assert candidate(["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "+"]) == 12
	assert candidate(["1", "1", "1", "2", "2", "2", "3", "3", "3"]) == 6
	assert candidate(["a", "a", "a", "a", "a", "b", "b", "b", "b", "b"]) == 4
def test_check():
	check(compress)
# Metadata Difficulty: Medium
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
