def digitSum(s: str) -> int:
    """Task
    Write a function that takes a string as input and returns the sum of the upper characters only'
    ASCII codes.

    Examples:
        digitSum("") => 0
        digitSum("abAB") => 131
        digitSum("abcCd") => 67
        digitSum("helloE") => 69
        digitSum("woArBld") => 131
        digitSum("aAaaaXa") => 153
    """
    return sum(ord(c) for c in s if c.isupper())



def check(candidate):
    assert candidate('') == 0
    assert candidate('abAB') == 131
    assert candidate('abcCd') == 67
    assert candidate('helloE') == 69
    assert candidate('woArBld') == 131
    assert candidate('aAaaaXa') == 153
    assert candidate(' How are yOu?') == 151
    assert candidate('You arE Very Smart') == 327

def test_check():
    check(digitSum)

test_check()
