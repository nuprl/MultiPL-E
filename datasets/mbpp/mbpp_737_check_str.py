def check_str(string):
	'''
	Write a function to check whether the given string is starting with a vowel or not using regex.
	'''
	pass

def check(candidate):
	assert candidate("annie")
	assert not candidate("dawood")
	assert candidate("Else")

def test_check():
	check(check_str)