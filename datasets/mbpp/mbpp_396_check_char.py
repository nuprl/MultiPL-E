def check_char(string):
	'''
	Write a function to check whether the given string starts and ends with the same character or not.
	'''
	pass

def check(candidate):
	assert candidate("abba") == "Valid"
	assert candidate("a") == "Valid"
	assert candidate("abcd") == "Invalid"

def test_check():
	check(check_char)