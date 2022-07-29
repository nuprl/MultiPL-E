def is_happy(s: str) -> bool:
    """You are given a string s.
    Your task is to check if the string is happy or not.
    A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    For example:
    is_happy(a) => False
    is_happy(aa) => False
    is_happy(abcd) => True
    is_happy(aabb) => False
    is_happy(adb) => True
    is_happy(xyy) => False
    """
    if len(s) < 3:
        return False
    for i in range(len(s) - 2):
        if s[i] == s[i + 1] or s[i] == s[i + 2] or s[i + 1] == s[i + 2]:
            return False
    return True



def check(candidate):
    assert candidate('a') == False
    assert candidate('aa') == False
    assert candidate('abcd') == True
    assert candidate('aabb') == False
    assert candidate('adb') == True
    assert candidate('xyy') == False
    assert candidate('iopaxpoi') == True
    assert candidate('iopaxioi') == False

def test_check():
    check(is_happy)

test_check()
