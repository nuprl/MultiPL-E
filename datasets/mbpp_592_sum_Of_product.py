def sum_Of_product(n):
	'''
	Write a python function to find the sum of the product of consecutive binomial co-efficients.
	'''
	pass

def check(candidate):
	assert candidate(3) == 15
	assert candidate(4) == 56
	assert candidate(1) == 1

def test_check():
	check(sum_Of_product)