def text_lowercase_underscore(text):
	'''
	Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
	'''
	pass

def check(candidate):
	assert candidate("aab_cbbbc")==(True)
	assert candidate("aab_Abbbc")==(False)
	assert candidate("Aaab_abbbc")==(False)

def test_check():
	check(text_lowercase_underscore)