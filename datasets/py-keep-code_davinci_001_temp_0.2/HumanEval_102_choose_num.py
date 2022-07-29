def choose_num(x: int, y: int) -> int:
    """This function takes two positive numbers x and y and returns the
    biggest even integer number that is in the range [x, y] inclusive. If 
    there's no such number, then the function should return -1.

    For example:
    choose_num(12, 15) = 14
    choose_num(13, 12) = -1
    """
    if x % 2 == 0:
        x += 1
    else:
        x += 2
    if x > y:
        return -1
    while x <= y:
        if x % 2 == 0:
            return x
        x += 2



def check(candidate):
    assert candidate(12, 15) == 14
    assert candidate(13, 12) == -1
    assert candidate(33, 12354) == 12354
    assert candidate(5234, 5233) == -1
    assert candidate(6, 29) == 28
    assert candidate(27, 10) == -1
    assert candidate(7, 7) == -1
    assert candidate(546, 546) == 546

def test_check():
    check(choose_num)

test_check()
