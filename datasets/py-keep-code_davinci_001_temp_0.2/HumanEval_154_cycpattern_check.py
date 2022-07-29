def cycpattern_check(a: str, b: str) -> bool:
    """You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
    cycpattern_check("abcd","abd") => False
    cycpattern_check("hello","ell") => True
    cycpattern_check("whassup","psus") => False
    cycpattern_check("abab","baa") => True
    cycpattern_check("efef","eeff") => False
    cycpattern_check("himenss","simen") => True

    """
    if len(a) < len(b):
        return False
    for i in range(len(a)):
        if a[i:i + len(b)] == b:
            return True
    return False



def check(candidate):
    assert candidate('xyzw', 'xyw') == False
    assert candidate('yello', 'ell') == True
    assert candidate('whattup', 'ptut') == False
    assert candidate('efef', 'fee') == True
    assert candidate('abab', 'aabb') == False
    assert candidate('winemtt', 'tinem') == True

def test_check():
    check(cycpattern_check)

test_check()
