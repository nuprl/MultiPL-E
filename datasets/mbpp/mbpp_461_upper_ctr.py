def upper_ctr(str):
	'''
	Write a python function to count the upper case characters in a given string.
	'''
	pass

def check(candidate):
	assert candidate('PYthon') == 1
	assert candidate('BigData') == 1
	assert candidate('program') == 0

def test_check():
	check(upper_ctr)