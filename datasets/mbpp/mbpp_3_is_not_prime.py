def is_not_prime(n):
	'''
	Write a python function to identify non-prime numbers.
	'''
	pass

def check(candidate):
	assert candidate(2) == False
	assert candidate(10) == True
	assert candidate(35) == True
	assert candidate(37) == False

def test_check():
	check(is_not_prime)