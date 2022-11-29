def string_to_tuple(str1):
    """
	Write a function to convert a given string to a list of characters.
	"""
    pass

def check(candidate):
    assert candidate('python 3.0') == ['p', 'y', 't', 'h', 'o', 'n', '3', '.', '0']
    assert candidate('item1') == ['i', 't', 'e', 'm', '1']
    assert candidate('15.10') == ['1', '5', '.', '1', '0']

def test_check():
    check(string_to_tuple)