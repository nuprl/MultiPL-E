def text_match_one(text):
	'''
	Write a function that matches a string that has an a followed by one or more b's.
	'''
	pass

def check(candidate):
	assert candidate("ac")==False
	assert candidate("dc")==False
	assert candidate("abba")==True

def test_check():
	check(text_match_one)