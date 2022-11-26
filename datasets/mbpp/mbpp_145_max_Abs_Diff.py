def max_Abs_Diff(arr):
    """
	Write a python function to find the maximum difference between any two elements in a given array.
	"""
    pass

def check(candidate):
    assert candidate([2, 1, 5, 3]) == 4
    assert candidate([9, 3, 2, 5, 1]) == 8
    assert candidate([3, 2, 1]) == 2

def test_check():
    check(max_Abs_Diff)