def last_Digit_Factorial(n):
	'''
	Write a python function to find the last digit in factorial of a given number.
	'''
	pass

def check(candidate):
	assert candidate(4) == 4
	assert candidate(21) == 0
	assert candidate(30) == 0

def test_check():
	check(last_Digit_Factorial)