def ascii_value(k):
	'''
	Write a function to find the ascii value of a character.
	'''
	pass

def check(candidate):
	assert candidate('A')==65
	assert candidate('R')==82
	assert candidate('S')==83

def test_check():
	check(ascii_value)