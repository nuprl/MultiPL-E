def remove_lowercase(str1):
	'''
	Write a function to remove lowercase substrings from a given string.
	'''
	pass

def check(candidate):
	assert candidate("PYTHon")==('PYTH')
	assert candidate("FInD")==('FID')
	assert candidate("STRinG")==('STRG')

def test_check():
	check(remove_lowercase)