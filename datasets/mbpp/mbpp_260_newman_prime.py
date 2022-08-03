def newman_prime(n):
	'''
	Write a function to find the nth newman–shanks–williams prime number.
	'''
	pass

def check(candidate):
	assert candidate(3) == 7
	assert candidate(4) == 17
	assert candidate(5) == 41

def test_check():
	check(newman_prime)