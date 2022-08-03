def text_match_two_three(text):
	'''
	Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
	'''
	pass

def check(candidate):
	assert candidate("ac")==(False)
	assert candidate("dc")==(False)
	assert candidate("abbbba")==(True)

def test_check():
	check(text_match_two_three)