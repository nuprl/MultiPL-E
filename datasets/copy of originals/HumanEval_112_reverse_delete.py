from typing import Tuple

def reverse_delete(s: str,c: str) -> Tuple[str, bool]:
    """Task
    We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
    then check if the result string is palindrome.
    A string is called palindrome if it reads the same backward as forward.
    You should return a tuple containing the result string and True/False for the check.
    Example
    >>> reverse_delete("abcde", "ae")
    ('bcd',False)
    >>> reverse_delete("abcdef", "b")
    ('acdef',False)
    >>> reverse_delete("abcdedcba", "ab")
    ('cdedc',True)
    """
    ### Canonical solution below ###
    s = ''.join([char for char in s if char not in c])
    return (s,s[::-1] == s)

### Unit tests below ###
def check(candidate):

    assert candidate("abcde","ae") == ('bcd',False)
    assert candidate("abcdef", "b") == ('acdef',False)
    assert candidate("abcdedcba","ab") == ('cdedc',True)
    assert candidate("dwik","w") == ('dik',False)
    assert candidate("a","a") == ('',True)
    assert candidate("abcdedcba","") == ('abcdedcba',True)
    assert candidate("abcdedcba","v") == ('abcdedcba',True)
    assert candidate("vabba","v") == ('abba',True)
    assert candidate("mamma", "mia") == ("", True)
def test_check():
    check(reverse_delete)
