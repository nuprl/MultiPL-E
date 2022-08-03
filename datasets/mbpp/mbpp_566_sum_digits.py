def sum_digits(n):
	'''
	Write a function to get the sum of the digits of a non-negative integer.
	'''
	pass

def check(candidate):
	assert candidate(345)==12
	assert candidate(12)==3
	assert candidate(97)==16

def test_check():
	check(sum_digits)