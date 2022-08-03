
def cycpattern_check(a: str , b: str) -> bool:
    """You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    >>> cycpattern_check("abcd","abd") 
    False
    >>> cycpattern_check("hello","ell") 
    True
    >>> cycpattern_check("whassup","psus") 
    False
    >>> cycpattern_check("abab","baa") 
    True
    >>> cycpattern_check("efef","eeff") 
    False
    >>> cycpattern_check("himenss","simen") 
    True

    """
    ### Canonical solution below ###
    l = len(b)
    pat = b + b
    for i in range(len(a) - l + 1):
        for j in range(l + 1):
            if a[i:i+l] == pat[j:j+l]:
                return True
    return False

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    #

    # Check some edge cases that are easy to work out by hand.
    #
    assert  candidate("xyzw","xyw") == False , "test #0"
    assert  candidate("yello","ell") == True , "test #1"
    assert  candidate("whattup","ptut") == False , "test #2"
    assert  candidate("efef","fee") == True , "test #3"
    assert  candidate("abab","aabb") == False , "test #4"
    assert  candidate("winemtt","tinem") == True , "test #5"

def test_check():
    check(cycpattern_check)
