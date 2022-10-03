def concatenate_tuple(test_tup):
	'''
	Write a function to concatenate each element of tuple by the delimiter.
	'''
	pass

def check(candidate):
	assert candidate(("ID", "is", 4, "UTS") ) == 'ID-is-4-UTS'
	assert candidate(("QWE", "is", 4, "RTY") ) == 'QWE-is-4-RTY'
	assert candidate(("ZEN", "is", 4, "OP") ) == 'ZEN-is-4-OP'

def test_check():
	check(concatenate_tuple)