def correct_bracketing(brackets: str) -> bool:
    """ brackets is a string of "(" and ")".
    return True if every opening bracket has a corresponding closing bracket.

    >>> correct_bracketing("(")
    False
    >>> correct_bracketing("()")
    True
    >>> correct_bracketing("(()())")
    True
    >>> correct_bracketing(")(()")
    False
    """
    # TODO: implement this function
    pass



def check(candidate):
    assert candidate('()') == True
    assert candidate('(()())') == True
    assert candidate('()()(()())()') == True
    assert candidate('()()((()()())())(()()(()))') == True
    assert candidate('((()())))') == False
    assert candidate(')(()') == False
    assert candidate('(') == False
    assert candidate('((((') == False
    assert candidate(')') == False
    assert candidate('(()') == False
    assert candidate('()()(()())())(()') == False
    assert candidate('()()(()())()))()') == False

def test_check():
    check(correct_bracketing)

test_check()
