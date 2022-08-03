def even_Power_Sum(n):
	'''
	Write a python function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power.
	'''
	pass

def check(candidate):
	assert candidate(2) == 1056
	assert candidate(3) == 8832
	assert candidate(1) == 32

def test_check():
	check(even_Power_Sum)