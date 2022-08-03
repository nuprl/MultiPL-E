def make_palindrome(string: str) -> str:
    """ Find the shortest palindrome that begins with a supplied string.
    Algorithm idea is simple:
    - Find the longest postfix of supplied string that is a palindrome.
    - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
    >>> make_palindrome('')
    ''
    >>> make_palindrome('cat')
    'catac'
    >>> make_palindrome('cata')
    'catac'
    """
    ### Canonical solution below ###
    if not string:
        return ''

    beginning_of_suffix = 0

    while string[beginning_of_suffix:] != string[beginning_of_suffix:][::-1]:
        beginning_of_suffix += 1

    return string + string[:beginning_of_suffix][::-1]

### Unit tests below ###


METADATA = {
    'author': 'jt',
    'dataset': 'test'
}


def check(candidate):
    assert candidate('') == ''
    assert candidate('x') == 'x'
    assert candidate('xyz') == 'xyzyx'
    assert candidate('xyx') == 'xyx'
    assert candidate('jerry') == 'jerryrrej'
def test_check():
    check(make_palindrome)
