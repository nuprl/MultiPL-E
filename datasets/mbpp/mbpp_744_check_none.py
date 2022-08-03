def check_none(test_tup):
	'''
	Write a function to check if the given tuple has any none value or not.
	'''
	pass

def check(candidate):
	assert candidate((10, 4, 5, 6, None)) == True
	assert candidate((7, 8, 9, 11, 14)) == False
	assert candidate((1, 2, 3, 4, None)) == True

def test_check():
	check(check_none)