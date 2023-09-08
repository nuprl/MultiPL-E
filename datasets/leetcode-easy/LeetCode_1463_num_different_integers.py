def num_different_integers(word: str) -> int:
    """
    You are given a string word that consists of digits and lowercase English letters.
    You will replace every non-digit character with a space. For example, "a123bc34d8ef34" will become " 123  34 8  34". Notice that you are left with some integers that are separated by at least one space: "123", "34", "8", and "34".
    Return the number of different integers after performing the replacement operations on word.
    Two integers are considered different if their decimal representations without any leading zeros are different.
 
    Example 1:

    Input: word = "a123bc34d8ef34"
    Output: 3
    Explanation: The three different integers are "123", "34", and "8". Notice that "34" is only counted once.

    Example 2:

    Input: word = "leet1234code234"
    Output: 2

    Example 3:

    Input: word = "a1b01c001"
    Output: 1
    Explanation: The three integers "1", "01", and "001" all represent the same integer because
    the leading zeros are ignored when comparing their decimal values.

 
    Constraints:

    1 <= word.length <= 1000
    word consists of digits and lowercase English letters.

    """
    ### Canonical solution below ###
    for c in word:
        if not c.isdigit():
            word = word.replace(c, ' ')
    nums = word.split()
    unique_nums = set()
    for num in nums:
        num = num.lstrip('0') or '0'
        unique_nums.add(num)
    return len(unique_nums)




### Unit tests below ###
def check(candidate):
	assert candidate("44") == 1
	assert candidate("v0v1vv2v3v4v5v6v7v8v9v") == 10
	assert candidate("1a2b3c4d5e6f7g8h9i0") == 10
	assert candidate("77") == 1
	assert candidate("222") == 1
	assert candidate("777") == 1
	assert candidate("99") == 1
	assert candidate("22") == 1
	assert candidate("123 123 123") == 1
	assert candidate("999") == 1
	assert candidate("0000000000") == 1
	assert candidate("9999999999") == 1
	assert candidate("abc123abc123") == 1
	assert candidate("444") == 1
	assert candidate("5656565656") == 1
	assert candidate("9876543210") == 1
	assert candidate("88") == 1
	assert candidate("000") == 1
	assert candidate("123abc456def789ghi0jkl") == 4
	assert candidate("555") == 1
	assert candidate("000111000") == 1
	assert candidate("0101010101") == 1
	assert candidate("666") == 1
	assert candidate("8888888888") == 1
	assert candidate("abc123def456ghi789jkl0") == 4
	assert candidate("11") == 1
	assert candidate("abcdefghijklmnopqrstuvwxyz") == 0
	assert candidate("0a1b2c3d4e5f6g7h8i9") == 10
	assert candidate("111") == 1
	assert candidate("66") == 1
	assert candidate("a1b2c3d4e5f6g7h8i9j0") == 10
	assert candidate("1234567890") == 1
	assert candidate("abc123xyz456") == 2
	assert candidate("55") == 1
	assert candidate("7896541230") == 1
	assert candidate("1a2b3c4d5e6f7g8h9i0j") == 10
	assert candidate("00") == 1
	assert candidate("01010101010101010101") == 1
	assert candidate("333") == 1
	assert candidate("888") == 1
	assert candidate("33") == 1
	assert candidate("01 01 01 01 01 01 01 01 01 01") == 1
	assert candidate("01 01 01 01 01 01 01 01 01 00") == 2
def test_check():
	check(num_different_integers)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
