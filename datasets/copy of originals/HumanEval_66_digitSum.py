
def digitSum(s: str) -> int:
    """Task
    Write a function that takes a string as input and returns the sum of the upper characters only'
    ASCII codes.

    Examples:
    >>> digitSum("")
    0
    >>> digitSum("abAB")
    131
    >>> digitSum("abcCd")
    67
    >>> digitSum("helloE")
    69
    >>> digitSum("woArBld")
    131
    >>> digitSum("aAaaaXa")
    153
    """
    ### Canonical solution below ###
    if s == "": return 0
    return sum(ord(char) if char.isupper() else 0 for char in s)

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    
    assert candidate("") == 0, "Error"
    assert candidate("abAB") == 131, "Error"
    assert candidate("abcCd") == 67, "Error"
    assert candidate("helloE") == 69, "Error"
    assert candidate("woArBld") == 131, "Error"
    assert candidate("aAaaaXa") == 153, "Error"

    # Check some edge cases that are easy to work out by hand.
    
    assert candidate(" How are yOu?") == 151, "Error"
    assert candidate("You arE Very Smart") == 327, "Error"

def test_check():
    check(digitSum)
