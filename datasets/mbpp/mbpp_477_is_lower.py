def is_lower(string):
	'''
	Write a python function to convert the given string to lower case.
	'''
	pass

def check(candidate):
	assert candidate("InValid") == "invalid"
	assert candidate("TruE") == "true"
	assert candidate("SenTenCE") == "sentence"

def test_check():
	check(is_lower)