from typing import List


def validUtf8(data: List[int]) -> bool:
    """
    Given an integer array data representing the data, return whether it is a valid UTF-8 encoding (i.e. it translates to a sequence of valid UTF-8 encoded characters).
    A character in UTF8 can be from 1 to 4 bytes long, subjected to the following rules:

    For a 1-byte character, the first bit is a 0, followed by its Unicode code.
    For an n-bytes character, the first n bits are all one's, the n + 1 bit is 0, followed by n - 1 bytes with the most significant 2 bits being 10.

    This is how the UTF-8 encoding would work:

         Number of Bytes   |        UTF-8 Octet Sequence
                           |              (binary)
       --------------------+-----------------------------------------
                1          |   0xxxxxxx
                2          |   110xxxxx 10xxxxxx
                3          |   1110xxxx 10xxxxxx 10xxxxxx
                4          |   11110xxx 10xxxxxx 10xxxxxx 10xxxxxx

    x denotes a bit in the binary form of a byte that may be either 0 or 1.
    Note: The input is an array of integers. Only the least significant 8 bits of each integer is used to store the data. This means each integer represents only 1 byte of data.
 
    Example 1:

    Input: data = [197,130,1]
    Output: true
    Explanation: data represents the octet sequence: 11000101 10000010 00000001.
    It is a valid utf-8 encoding for a 2-bytes character followed by a 1-byte character.

    Example 2:

    Input: data = [235,140,4]
    Output: false
    Explanation: data represented the octet sequence: 11101011 10001100 00000100.
    The first 3 bits are all one's and the 4th bit is 0 means it is a 3-bytes character.
    The next byte is a continuation byte which starts with 10 and that's correct.
    But the second continuation byte does not start with 10, so it is invalid.

 
    Constraints:

    1 <= data.length <= 2 * 104
    0 <= data[i] <= 255

    """
    ### Canonical solution below ###
    count = 0
    for byte in data:
        if count == 0:
            if byte >> 5 == 0b110:
                count = 1
            elif byte >> 4 == 0b1110:
                count = 2
            elif byte >> 3 == 0b11110:
                count = 3
            elif byte >> 7:
                return False
        else:
            if byte >> 6 != 0b10:
                return False
            count -= 1
    return count == 0




### Unit tests below ###
def check(candidate):
	assert candidate([0b11111100]) == False
	assert candidate([255]) == False
	assert candidate([0b11000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b11100000]) == False
	assert candidate([0b11110000]) == False
	assert candidate([0b11000000]) == False
	assert candidate([0b11111000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b11111000]) == False
	assert candidate([0b11100000, 0b10000000, 0b11111111]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0]) == True
	assert candidate([0b11000000, 0b10000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b11000000]) == False
	assert candidate([0b00000000]) == True
	assert candidate([235,140,4]) == False
	assert candidate([197, 130, 1, 0]) == True
	assert candidate([192, 168, 1, 1]) == True
	assert candidate([0b11000000, 0b10000000]) == True
	assert candidate([0b11100000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b11111000]) == False
	assert candidate([0b11000010, 0b10000010, 0b00000001]) == True
	assert candidate([0b11110000, 0b10000000, 0b10000000]) == False
	assert candidate([0b11111111]) == False
	assert candidate([0b11000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000]) == False
	assert candidate([0b11100000, 0b10000000, 0b10000000]) == True
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b11110000, 0b10000000, 0b10000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b11100000]) == False
	assert candidate([0b11110000, 0b10000000, 0b10000000, 0b10000000]) == True
	assert candidate([0b11111110]) == False
	assert candidate([0b10000000, 0b10000000]) == False
	assert candidate([192, 192, 1, 1]) == False
	assert candidate([197,130,1]) == True
	assert candidate([0b11110000, 0b10000000, 0b10000000, 0b11111111]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b11110000]) == False
	assert candidate([197, 130, 1, 255]) == False
	assert candidate([235, 140, 4]) == False
	assert candidate([0b11110000, 0b10000000, 0b10000000, 0b10000000, 0b10000000]) == False
	assert candidate([0b10000000, 0b10000000, 0b10000000, 0b11111010]) == False
	assert candidate([0b11000000, 0b11111111]) == False
def test_check():
	check(validUtf8)
# Metadata Difficulty: Medium
# Metadata Topics: array,bit-manipulation
# Metadata Coverage: 100
