def find_lists(Input):
    """
	Write a function to find number of lists present in the given list.
	"""
    pass

def check(candidate):
    assert candidate([[1, 2, 3, 4], [5, 6, 7, 8]]) == 2
    assert candidate([[1, 2], [3, 4], [5, 6]]) == 3
    assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == 1

def test_check():
    check(find_lists)