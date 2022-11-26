def check_K(test_tup, K):
    """
	Write a function to check if the given tuples contain the k or not.
	"""
    pass

def check(candidate):
    assert candidate([10, 4, 5, 6, 8], 6) == True
    assert candidate([1, 2, 3, 4, 5, 6], 7) == False
    assert candidate([7, 8, 9, 44, 11, 12], 11) == True

def test_check():
    check(check_K)