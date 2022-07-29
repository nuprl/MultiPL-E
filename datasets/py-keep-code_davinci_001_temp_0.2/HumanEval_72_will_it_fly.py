from typing import List

def will_it_fly(q: List[int], w: int) -> bool:
    """
    Write a function that returns True if the object q will fly, and False otherwise.
    The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.

    Example:
    will_it_fly([1, 2], 5) ➞ False 
    # 1+2 is less than the maximum possible weight, but it's unbalanced.

    will_it_fly([3, 2, 3], 1) ➞ False
    # it's balanced, but 3+2+3 is more than the maximum possible weight.

    will_it_fly([3, 2, 3], 9) ➞ True
    # 3+2+3 is less than the maximum possible weight, and it's balanced.

    will_it_fly([3], 5) ➞ True
    # 3 is less than the maximum possible weight, and it's balanced.
    """
    if sum(q) <= w and q == q[::-1]:
        return True
    else:
        return False

print(will_it_fly([1, 2], 5))
print(will_it_fly([3, 2, 3], 1))
print(will_it_fly([3, 2, 3], 9))
print(will_it_fly([3], 5))

def check(candidate):
    assert candidate([3, 2, 3], 9) == True
    assert candidate([1, 2], 5) == False
    assert candidate([3], 5) == True
    assert candidate([3, 2, 3], 1) == False
    assert candidate([1, 2, 3], 6) == False
    assert candidate([5], 5) == True

def test_check():
    check(will_it_fly)

test_check()
