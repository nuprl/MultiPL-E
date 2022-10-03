def is_decimal(num):
	'''
	Write a function to check whether a given string is a decimal number with a precision of 2.
	'''
	pass

def check(candidate):
	assert candidate('123.11')==True
	assert candidate('e666.86')==False
	assert candidate('3.124587')==False
	assert candidate('1.11')==True
	assert candidate('1.1.11')==False

def test_check():
	check(is_decimal)