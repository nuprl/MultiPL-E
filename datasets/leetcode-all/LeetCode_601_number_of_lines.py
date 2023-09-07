from typing import List


def number_of_lines(widths: List[int], s: str) -> List[int]:
    """
    You are given a string s of lowercase English letters and an array widths denoting how many pixels wide each lowercase English letter is. Specifically, widths[0] is the width of 'a', widths[1] is the width of 'b', and so on.
    You are trying to write s across several lines, where each line is no longer than 100 pixels. Starting at the beginning of s, write as many letters on the first line such that the total width does not exceed 100 pixels. Then, from where you stopped in s, continue writing as many letters as you can on the second line. Continue this process until you have written all of s.
    Return an array result of length 2 where:

    result[0] is the total number of lines.
    result[1] is the width of the last line in pixels.

 
    Example 1:

    Input: widths = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10], s = "abcdefghijklmnopqrstuvwxyz"
    Output: [3,60]
    Explanation: You can write s as follows:
    abcdefghij  // 100 pixels wide
    klmnopqrst  // 100 pixels wide
    uvwxyz      // 60 pixels wide
    There are a total of 3 lines, and the last line is 60 pixels wide.
    Example 2:

    Input: widths = [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10], s = "bbbcccdddaaa"
    Output: [2,4]
    Explanation: You can write s as follows:
    bbbcccdddaa  // 98 pixels wide
    a            // 4 pixels wide
    There are a total of 2 lines, and the last line is 4 pixels wide.
 
    Constraints:

    widths.length == 26
    2 <= widths[i] <= 10
    1 <= s.length <= 1000
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    lines = 1
    current_pixel = 0
    for c in s:
        letter_pixels = widths[ord(c) - ord('a')]
        if current_pixel + letter_pixels > 100:
            lines += 1
            current_pixel = 0
        current_pixel += letter_pixels
    return [lines, current_pixel]




### Unit tests below ###
def check(candidate):
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], "a") == [1, 1]
	assert candidate([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], "abc") == [1, 15]
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], "abc") == [1, 3]
	assert candidate([4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "bbbcccdddaaa") == [2, 4]
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "abcdefghijklmnopqrstuvwxyz") == [3, 60]
	assert candidate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "abc") == [1, 30]
def test_check():
	check(number_of_lines)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100
