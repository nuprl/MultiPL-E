def iscube(a: int) -> bool:
    """
    Write a function that takes an integer a and returns True 
    if this ingeger is a cube of some integer number.
    Note: you may assume the input is always valid.
    Examples:
    iscube(1) ==> True
    iscube(2) ==> False
    iscube(-1) ==> True
    iscube(64) ==> True
    iscube(0) ==> True
    iscube(180) ==> False
    """
    return a in cubes


def check(candidate):
    assert candidate(1) == True
    assert candidate(2) == False
    assert candidate(-1) == True
    assert candidate(64) == True
    assert candidate(180) == False
    assert candidate(1000) == True
    assert candidate(0) == True
    assert candidate(1729) == False

def test_check():
    check(iscube)

test_check()
