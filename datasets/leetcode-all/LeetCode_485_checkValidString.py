def checkValidString(s: str) -> bool:
    """
    Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.
    The following rules define a valid string:

    Any left parenthesis '(' must have a corresponding right parenthesis ')'.
    Any right parenthesis ')' must have a corresponding left parenthesis '('.
    Left parenthesis '(' must go before the corresponding right parenthesis ')'.
    '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".

 
    Example 1:
    Input: s = "()"
    Output: true
    Example 2:
    Input: s = "(*)"
    Output: true
    Example 3:
    Input: s = "(*))"
    Output: true

 
    Constraints:

    1 <= s.length <= 100
    s[i] is '(', ')' or '*'.

    """
    ### Canonical solution below ###
    left_balance, right_balance = 0, 0

    for i in range(len(s)):
        left_balance += 1 if s[i] == '(' or s[i] == '*' else -1
        right_balance += 1 if s[len(s) - 1 - i] == ')' or s[len(s) - 1 - i] == '*' else -1

        if left_balance < 0 or right_balance < 0:
            return False

    return True




### Unit tests below ###
def check(candidate):
	assert candidate("(**)") == True
	assert candidate("((((****)))**") == True
	assert candidate("((((****)))") == True
	assert candidate("((((****)))*******************") == True
	assert candidate("((((****)))**********") == True
	assert candidate("((((****)))******************") == True
	assert candidate("((((****)))**************") == True
	assert candidate("((((****)))******") == True
	assert candidate("((((****)))****************") == True
	assert candidate("((((****)))*******************************************************************************") == True
	assert candidate(")") == False
	assert candidate("()") == True
	assert candidate("((((****)))**************************") == True
	assert candidate("((((****)))*******") == True
	assert candidate("((((****)))***************") == True
	assert candidate("((((****)))********************") == True
	assert candidate(
    "((((****)))*******************************************************************************************************************************") == True
	assert candidate(
    "((((****)))*******************************************************************") == True
	assert candidate("((((****)))***************************") == True
	assert candidate("(***)") == True
	assert candidate("((((****)))************************************************************************") == True
	assert candidate("((((****)))*************") == True
	assert candidate("((((****)))************") == True
	assert candidate("((((****)))*********") == True
	assert candidate("((((****)))*******************************************") == True
	assert candidate("((((****)))***********************") == True
	assert candidate("((((****)))***") == True
	assert candidate("((((****)))*****************") == True
	assert candidate("(((((*****)") == True
	assert candidate("((((****)))*********************************") == True
	assert candidate("(*)") == True
	assert candidate("((((****)))*********************") == True
	assert candidate(
    "((((****)))******************************") == True
	assert candidate("((((****)))****************************************************************************************************************************") == True
	assert candidate("((((****)))************************") == True
	assert candidate("(*))") == True
	assert candidate("(") == False
	assert candidate(
    "((((****)))********************************") == True
	assert candidate("((((****)))*****") == True
	assert candidate("((((*)))") == True
	assert candidate("((((****)))*************************") == True
	assert candidate("((((****)))****") == True
	assert candidate("((((****)))**********************") == True
	assert candidate("((((****)))*****************************") == True
	assert candidate("((((****)))****************************") == True
	assert candidate("((((((*****)") == True
	assert candidate("((((****)))********") == True
	assert candidate("((((****)))***********") == True
def test_check():
	check(checkValidString)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming,stack,greedy
# Metadata Coverage: 100
