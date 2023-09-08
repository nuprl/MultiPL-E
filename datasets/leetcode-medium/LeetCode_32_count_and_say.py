def count_and_say(n: int) -> str:
    """
    The count-and-say sequence is a sequence of digit strings defined by the recursive formula:

    countAndSay(1) = "1"
    countAndSay(n) is the way you would "say" the digit string from countAndSay(n-1), which is then converted into a different digit string.

    To determine how you "say" a digit string, split it into the minimal number of substrings such that each substring contains exactly one unique digit. Then for each substring, say the number of digits, then say the digit. Finally, concatenate every said digit.
    For example, the saying and conversion for digit string "3322251":

    Given a positive integer n, return the nth term of the count-and-say sequence.
 
    Example 1:

    Input: n = 1
    Output: "1"
    Explanation: This is the base case.

    Example 2:

    Input: n = 4
    Output: "1211"
    Explanation:
    countAndSay(1) = "1"
    countAndSay(2) = say "1" = one 1 = "11"
    countAndSay(3) = say "11" = two 1's = "21"
    countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"

 
    Constraints:

    1 <= n <= 30

    """
    ### Canonical solution below ###
    if n == 1:
        return "1"
    previous = count_and_say(n - 1)
    result = []
    count = 1
    for i in range(1, len(previous)):
        if previous[i] == previous[i - 1]:
            count += 1
        else:
            result.append(str(count))
            result.append(previous[i - 1])
            count = 1
    result.append(str(count))
    result.append(previous[-1])
    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate(16) == "132113213221133112132113311211131221121321131211132221123113112221131112311332111213211322211312113211"
	assert candidate(7) == "13112221"
	assert candidate(13) == "1321132132111213122112311311222113111221131221"
	assert candidate(1) == "1"
	assert candidate(4) == "1211"
	assert candidate(3) == "21"
	assert candidate(11) == "11131221133112132113212221"
	assert candidate(10) == "13211311123113112211"
	assert candidate(2) == "11"
	assert candidate(6) == "312211"
	assert candidate(15) == "311311222113111231131112132112311321322112111312211312111322212311322113212221"
	assert candidate(5) == "111221"
	assert candidate(12) == "3113112221232112111312211312113211"
	assert candidate(9) == "31131211131221"
	assert candidate(8) == "1113213211"
	assert candidate(14) == "11131221131211131231121113112221121321132132211331222113112211"
def test_check():
	check(count_and_say)
# Metadata Difficulty: Medium
# Metadata Topics: string
# Metadata Coverage: 100
