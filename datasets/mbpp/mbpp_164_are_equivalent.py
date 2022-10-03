def are_equivalent(num1, num2):
	'''
	Write a function to determine if the sum of the divisors of two integers are the same.
	'''
	pass

def check(candidate):
	assert candidate(36, 57) == False
	assert candidate(2, 4) == False
	assert candidate(23, 47) == True

def test_check():
	check(are_equivalent)