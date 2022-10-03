def check_integer(text):
	'''
	Write a function to check if a string represents an integer or not.
	'''
	pass

def check(candidate):
	assert candidate("python")==False
	assert candidate("1")==True
	assert candidate("12345")==True

def test_check():
	check(check_integer)