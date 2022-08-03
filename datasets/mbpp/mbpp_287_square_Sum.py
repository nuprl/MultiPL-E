def square_Sum(n):
	'''
	Write a python function takes in an integer n and returns the sum of squares of first n even natural numbers.
	'''
	pass

def check(candidate):
	assert candidate(2) == 20
	assert candidate(3) == 56
	assert candidate(4) == 120

def test_check():
	check(square_Sum)