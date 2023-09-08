def get_hint(secret: str, guess: str) -> str:
    """
    You are playing the Bulls and Cows game with your friend.
    You write down a secret number and ask your friend to guess what the number is. When your friend makes a guess, you provide a hint with the following info:

    The number of "bulls", which are digits in the guess that are in the correct position.
    The number of "cows", which are digits in the guess that are in your secret number but are located in the wrong position. Specifically, the non-bull digits in the guess that could be rearranged such that they become bulls.

    Given the secret number secret and your friend's guess guess, return the hint for your friend's guess.
    The hint should be formatted as "xAyB", where x is the number of bulls and y is the number of cows. Note that both secret and guess may contain duplicate digits.
 
    Example 1:

    Input: secret = "1807", guess = "7810"
    Output: "1A3B"
    Explanation: Bulls are connected with a '|' and cows are underlined:
    "1807"
      |
    "7810"
    Example 2:

    Input: secret = "1123", guess = "0111"
    Output: "1A1B"
    Explanation: Bulls are connected with a '|' and cows are underlined:
    "1123"        "1123"
      |      or     |
    "0111"        "0111"
    Note that only one of the two unmatched 1s is counted as a cow since the non-bull digits can only be rearranged to allow one 1 to be a bull.

 
    Constraints:

    1 <= secret.length, guess.length <= 1000
    secret.length == guess.length
    secret and guess consist of digits only.

    """
    ### Canonical solution below ###
    bulls = cows = 0
    secret_count = [0] * 10
    guess_count = [0] * 10

    for i in range(len(secret)):
        if secret[i] == guess[i]:
            bulls += 1
        else:
            secret_count[int(secret[i])] += 1
            guess_count[int(guess[i])] += 1

    for i in range(10):
        cows += min(secret_count[i], guess_count[i])

    return f"{bulls}A{cows}B"




### Unit tests below ###
def check(candidate):
	assert candidate("0000", "1111") == "0A0B"
	assert candidate("1234", "1234") == "4A0B"
	assert candidate("1234", "5678") == "0A0B"
	assert candidate("1111", "2222") == "0A0B"
	assert candidate("1111", "1111") == "4A0B"
	assert candidate("11111", "11112") == "4A0B"
	assert candidate("1234", "1243") == "2A2B"
	assert candidate(
    "1111111111", "1111111111"
) == "10A0B"
	assert candidate("1123", "0111") == "1A1B"
	assert candidate("1234", "4321") == "0A4B"
	assert candidate("1234567890", "1234567890") == "10A0B"
	assert candidate(
    "1234567890", "1234567890"
) == "10A0B"
	assert candidate(
    "1234567890", "0123456789"
) == "0A10B"
	assert candidate("1807", "7810") == "1A3B"
	assert candidate("111222", "222111") == "0A6B"
	assert candidate("0000", "0000") == "4A0B"
def test_check():
	check(get_hint)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,counting
# Metadata Coverage: 100
