def check_type(test_tuple):
	'''
	Write a function to check if all the elements in tuple have same data type or not.
	'''
	pass

def check(candidate):
	assert candidate((5, 6, 7, 3, 5, 6) ) == True
	assert candidate((1, 2, "4") ) == False
	assert candidate((3, 2, 1, 4, 5) ) == True

def test_check():
	check(check_type)