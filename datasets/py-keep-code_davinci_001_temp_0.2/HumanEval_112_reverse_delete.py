from typing import Tuple

def reverse_delete(s: str, c: str) -> Tuple[str, bool]:
    """Task
    We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    then check if the result string is palindrome.
    A string is called palindrome if it reads the same backward as forward.
    You should return a tuple containing the result string and True/False for the check.
    Example
    For s = "abcde", c = "ae", the result should be ('bcd',False)
    For s = "abcdef", c = "b"  the result should be ('acdef',False)
    For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
    """
    for i in c:
        s = s.replace(i, "")
    if s == s[::-1]:
        return (s, True)
    else:
        return (s, False)



def check(candidate):
    assert candidate('abcde', 'ae') == ('bcd', False)
    assert candidate('abcdef', 'b') == ('acdef', False)
    assert candidate('abcdedcba', 'ab') == ('cdedc', True)
    assert candidate('dwik', 'w') == ('dik', False)
    assert candidate('a', 'a') == ('', True)
    assert candidate('abcdedcba', '') == ('abcdedcba', True)
    assert candidate('abcdedcba', 'v') == ('abcdedcba', True)
    assert candidate('vabba', 'v') == ('abba', True)
    assert candidate('mamma', 'mia') == ('', True)

def test_check():
    check(reverse_delete)

test_check()
