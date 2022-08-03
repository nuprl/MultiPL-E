def even_binomial_Coeff_Sum( n):
	'''
	Write a python function that takes in a positive integer n and finds the sum of even index binomial coefficients.
	'''
	pass

def check(candidate):
	assert candidate(4) == 8
	assert candidate(6) == 32
	assert candidate(2) == 2

def test_check():
	check(even_binomial_Coeff_Sum)