def reformat_number(number: str) -> str:
    """
    You are given a phone number as a string number. number consists of digits, spaces ' ', and/or dashes '-'.
    You would like to reformat the phone number in a certain manner. Firstly, remove all spaces and dashes. Then, group the digits from left to right into blocks of length 3 until there are 4 or fewer digits. The final digits are then grouped as follows:

    2 digits: A single block of length 2.
    3 digits: A single block of length 3.
    4 digits: Two blocks of length 2 each.

    The blocks are then joined by dashes. Notice that the reformatting process should never produce any blocks of length 1 and produce at most two blocks of length 2.
    Return the phone number after formatting.
 
    Example 1:

    Input: number = "1-23-45 6"
    Output: "123-456"
    Explanation: The digits are "123456".
    Step 1: There are more than 4 digits, so group the next 3 digits. The 1st block is "123".
    Step 2: There are 3 digits remaining, so put them in a single block of length 3. The 2nd block is "456".
    Joining the blocks gives "123-456".

    Example 2:

    Input: number = "123 4-567"
    Output: "123-45-67"
    Explanation: The digits are "1234567".
    Step 1: There are more than 4 digits, so group the next 3 digits. The 1st block is "123".
    Step 2: There are 4 digits left, so split them into two blocks of length 2. The blocks are "45" and "67".
    Joining the blocks gives "123-45-67".

    Example 3:

    Input: number = "123 4-5678"
    Output: "123-456-78"
    Explanation: The digits are "12345678".
    Step 1: The 1st block is "123".
    Step 2: The 2nd block is "456".
    Step 3: There are 2 digits left, so put them in a single block of length 2. The 3rd block is "78".
    Joining the blocks gives "123-456-78".

 
    Constraints:

    2 <= number.length <= 100
    number consists of digits and the characters '-' and ' '.
    There are at least two digits in number.

    """
    ### Canonical solution below ###
    cleaned_number = ''.join(c for c in number if c.isdigit())

    blocks = []
    n = len(cleaned_number)
    i = 0
    while i < n:
        if n - i == 2 or n - i == 4:
            blocks.append(cleaned_number[i:i + 2])
            i += 2
        else:
            blocks.append(cleaned_number[i:i + 3])
            i += 3

    return '-'.join(blocks)




### Unit tests below ###
def check(candidate):
	assert candidate("123 456 789") == "123-456-789"
	assert candidate("123 456 78") == "123-456-78"
	assert candidate("12 3456 789") == "123-456-789"
	assert candidate("1 23 456 789") == "123-456-789"
	assert candidate("123456789") == "123-456-789"
	assert candidate("12 345 6789") == "123-456-789"
	assert candidate("12 3 4567 89") == "123-456-789"
	assert candidate("1 2 345 6 789") == "123-456-789"
	assert candidate("123 45678 9") == "123-456-789"
	assert candidate("1 23 45 67 89") == "123-456-789"
	assert candidate("1234 5678 9") == "123-456-789"
	assert candidate("12345678") == "123-456-78"
	assert candidate("12 3 4 5678 9") == "123-456-789"
	assert candidate("1 234 5678") == "123-456-78"
	assert candidate("12") == "12"
	assert candidate("1 234 56789") == "123-456-789"
	assert candidate("1234 567 89") == "123-456-789"
	assert candidate("123") == "123"
	assert candidate("123456 789") == "123-456-789"
	assert candidate("123 456 78 9") == "123-456-789"
	assert candidate("12 34 56789") == "123-456-789"
def test_check():
	check(reformat_number)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
