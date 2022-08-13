# ---- HumanEval_128_prod_signs --- completion 49 ---- 
from typing import List, Optional

def prod_signs(arr: List[int]) -> Optional[int]:
    """
    You are given an array arr of integers and you need to return
    sum of magnitudes of integers multiplied by product of all signs
    of each number in the array, represented by 1, -1 or 0.
    Note: return None for empty arr.

    Example:
    >>> prod_signs([1, 2, 2, -4])
    9
    >>> prod_signs([0, 1])
    0
    >>> prod_signs([])
    None
    """
    if not arr:
        return None
    prod = 1
    sum_mag = 0
    for num in arr:
        prod *= num / abs(num)
        sum_mag += abs(num)
    return prod * sum_mag
def check(candidate):
    assert candidate([1, 2, 2, -4]) == -9
    assert candidate([0, 1]) == 0
    assert candidate([1, 1, 1, 2, 3, -1, 1]) == -10
    assert candidate([]) == None
    assert candidate([2, 4, 1, 2, -1, -1, 9]) == 20
    assert candidate([-1, 1, -1, 1]) == 4
    assert candidate([-1, 1, 1, 1]) == -4
    assert candidate([-1, 1, 1, 0]) == 0

def test_check():
    check(prod_signs)

test_check()

# status = Exception
# exit_code = -1
''' stderr = 
Traceback (most recent call last):
  File "/tmp/tmp42hoj1h6.py", line 39, in <module>
    test_check()
  File "/tmp/tmp42hoj1h6.py", line 37, in test_check
    check(prod_signs)
  File "/tmp/tmp42hoj1h6.py", line 28, in check
    assert candidate([0, 1]) == 0
  File "/tmp/tmp42hoj1h6.py", line 23, in prod_signs
    prod *= num / abs(num)
ZeroDivisionError: division by zero

'''
''' stdout = 

'''





